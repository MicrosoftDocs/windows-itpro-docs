---
title: AssignedAccess CSP
description: Learn more about the AssignedAccess CSP.
ms.date: 02/29/2024
---

<!-- Auto-Generated CSP Document -->

<!-- AssignedAccess-Begin -->
# AssignedAccess CSP

<!-- AssignedAccess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The AssignedAccess configuration service provider (CSP) is used to configure a kiosk or restricted user experience. Once the CSP is executed, the next user login that is associated with the Assigned Access profile puts the device into the kiosk mode specified in the CSP configuration.

To learn more about how to configure Assigned Access, see [Configure kiosks and restricted user experiences](/windows/configuration/assigned-access/index.md).
<!-- AssignedAccess-Editable-End -->

<!-- AssignedAccess-Tree-Begin -->
The following list shows the AssignedAccess configuration service provider nodes:

- ./Vendor/MSFT/AssignedAccess
  - [Configuration](#configuration)
  - [KioskModeApp](#kioskmodeapp)
  - [ShellLauncher](#shelllauncher)
  - [Status](#status)
  - [StatusConfiguration](#statusconfiguration)
<!-- AssignedAccess-Tree-End -->

<!-- Device-Configuration-Begin -->
## Configuration

<!-- Device-Configuration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Configuration-Applicability-End -->

<!-- Device-Configuration-OmaUri-Begin -->
```Device
./Vendor/MSFT/AssignedAccess/Configuration
```
<!-- Device-Configuration-OmaUri-End -->

<!-- Device-Configuration-Description-Begin -->
<!-- Description-Source-DDF -->
This node accepts an AssignedAccessConfiguration xml as input.
<!-- Device-Configuration-Description-End -->

<!-- Device-Configuration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
To learn how to configure xml file, see [Create an Assigned Access configuration XML file](/windows/configuration/assigned-access/configuration-file.md)

<!-- Device-Configuration-Editable-End -->

<!-- Device-Configuration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Configuration-DFProperties-End -->

<!-- Device-Configuration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

For more examples, see [AssignedAccessConfiguration examples](#assignedaccessconfiguration-examples).

- Get Configuration

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
       <SyncBody>
           <Get>
               <CmdID>2</CmdID>
               <Item>
                   <Target>
                       <LocURI>./Device/Vendor/MSFT/AssignedAccess/Configuration</LocURI>
                   </Target>
               </Item>
           </Get>
           <Final />
       </SyncBody>
    </SyncML>
    ```

- Delete Configuration

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
       <SyncBody>
           <Delete>
               <CmdID>2</CmdID>
               <Item>
                   <Target>
                       <LocURI>./Device/Vendor/MSFT/AssignedAccess/Configuration</LocURI>
                   </Target>
               </Item>
           </Delete>
           <Final />
       </SyncBody>
    </SyncML>
    ```
<!-- Device-Configuration-Examples-End -->

<!-- Device-Configuration-End -->

<!-- Device-KioskModeApp-Begin -->
## KioskModeApp

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- Device-KioskModeApp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-KioskModeApp-Applicability-End -->

<!-- Device-KioskModeApp-OmaUri-Begin -->
```Device
./Vendor/MSFT/AssignedAccess/KioskModeApp
```
<!-- Device-KioskModeApp-OmaUri-End -->

<!-- Device-KioskModeApp-Description-Begin -->
<!-- Description-Source-DDF -->
This node can accept and return json string which comprises of account name, and AUMID for Kiosk mode app.

Example: `{"User":"domain\\user", "AUMID":"Microsoft. WindowsCalculator_8wekyb3d8bbwe!App"}`.

When configuring kiosk mode app, account name will be used to find the target user. Account name includes domain name and user name. Domain name can be optional if user name is unique across the system. For a local account, domain name should be machine name. When "Get" is executed on this node, domain name is always returned in the output.

This node supports Add, Delete, Replace and Get methods. When there's no configuration, "Get" and "Delete" methods fail. When there's already a configuration for kiosk mode app, "Add" method fails. The data pattern for "Add" and "Replace" is the same.
<!-- Device-KioskModeApp-Description-End -->

<!-- Device-KioskModeApp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!TIP]
> In the above example the double `\\` is required because it's in JSON and JSON escapes `\\` into `\`. If an MDM server uses JSON parser\composer, they should ask customers to type only one `\`, which will be `\\` in the JSON. If user types `\\`, it'll become `\\\\` in JSON, which will cause erroneous results. For the same reason, `domain\user` used in Configuration xml does not need `\\` but only one `\`, because xml does not (need to) escape `\`.
>
> This applies to both `domain\user`, `AzureAD\someone@contoso.onmicrosoft.com`, as long as a `\` is used in JSON string.

- For more information about how to get the AUMID, see [Find the Application User Model ID of an installed app](/windows/configuration/store/find-aumid.md)

> [!IMPORTANT]
>
> - In Windows 10, version 1803, the Configuration node introduced single app kiosk profile to replace KioskModeApp CSP node. KioskModeApp node will be deprecated soon, so you should use the single app kiosk profile in configuration xml for Configuration node to configure public-facing single app Kiosk.
> - Additionally, starting in Windows 10, version 1803, the KioskModeApp node becomes No-Op if Configuration node is configured on the device. Add/Replace/Delete commands on KioskModeApp node always returns SUCCESS to the MDM server if Configuration node is set, but the data of KioskModeApp will not take any effect on the device. Get command on KioskModeApp will return the configured JSON string even it's not effective.
> - You can't set both KioskModeApp and ShellLauncher at the same time on the device.
<!-- Device-KioskModeApp-Editable-End -->

<!-- Device-KioskModeApp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-KioskModeApp-DFProperties-End -->

<!-- Device-KioskModeApp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add KioskModeApp

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
        <SyncBody>
            <Add>
                <CmdID>2</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/AssignedAccess/KioskModeApp</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>{"Account":"Domain\\AccountName","AUMID":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"}</Data>
                </Item>
            </Add>
            <Final />
        </SyncBody>
    </SyncML>
    ```

- Delete KioskModeApp

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
        <SyncBody>
            <Delete>
                <CmdID>2</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/AssignedAccess/KioskModeApp</LocURI>
                    </Target>
                </Item>
            </Delete>
            <Final />
        </SyncBody>
    </SyncML>
    ```

- Get KioskModeApp

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
        <SyncBody>
            <Get>
                <CmdID>2</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/AssignedAccess/KioskModeApp</LocURI>
                    </Target>
                </Item>
            </Get>
            <Final />
        </SyncBody>
    </SyncML>
    ```

- Replace KioskModeApp

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
        <SyncBody>
            <Replace>
                <CmdID>2</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/AssignedAccess/KioskModeApp</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>{"Account":"Domain\\AccountName","AUMID":"Microsoft.WindowsAlarms_8wekyb3d8bbwe!App"}</Data>
                </Item>
            </Replace>
            <Final />
        </SyncBody>
    </SyncML>
    ```
<!-- Device-KioskModeApp-Examples-End -->

<!-- Device-KioskModeApp-End -->

<!-- Device-ShellLauncher-Begin -->
## ShellLauncher

<!-- Device-ShellLauncher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-ShellLauncher-Applicability-End -->

<!-- Device-ShellLauncher-OmaUri-Begin -->
```Device
./Vendor/MSFT/AssignedAccess/ShellLauncher
```
<!-- Device-ShellLauncher-OmaUri-End -->

<!-- Device-ShellLauncher-Description-Begin -->
<!-- Description-Source-DDF -->
This node accepts a ShellLauncherConfiguration xml as input.
<!-- Device-ShellLauncher-Description-End -->

<!-- Device-ShellLauncher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

To learn about Shell Launcher, see [What is Shell Launcher?](/windows/configuration/assigned-access/shell-launcher/index.md).

> [!IMPORTANT]
> You can't set both ShellLauncher and KioskModeApp at the same time on the device.

> [!NOTE]
> Configuring Shell Launcher using the ShellLauncher node automatically enables the Shell Launcher feature, if it is available within the SKU.
>
> Shell Launcher as a feature and the ShellLauncher node both require Windows Enterprise or Windows Education to function. The ShellLauncher node is not supported in Windows 10 Pro.
<!-- Device-ShellLauncher-Editable-End -->

<!-- Device-ShellLauncher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-ShellLauncher-DFProperties-End -->

<!-- Device-ShellLauncher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->

Here's the Shell Launcher XSD reference article: [Shell Launcher XML Schema Definition (XSD)](/windows/configuration/assigned-access/shell-launcher/xsd.md).

**Examples**:

- Add

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
      <SyncBody>
        <Add>
          <CmdID>2</CmdID>
          <Item>
            <Target>
              <LocURI>./Device/Vendor/MSFT/AssignedAccess/ShellLauncher</LocURI>
            </Target>
            <Meta>
              <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>
            <![CDATA[
            <!-- Add your XML configuration. For more information, see the Shell Launcher XSD reference article. -->
            ]]>
            </Data>
          </Item>
        </Add>
        <Final />
      </SyncBody>
    </SyncML>
    ```

- Get

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
      <SyncBody>
        <Get>
          <CmdID>2</CmdID>
          <Item>
            <Target>
              <LocURI>./Device/Vendor/MSFT/AssignedAccess/ShellLauncher</LocURI>
            </Target>
          </Item>
        </Get>
        <Final />
      </SyncBody>
    </SyncML>
    ```
<!-- Device-ShellLauncher-Examples-End -->

<!-- Device-ShellLauncher-End -->

<!-- Device-Status-Begin -->
## Status

<!-- Device-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Status-Applicability-End -->

<!-- Device-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/AssignedAccess/Status
```
<!-- Device-Status-OmaUri-End -->

<!-- Device-Status-Description-Begin -->
<!-- Description-Source-DDF -->
This read only node contains kiosk health event xml.
<!-- Device-Status-Description-End -->

<!-- Device-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This allows MDM server to query the current KioskModeAppRuntimeStatus as long as the StatusConfiguration node is set to "On" or "OnWithAlerts". If the StatusConfiguration is "Off", a "node not found" error will be reported to the MDM server.

Starting in **Windows 10, version 1809**, Assigned Access runtime status supports monitoring single-app kiosk and multi-app modes. Here are the possible status codes:

| Status Code | Status | Description |
|--|--|--|
| 0 | Unknown | Unknown status. |
| 1 | Running | The AssignedAccess account (kiosk or multi-app) is running normally. |
| 2 | AppNotFound | The kiosk app isn't deployed to the machine. |
| 3 | ActivationFailed | The AssignedAccess account (kiosk or multi-app) failed to sign in. |
| 4 | AppNoResponse | The kiosk app launched successfully but is now unresponsive. |

Additionally, the Status payload includes the following fields:

- profileId: It can be used by the MDM server to correlate which account caused the error.
- OperationList: It gives the list of failed operations that occurred while applying the assigned access CSP, if any exist.
<!-- Device-Status-Editable-End -->

<!-- Device-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Status-DFProperties-End -->

<!-- Device-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**AssignedAccessAlert XSD**:

```xml
<?xml version="1.0" encoding="utf-8"?>
<xs:schema
    elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://schemas.microsoft.com/AssignedAccess/2018/AssignedAccessAlert"
    xmlns:default="http://schemas.microsoft.com/AssignedAccess/2018/AssignedAccessAlert"
    targetNamespace="http://schemas.microsoft.com/AssignedAccess/2018/AssignedAccessAlert"
    >

    <xs:simpleType name="status_t">
        <xs:restriction base="xs:int">
            <xs:enumeration value="0"/> <!-- Unknown -->
            <xs:enumeration value="1"/> <!-- Running -->
            <xs:enumeration value="2"/> <!-- AppNotFound -->
            <xs:enumeration value="3"/> <!-- ActivationFailed -->
            <xs:enumeration value="4"/> <!-- AppNoResponse -->
        </xs:restriction>
    </xs:simpleType>

    <xs:simpleType name="guid_t">
        <xs:restriction base="xs:string">
            <xs:pattern value="\{[0-9a-fA-F]{8}\-([0-9a-fA-F]{4}\-){3}[0-9a-fA-F]{12}\}"/>
        </xs:restriction>
    </xs:simpleType>

    <xs:complexType name="operation_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:element name="name" type="xs:string" minOccurs="1" maxOccurs="1"/>
            <xs:element name="errorCode" type="xs:int" minOccurs="1" maxOccurs="1"/>
            <xs:element name="data" type="xs:string" minOccurs="0" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="operationlist_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:element name="Operation" type="operation_t" minOccurs="1" maxOccurs="unbounded"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="event_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:element name="status" type="status_t" minOccurs="1" maxOccurs="1"/>
            <xs:element name="profileId" type="guid_t" minOccurs="1" maxOccurs="1"/>
            <xs:element name="errorCode" type="xs:int" minOccurs="0" maxOccurs="1"/>
            <xs:element name="OperationList" type="operationlist_t" minOccurs="0" maxOccurs="1"/>
        </xs:sequence>
        <xs:attribute name="Name" type="xs:string" use="required"/>
    </xs:complexType>

    <xs:element name="Events">
        <xs:complexType>
            <xs:choice minOccurs="1" maxOccurs="1">
                <xs:element name="Event" type="event_t" minOccurs="1" maxOccurs="1"/>
            </xs:choice>
        </xs:complexType>
    </xs:element>
</xs:schema>
```

**Example**:

```xml
<SyncML xmlns='SYNCML:SYNCML1.2'>
   <SyncBody>
       <Get>
           <CmdID>2</CmdID>
           <Item>
               <Target>
                 <LocURI>./Device/Vendor/MSFT/AssignedAccess/Status</LocURI>
               </Target>
           </Item>
       </Get>
       <Final />
   </SyncBody>
</SyncML>
```
<!-- Device-Status-Examples-End -->

<!-- Device-Status-End -->

<!-- Device-StatusConfiguration-Begin -->
## StatusConfiguration

<!-- Device-StatusConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-StatusConfiguration-Applicability-End -->

<!-- Device-StatusConfiguration-OmaUri-Begin -->
```Device
./Vendor/MSFT/AssignedAccess/StatusConfiguration
```
<!-- Device-StatusConfiguration-OmaUri-End -->

<!-- Device-StatusConfiguration-Description-Begin -->
<!-- Description-Source-DDF -->
This node accepts a StatusConfiguration xml as input.
<!-- Device-StatusConfiguration-Description-End -->

<!-- Device-StatusConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
There are three possible values for StatusEnabled node inside StatusConfiguration xml:

- On
- OnWithAlerts
- Off

By default, the StatusConfiguration node doesn't exist, and it implies this feature is off. Once enabled via CSP, Assigned Access will check kiosk app status and wait for MDM server to query the latest status from the Status node. Optionally, the MDM server can opt in to the MDM alert so that an MDM alert will be generated and sent immediately to the MDM server when the assigned access runtime status is changed. This MDM alert will contain the status payload that is available via the Status node. This MDM alert header is defined as follows:

- MDMAlertMark: `Critical`
- MDMAlertType: `com.microsoft.mdm.assignedaccess.status`
- MDMAlertDataType: `string`
- Source: `./Vendor/MSFT/AssignedAccess`
- Target: `N/A`

> [!NOTE]
> MDM alert are only sent for errors.
<!-- Device-StatusConfiguration-Editable-End -->

<!-- Device-StatusConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-StatusConfiguration-DFProperties-End -->

<!-- Device-StatusConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**StatusConfiguration XSD**:

```xml
<?xml version="1.0" encoding="utf-8"?>
<xs:schema
    elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://schemas.microsoft.com/AssignedAccess/2018/StatusConfiguration"
    xmlns:default="http://schemas.microsoft.com/AssignedAccess/2018/StatusConfiguration"
    targetNamespace="http://schemas.microsoft.com/AssignedAccess/2018/StatusConfiguration"
    >

    <xs:simpleType name="status_enabled_t">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Off"/>
            <xs:enumeration value="On"/>
            <xs:enumeration value="OnWithAlerts"/>
        </xs:restriction>
    </xs:simpleType>

    <!--below is the definition of the config xml content-->
    <xs:element name="StatusConfiguration">
        <xs:complexType>
            <xs:sequence minOccurs="1" maxOccurs="1">
                <xs:element name="StatusEnabled" type="status_enabled_t" minOccurs="1" maxOccurs="1"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>
```

**Examples**:

- Add StatusConfiguration with StatusEnabled set to OnWithAlerts

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
      <SyncBody>
        <Add>
          <CmdID>2</CmdID>
          <Item>
            <Target>
              <LocURI>./Device/Vendor/MSFT/AssignedAccess/StatusConfiguration</LocURI>
            </Target>
            <Meta>
              <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>
              <![CDATA[
              <?xml version="1.0" encoding="utf-8" ?>
              <StatusConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2018/StatusConfiguration">
                <StatusEnabled>OnWithAlerts</StatusEnabled>
              </StatusConfiguration>
              ]]>
            </Data>
          </Item>
        </Add>
        <Final />
      </SyncBody>
    </SyncML>
    ```

- Delete StatusConfiguration

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
        <SyncBody>
            <Delete>
                <CmdID>2</CmdID>
                <Item>
                    <Target>
                      <LocURI>./Device/Vendor/MSFT/AssignedAccess/StatusConfiguration</LocURI>
                    </Target>
                </Item>
            </Delete>
            <Final />
        </SyncBody>
    </SyncML>
    ```

- Get StatusConfiguration

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
        <SyncBody>
            <Get>
                <CmdID>2</CmdID>
                <Item>
                    <Target>
                      <LocURI>./Device/Vendor/MSFT/AssignedAccess/StatusConfiguration</LocURI>
                    </Target>
                </Item>
            </Get>
            <Final />
        </SyncBody>
    </SyncML>
    ```

- Replace StatusEnabled value with On

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
      <SyncBody>
        <Replace>
          <CmdID>2</CmdID>
          <Item>
            <Target>
              <LocURI>./Device/Vendor/MSFT/AssignedAccess/StatusConfiguration</LocURI>
            </Target>
            <Meta>
              <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>
              <![CDATA[
              <?xml version="1.0" encoding="utf-8" ?>
              <StatusConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2018/StatusConfiguration">
                <StatusEnabled>On</StatusEnabled>
              </StatusConfiguration>
              ]]>
            </Data>
          </Item>
        </Replace>
        <Final />
      </SyncBody>
    </SyncML>
    ```
<!-- Device-StatusConfiguration-Examples-End -->

<!-- Device-StatusConfiguration-End -->

<!-- AssignedAccess-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## AssignedAccessConfiguration XSD

Here's the Assigned Access XSD reference article: [Assigned Access XML Schema Definition (XSD)](/windows/configuration/assigned-access/xsd.md).

For practical examples of Assigned Access configuration files, see [Assigned Access examples](/windows/configuration/assigned-access/examples.md).

## Handling XML in Configuration

XML encoding (escaped) and CDATA of the XML in the Data node will both ensure that DM client can properly interpret the SyncML and send the configuration xml as string (in original format, unescaped) to AssignedAccess CSP to handle.

Similarly, the StartLayout xml inside the configuration xml is using the same format, xml inside xml as string. In the sample Configuration xml provided above, CDATA is used to embed the StartLayout xml. If you use CDATA to embed configuration xml in SyncML as well, you have nested CDATA, so pay attention to how CDATA is used in the provided CDATA sample. With that being said, when the Configuration xml is being constructed, MDM server can either escape start layout xml or put startlayout xml inside CDATA, when MDM server puts configuration xml inside SyncML, MDM server can also either escape it or wrap with CDATA.

Escape and CDATA are mechanisms used when handling xml in xml. Consider that it's a transportation channel to send the configuration xml as payload from server to client. It's transparent to both, the end user who configures the CSP and to our CSP. Both the customer on the server side and our CSP must only see the original configuration XML.

- This example shows escaped XML of the Data node.

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
        <SyncBody>
            <Add>
                <CmdID>2</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/AssignedAccess/Configuration</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>
                        &lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot; ?&gt;
    &lt;AssignedAccessConfiguration xmlns=&quot;http://schemas.microsoft.com/AssignedAccess/2017/config&quot;&gt;
        &lt;Profiles&gt;
            &lt;Profile Id=&quot;{9A2A490F-10F6-4764-974A-43B19E722C23}&quot;&gt;
                &lt;AllAppsList&gt;
                    &lt;AllowedApps&gt;
                        &lt;App DesktopAppPath=&quot;C:\Windows\System32\notepad.exe&quot; /&gt;
                    &lt;/AllowedApps&gt;
                &lt;/AllAppsList&gt;
                &lt;StartLayout&gt;
                    &lt;![CDATA[&lt;LayoutModificationTemplate xmlns:defaultlayout=&quot;http://schemas.microsoft.com/Start/2014/FullDefaultLayout&quot; xmlns:start=&quot;http://schemas.microsoft.com/Start/2014/StartLayout&quot; Version=&quot;1&quot; xmlns=&quot;http://schemas.microsoft.com/Start/2014/LayoutModification&quot;&gt;
                          &lt;LayoutOptions StartTileGroupCellWidth=&quot;6&quot; /&gt;
                          &lt;DefaultLayoutOverride&gt;
                            &lt;StartLayoutCollection&gt;
                              &lt;defaultlayout:StartLayout GroupCellWidth=&quot;6&quot;&gt;
                                &lt;start:Group Name=&quot;Group1&quot;&gt;
                                  &lt;start:Tile Size=&quot;4x4&quot; Column=&quot;0&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic&quot; /&gt;
                                &lt;/start:Group&gt;
                              &lt;/defaultlayout:StartLayout&gt;
                            &lt;/StartLayoutCollection&gt;
                          &lt;/DefaultLayoutOverride&gt;
                        &lt;/LayoutModificationTemplate&gt;
                    ]]&gt;
                &lt;/StartLayout&gt;
                &lt;Taskbar ShowTaskbar=&quot;true&quot;/&gt;
            &lt;/Profile&gt;
        &lt;/Profiles&gt;
        &lt;Configs&gt;
            &lt;Config&gt;
                &lt;Account&gt;MultiAppKioskUser&lt;/Account&gt;
                &lt;DefaultProfile Id=&quot;{9A2A490F-10F6-4764-974A-43B19E722C23}&quot;/&gt;
            &lt;/Config&gt;
        &lt;/Configs&gt;
    &lt;/AssignedAccessConfiguration&gt;

                    </Data>
                </Item>
            </Add>
            <Final />
        </SyncBody>
    </SyncML>
    ```

</details>

- This example shows CData for the XML.

    ```xml
    <SyncML xmlns='SYNCML:SYNCML1.2'>
        <SyncBody>
            <Add>
                <CmdID>2</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/AssignedAccess/Configuration</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>
                        <![CDATA[<?xml version="1.0" encoding="utf-8" ?>
    <AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config">
      <Profiles>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">
          <AllAppsList>
            <AllowedApps>
              <App DesktopAppPath="C:\Windows\System32\notepad.exe" />
            </AllowedApps>
          </AllAppsList>
          <StartLayout>
            <![CDATA[<LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
                          <LayoutOptions StartTileGroupCellWidth="6" />
                          <DefaultLayoutOverride>
                            <StartLayoutCollection>
                              <defaultlayout:StartLayout GroupCellWidth="6">
                                <start:Group Name="Group1">
                                  <start:Tile Size="4x4" Column="0" Row="0" AppUserModelID="Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic" />
                                </start:Group>
                                <start:Group Name="Group2">
                                  <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationID="{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\mspaint.exe" />
                                  <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\notepad.exe" />
                                </start:Group>
                              </defaultlayout:StartLayout>
                            </StartLayoutCollection>
                          </DefaultLayoutOverride>
                        </LayoutModificationTemplate>
                      ]]]]><![CDATA[>
          </StartLayout>
          <Taskbar ShowTaskbar="true"/>
        </Profile>
      </Profiles>
      <Configs>
        <Config>
          <Account>MultiAppKioskUser</Account>
          <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
        </Config>
      </Configs>
    </AssignedAccessConfiguration>
    ]]>
                    </Data>
                </Item>
            </Add>
            <Final />
        </SyncBody>
    </SyncML>
    ```
<!-- AssignedAccess-CspMoreInfo-End -->

<!-- AssignedAccess-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
