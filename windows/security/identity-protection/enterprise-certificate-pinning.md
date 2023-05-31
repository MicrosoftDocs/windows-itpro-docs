---
title: Enterprise certificate pinning
description: Enterprise certificate pinning is a Windows feature for remembering, or pinning, a root issuing certificate authority, or end-entity certificate to a domain name.
ms.topic: conceptual
ms.date: 05/24/2023
---

# Enterprise certificate pinning overview

Enterprise certificate pinning is a Windows feature for remembering (pinning), a root issuing certificate authority, or end-entity certificate, to a domain name.\
The feature helps to reduce man-in-the-middle attacks by protecting internal domain names from chaining to unwanted or fraudulently issued certificates.

> [!NOTE]
> External domain names, where the certificate issued to these domains is issued by a public certificate authority, are not ideal for enterprise certificate pinning.

Windows Certificate APIs (*CertVerifyCertificateChainPolicy* and *WinVerifyTrust*) are updated to check if the site's chain that authenticates servers matches a restricted set of certificates.\
The restrictions are encapsulated in a *Pin Rules Certificate Trust List (CTL)* that is configured and deployed to Windows devices.\
Any site certificates that trigger a name mismatch causes Windows to write an event to the *CAPI2 event log*, and prevents the user from browsing the web site.

> [!NOTE]
> Enterprise Certificate Pinning feature triggering doesn't cause clients other than Microsoft Edge to block the connection.

## Deployment

To deploy enterprise certificate pinning, you need to:

- Create a well-formatted certificate pinning rule XML file
- Create a pin rules certificate trust list file from the XML file
- Apply the pin rules certificate trust list file to a reference administrative computer
- Deploy the registry configuration on the reference computer via group policy

### Create a pin rules XML file  

The XML-based pin rules file consists of a sequence of PinRule elements.
Each PinRule element contains a sequence of one or more Site elements and a sequence of zero or more Certificate elements.

```xml
<PinRules ListIdentifier="PinRulesExample" Duration="P28D">

  <PinRule Name="AllCertificateAttributes" Error="None" Log="true">
    <Certificate File="Single.cer"/>
    <Certificate File="Multiple.p7b"/>
    <Certificate File="Multiple.sst"/>
    <Certificate Directory="Multiple"/>
    <Certificate Base64="MIIBy … QFzuM"/>
    <Certificate File="WillExpire.cer" EndDate="2015-05-12T00:00:00Z"/>
    <Site Domain="xyz.com"/>
  </PinRule>

  <PinRule Name="MultipleSites" Log="false">
    <Certificate File="Root.cer"/>
    <Site Domain="xyz.com"/>
    <Site Domain=".xyz.com"/>
    <Site Domain="*.abc.xyz.com" AllSubdomains="true"/>
    <Site Domain="WillNormalize.com"/>
  </PinRule>

</PinRules>
```

#### PinRules element

The PinRules element can have the following attributes.
For help with formatting Pin Rules, see [Represent a date in XML](#represent-a-date-in-xml) or [Represent a duration in XML](#represent-a-duration-in-xml). 

| Attribute | Description | Required |
|-----------|-------------|----------|
|  **Duration** or **NextUpdate** | Specifies when the Pin Rules expires. Either is required. **NextUpdate** takes precedence if both are specified. <br>  **Duration**, represented as an XML TimeSpan data type, doesn't allow years and months. You represent the **NextUpdate** attribute as an XML DateTime data type in UTC.  | **Required?** Yes. At least one is required. |
| **LogDuration** or **LogEndDate** | Configures auditing only to extend beyond the expiration of enforcing the Pin Rules. <br>  **LogEndDate**, represented as an XML DateTime data type in UTC, takes precedence if both are specified. <br>  You represent **LogDuration** as an XML TimeSpan data type, which doesn't allow years and months. <br>  If `none of the attributes are specified, auditing expiration uses **Duration** or **NextUpdate** attributes. | No. | 
| **ListIdentifier** | Provides a friendly name for the list of pin rules. Windows doesn't use this attribute for certificate pinning enforcement; however, it's included when the pin rules are converted to a certificate trust list (CTL). | No. |

#### PinRule element

The **PinRule** element can have the following attributes.

| Attribute | Description | Required |
|-----------|-------------|----------|
| **Name**  | Uniquely identifies the **PinRule**. Windows uses the attribute to identify the element for a parsing error or for verbose output. The attribute isn't included in the generated certificate trust list (CTL). | Yes.|
| **Error** | Describes the action Windows performs when it encounters a PIN mismatch. You can choose from the following string values: <br>- **Revoked** - Windows reports the certificate protecting the site as if it was revoked. This typically prevents the user from accessing the site. <br>- **InvalidName** - Windows reports the certificate protecting the site as if the name on the certificate doesn't match the name of the site. This typically results in prompting the user before accessing the site. <br>- **None** - The default value.  No error is returned. You can use the setting to audit the pin rules without introducing any user friction. | No. |
| **Log** | A Boolean value represents a string that equals **true** or **false**. By default, logging is enabled (**true**). | No. |

#### Certificate element

The **Certificate** element can have the following attributes.

| Attribute | Description | Required |
|-----------|-------------|----------|
| **File**  | Path to a file containing one or more certificates.  Where the certificate(s) can be encoded as: <br>- single certificate <br>- p7b <br>- sst <br> These files can also be Base64 formatted.  All **Site** elements included in the same **PinRule** element can match any of these certificates. | Yes (File, Directory, or Base64 must be present). |
| **Directory** | Path to a directory containing one or more of the above certificate files. Skips any files not containing any certificates. | Yes (File, Directory, or Base64 must be present). | 
| **Base64** | Base64 encoded certificate(s). Where the certificate(s) can be encoded as: <br>- single certificate <br>- p7b <br> - sst <br> This allows the certificates to be included in the XML file without a file directory dependency. <br> Note: <br> You can use **certutil -encode** to convert a .cer file into base64. You can then use Notepad to copy and paste the base64 encoded certificate into the pin rule.  | Yes (File, Directory, or Base64 must be present). |
| **EndDate** | Enables you to configure an expiration date for when the certificate is no longer valid in the pin rule. <br>If you are in the process of switching to a new root or CA, you can set the **EndDate** to allow matching of this element's certificates.<br> If the current time is past the **EndDate**, when creating the certificate trust list (CTL) the parser outputs a warning message and excludes the certificate(s) from the Pin Rule in the generated CTL.<br> For help with formatting Pin Rules, see [Represent a date in XML](#represent-a-date-in-xml).| No.|

#### Site element

The **Site** element can have the following attributes.

| Attribute | Description | Required |
|-----------|-------------|----------|
| **Domain** | Contains the DNS name to be matched for this pin rule. When you create the certificate trust list, the parser normalizes the input name string value as follows: <br>- If the DNS name has a leading "*", it's removed. <br>- Non-ASCII DNS name is converted to ASCII Puny Code. <br>- Upper case ASCII characters are converted to lower case. <br>If the normalized name has a leading ".", then wildcard left-hand label matching is enabled. For example, ".xyz.com" would match "abc.xyz.com". | Yes.|
| **AllSubdomains** | By default, wildcard left-hand label matching is restricted to a single left-hand label. This attribute can be set to "true" to enable wildcard matching of all of the left-hand labels.<br>For example, setting this attribute would also match "123.abc.xyz.com" for the ".xyz.com" domain value.| No.|

### Create a pin rules certificate trust list

The *Certutil.exe* command includes the *generatePinRulesCTL* argument. The argument parses the XML file and generates the encoded certificate trust list (CTL) that you add to your reference Windows device and then deploy.
The syntax is:

```cmd
CertUtil [Options] -generatePinRulesCTL XMLFile CTLFile [SSTFile]
  Generate Pin Rules CTL
    XMLFile -- input XML file to be parsed.
    CTLFile -- output CTL file to be generated.
    SSTFile -- optional .sst file to be created.
         The .sst file contains all of the certificates
         used for pinning.

Options:
  -f                -- Force overwrite
  -v                -- Verbose operation
```

- The same certificate(s) can occur in multiple **PinRule** elements
- The same domain can occur in multiple **PinRule** elements
- Certutil coalesces these in the resultant pin rules certificate trust list
- Certutil.exe doesn't strictly enforce the XML schema definition

Certutil performs the following to enable other tools to add/consume their own specific elements and attributes:

- Skips elements before and after the **PinRules** element
- Skips any element not matching **Certificate** or **Site** within the **PinRules** element
- Skips any attributes not matching the above names for each element type

Use the *certutil* command with the *generatePinRulesCTL* argument along with your XML file that contains your certificate pinning rules.
Lastly, provide the name of an output file that will include your certificate pinning rules in the form of a certificate trust list.

```cmd
certutil -generatePinRulesCTL certPinRules.xml pinrules.stl
```

### Apply certificate pinning rules to a reference computer

Now that your certificate pinning rules are in the certificate trust list format, you need to apply the settings to a reference computer as a prerequisite to deploying the setting to your enterprise. 
To simplify the deployment configuration, it's best to apply your certificate pinning rules to a computer that has the Group Policy Management Console (GPMC) included in the Remote Server Administration Tools (RSAT). 

Use *certutil.exe* to apply your certificate pinning rules to your reference computer using the *setreg* argument.\
The *setreg* argument takes a secondary argument that determines the location of where certutil writes the certificate pining rules.\
The secondary argument is *chain\PinRules*.\
The last argument you provide is the name of file that contains your certificate pinning rules in certificate trust list format (`.stl`).\
You pass the name of the file as the last argument. You must prefix the file name with the `@` symbol as in the following example:

```cmd
Certutil -setreg chain\PinRules @pinrules.stl 
```

> [!NOTE]
> You must execute the command from an elevated command prompt.

Certutil writes the binary information to the following registration location:

| Name | Value |
|------|-------|
| Key | HKLM\SOFTWARE\Microsoft\Cryptography\OID\EncodingType0\CertDllCreateCertificateChainEngine\Config |
| Name | PinRules |
| Value | Binary contents from the certificate pin rules certificate trust list file |
| Data type | REG_BINARY |

![Registry binary information.](images/enterprise-pinning-registry-binary-information.png)

### Deploy enterprise pin rule settings using group policy

From the XML file, you've created a certificate pinning trust list file. Then, you've applied the content of the file to your reference device from which you can run the Group Policy Management Console.

The next step consists of configuring a group policy object that includes the applied certificate pin rule settings, and deploy it in your environment.

Sign-in to the reference computer using domain administrator equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. In the navigation pane, expand the forest node and then expand the domain node
1. Expand the node that contains your Active Directory's domain name
1. Select the **Group Policy objects** node.  Right-click the **Group Policy objects** node and select **New**
1. In the **New GPO** dialog box, type _Enterprise Certificate Pinning Rules_ in the **Name** text box and select **OK**
1. In the content pane, right-click the **Enterprise Certificate Pinning Rules** Group Policy object and select **Edit**
1. In the **Group Policy Management Editor**, in the navigation pane, expand the **Preferences** node under **Computer Configuration**. Expand **Windows Settings**
1. Right-click the **Registry** node and select **New**
1. In the **New Registry Properties** dialog box, select **Update** from the **Action** list.  Select **HKEY_LOCAL_MACHINE** from the **Hive** list
1. For the **Key Path**, select **…** to launch the **Registry Item Browser**.  Navigate to the following registry key and select the **PinRules** registry value name:

  `HKLM\SOFTWARE\Microsoft\Cryptography\OID\EncodingType0\CertDllCreateCertificateChainEngine\Config`

  Select **Select** to close the **Registry Item Browser**

1. The **Key Path** should contain the selected registry key. The **Value name** configuration should contain the registry value name **_PinRules_**. **Value type** should read **_REG\_BINARY_** and **Value data** should contain a long series of numbers from 0-9 and letters ranging from A-F (hexadecimal).  Select **OK** to save your settings and close the dialog box

  ![PinRules Properties.](images/enterprise-certificate-pinning-pinrules-properties.png)

1. Close the **Group Policy Management Editor** to save your settings
1. Link the **Enterprise Certificate Pinning Rules** GPO to the OU containing the devices that you want to configure

## Additional pin rules logging

To help constructing certificate pinning rules, you can configure the **PinRulesLogDir** setting under the certificate chain configuration registry key to include a parent directory to log pin rules.

| Name | Value |
|------|-------|
| Key | HKLM\SOFTWARE\Microsoft\Cryptography\OID\EncodingType0\CertDllCreateCertificateChainEngine\Config |
| Name | PinRulesLogDir |
| Value | The Parent directory where Windows should write the additional pin rule logs |
| Data type | REG_SZ |

### Permission for the pin rule log folder

The folder in which Windows writes the additional pin rule logs must have permissions so that all users and applications have full access.
You can run the following commands from an elevated command prompt to achieve the proper permissions.

```cmd
set PinRulesLogDir=c:\PinRulesLog
mkdir %PinRulesLogDir%
icacls %PinRulesLogDir% /grant *S-1-15-2-1:(OI)(CI)(F)
icacls %PinRulesLogDir% /grant *S-1-1-0:(OI)(CI)(F)  
icacls %PinRulesLogDir% /grant *S-1-5-12:(OI)(CI)(F)
icacls %PinRulesLogDir% /inheritance:e /setintegritylevel (OI)(CI)L
```

When an application verifies a TLS/SSL certificate chain that contains a server name matching a DNS name in the server certificate, Windows writes a .p7b file consisting of all the certificates in the server's chain to one of three child folders:

- `AdminPinRules`: Matched a site in the enterprise certificate pinning rules
- `AutoUpdatePinRules`: Matched a site in the certificate pinning rules managed by Microsoft
- `NoPinRules`: Didn't match any site in the certificate pin rules

The output file name consists of the leading eight ASCII hex digits of the root's SHA1 thumbprint followed by the server name.
For example:

- `D4DE20D0_xsi.outlook.com.p7b`
- `DE28F4A4_www.yammer.com.p7b`

If there's either an enterprise certificate pin rule or a Microsoft certificate pin rule mismatch, then Windows writes the .p7b file to the **MismatchPinRules** child folder.
If the pin rules have expired, then Windows writes the .p7b to the **ExpiredPinRules** child folder. 

## Represent a date in XML

Many attributes within the pin rules xml file are dates.\
These dates must be properly formatted and represented in UTC.\
You can use Windows PowerShell to format these dates.\
You can then copy and paste the output of the cmdlet into the XML file.

![Representing a date.](images/enterprise-certificate-pinning-representing-a-date.png)

For simplicity, you can truncate decimal point (.) and the numbers after it. 
However, be certain to append the uppercase "Z" to the end of the XML date string.

```cmd
2015-05-11T07:00:00.2655691Z
2015-05-11T07:00:00Z
```

## Convert an XML date

You can also use Windows PowerShell to validate and convert an XML date into a human readable date to validate it's the correct date.

![Converting an XML date.](images/enterprise-certificate-pinning-converting-an-xml-date.png)

## Represent a duration in XML

Some elements may be configured to use a duration rather than a date.
You must represent the duration as an XML timespan data type.
You can use Windows PowerShell to properly format and validate durations (timespans) and copy and paste them into your XML file.

![Representing a duration.](images/enterprise-certificate-pinning-representing-a-duration.png)

## Convert an XML duration

You can convert an XML formatted timespan into a timespan variable that you can read. 

![Converting an XML duration.](images/enterprise-certificate-pinning-converting-a-duration.png)

## Certificate trust list XML schema definition (XSD)

```xml
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="PinRules">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="PinRule" maxOccurs="unbounded" minOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Certificate" maxOccurs="unbounded" minOccurs="0">
                <xs:complexType>
                  <xs:simpleContent>
                    <xs:extension base="xs:string">
                      <xs:attribute type="xs:dateTime" name="EndDate" use="optional"/>
                      <xs:attribute type="xs:string" name="File" use="optional"/>
                      <xs:attribute type="xs:string" name="Directory" use="optional"/>
                      <xs:attribute type="xs:base64Binary" name="Base64" use="optional"/>
                    </xs:extension>
                  </xs:simpleContent>
                </xs:complexType>
              </xs:element>
              <xs:element name="Site" maxOccurs="unbounded" minOccurs="1">
                <xs:complexType>
                  <xs:simpleContent>
                    <xs:extension base="xs:string">
                      <xs:attribute type="xs:string" name="Domain"/>
                      <xs:attribute type="xs:boolean" name="AllSubdomains" use="optional" default="false"/>
                    </xs:extension>
                  </xs:simpleContent>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
            <xs:attribute type="xs:string" name="Name"/>
            <xs:attribute name="Error" use="optional" default="None">
              <xs:simpleType>
                <xs:restriction base="xs:string">
                  <xs:enumeration value ="Revoked"/>
                  <xs:enumeration value ="InvalidName"/>
                  <xs:enumeration value ="None"/>
                </xs:restriction>
              </xs:simpleType>
            </xs:attribute>
            <xs:attribute type="xs:boolean" name="Log" use="optional" default="true"/>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
      <xs:attribute type="xs:duration" name="Duration" use="optional"/>
      <xs:attribute type="xs:duration" name="LogDuration" use="optional"/>
      <xs:attribute type="xs:dateTime" name="NextUpdate" use="optional"/>
      <xs:attribute type="xs:dateTime" name="LogEndDate" use="optional"/>
      <xs:attribute type="xs:string" name="ListIdentifier" use="optional"/>
    </xs:complexType>
  </xs:element>
</xs:schema>
```
