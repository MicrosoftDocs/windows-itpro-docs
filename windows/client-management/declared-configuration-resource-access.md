---
title: Resource access overview
description: Learn more about configuring resource access using Declared Configuration
ms.date: 08/14/2024
ms.topic: how-to
---

# Declared configuration resource access

Resource Access (RA) is used to manage device configurations and enforce policies to ensure the devices remain in a desired state. It's crucial for maintaining security, compliance, and operational efficiency in organizations. Declared Configuration cloud service is used to send the desired state of a resource to the device where correspondingly the device has the responsibility to enforce and maintain the resource configuration state.

[Configuration Service Providers (CSPs)](mdm/index.yml) play a vital role for configuring Resource access and act as an interface between the device and the Declared Configuration protocol. They provide a consistent and standardized approach to deploying and enforcing configurations. CSPs support various resource access scenarios, including:

- [VPNv2 CSP](mdm/vpnv2-csp.md) and [VPN CSP](mdm/vpn-csp.md)
- [Wi-Fi CSP](mdm/wifi-csp.md)
- [ClientCertificateInstall CSP](mdm/clientcertificateinstall-csp.md)
- [ActiveSync CSP](mdm/activesync-csp.md)
- [WiredNetwork CSP](mdm/wirednetwork-csp.md)
- [RootCACertificates CSP](mdm/rootcacertificates-csp.md)

The [Declared Configuration](declared-configuration.md) stack on the device processes configuration requests and maintains the desired state, which is key to RA. The efficiency, accuracy, and enforcement of configuration requests are critical for effective RA. Resource access integrates seamlessly with Declared Configuration, providing an extended method for managing devices through the cloud with enhanced scalability and efficiency.

- **Efficiency**: Batch-based processing minimizes server resource usage and reduces latency.
- **Accuracy**: Declared Configuration client stack understands the device's configuration surface area, enabling effective handling of continuous updates. It ensures precise execution of configuration changes communicated by the cloud service.
- **Policy Enforcement**: Apply and maintain organizational policies across devices consistently and at scale, ensuring compliance and uniform configuration. This aspect allows organizations to maintain the desired security posture across devices.

## Resource access guidelines

These guidelines provide best practices and examples for developers and testers to implement resource access (RA) configurations in a secure, efficient, and consistent manner. They aim to enhance network security and optimize resource access for end users while adhering to policies and compliance requirements.

- **Configuration Integrity**: To support uninterrupted and secure resource access, ensure consistent configurations across devices and users.
- **State Validation**: Monitor the state of configurations to verify the correct application of resource access settings.
- **Profile Management**: Effectively manage user profiles by adding, updating, and deleting as needed, to control access to resources and maintain security.
- **Log and Audit**: Utilize logs and audit trails for operations and changes to aid in troubleshooting and compliance.
- **Drift Detection and Remediation**: To maintain compliance with RA policies, continuously monitor drift (changes in configuration or behavior) and take corrective action.
- **Security and Privacy**: To protect user data and resources, implement strong security and privacy measures in configurations.

By following these guidelines and understanding the syntax of the [DeclaredConfiguration CSP](mdm/declaredconfiguration-csp.md), you can effectively implement and manage RA configurations while maintaining security and compliance.

## Resource access configuration with examples

Resource access configuration utilizes the [DeclaredConfiguration CSP](mdm/declaredconfiguration-csp.md). A declared configuration request for configuring resource access is sent using an OMA-URI similar to `./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/{DocID}/Document`.

- The URI is prefixed with a targeted scope. The `<LocURI>` and the DeclaredConfiguration Context need to match. For example, when `LocURI` starts with **Device**, Context should be **Device** as well. When `LocURI` doesn't start with **Device**, Context should be **User**.
- `{DocID}` is a unique identifier for the desired state of the configuration scenario. Every document must have an **ID**, which must be a GUID.

:::image type="content" source="images/declared-configuration-ra-syntax.png" alt-text="Declared Configuration resource access syntax":::

Only supported values for `osdefinedscenario` can be used. Unsupported values result in a failure.

| osdefinedscenario            | Recommended using with        |
|------------------------------|-------------------------------|
| MSFTWiredNetwork             | WiredNetwork                  |
| MSFTResource                 | ActiveSync                    |
| MSFTVpn                      | VPN and VPNv2                 |
| MSFTWifi                     | Wifi                          |
| MSFTInventory                | Certificate inventory         |
| MSFTClientCertificateInstall | SCEP, PFX, Bulk Template Data |

Examples:

1. MSFTWifi (snippet) for Wifi:

    ```xml
    <DeclaredConfiguration context="Device" schema="1.0" id="10249228-e719-58bf-b459-060de45240f1" osdefinedscenario="MSFTWifi" checksum="11111111">
    <CSP name="./Vendor/MSFT/WiFi">
    ```

1. MSFTTResource (snippet) for ActiveSync:

    ```xml
    <DeclaredConfiguration context="User" schema="1.0" id="33333333-1861-4131-96e8-44444444" osdefinedscenario="MSFTResource" checksum="5555">
    <CSP name="./Vendor/MSFT/ActiveSync">
    ```

### Configure a VPNv2 profile for resource access

This example uses the [VPNv2 CSP](mdm/vpnv2-csp.md) to configure a VPN profile named **Test_SonicWall** on the device in the **User** scope.

```xml
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>2</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/DCA000B5-397D-40A1-AABF-40B25078A7F9/Document</LocURI>
        </Target>
        <Data><![CDATA[<?xml version="1.0" encoding="utf-8"?>
            <DeclaredConfiguration context="user" schema="1.0" id="DCA000B5-397D-40A1-AABF-40B25078A7F9" osdefinedscenario="MSFTVPN" checksum="A0">
                <CSP name="./Vendor/MSFT/VPNv2">
                    <URI path="Test_SonicWall/TrafficFilterList/0/Protocol" type="int">2</URI>
                    <URI path="Test_SonicWall/TrafficFilterList/0/Direction" type="chr">outbound</URI>
                    <URI path="Test_SonicWall/TrafficFilterList/1/Protocol" type="int">6</URI>
                    <URI path="Test_SonicWall/TrafficFilterList/1/LocalPortRanges" type="chr">43-54</URI>
                    <URI path="Test_SonicWall/TrafficFilterList/1/RemotePortRanges" type="chr">243-456</URI>
                    <URI path="Test_SonicWall/TrafficFilterList/1/Direction" type="chr">outbound</URI>
                    <URI path="Test_SonicWall/EdpModeId" type="chr">wip.contoso.com</URI>
                    <URI path="Test_SonicWall/RememberCredentials" type="bool">true</URI>
                    <URI path="Test_SonicWall/AlwaysOn" type="bool">true</URI>
                    <URI path="Test_SonicWall/Proxy/AutoConfigUrl" type="chr">https://auto.proxy.com</URI>
                    <URI path="Test_SonicWall/DeviceCompliance/Enabled" type="bool">true</URI>
                    <URI path="Test_SonicWall/DeviceCompliance/Sso/Enabled" type="bool">false</URI>
                    <URI path="Test_SonicWall/PluginProfile/ServerUrlList" type="chr">23.54.3.6;server1,vpn.contoso.com;server2</URI>
                    <URI path="Test_SonicWall/PluginProfile/CustomConfiguration" type="chr">&lt;custom&gt;&lt;/custom&gt;</URI>
                    <URI path="Test_SonicWall/PluginProfile/PluginPackageFamilyName" type="chr">SonicWALL.MobileConnect_e5kpm93dbe93j</URI>
                </CSP>
            </DeclaredConfiguration>
        ]]></Data>
      </Item>
    </Replace>
    <Final />
  </SyncBody>
</SyncML>
```

> [!NOTE]
>
> - Format of the `<LocURI>` and `<DeclaredConfiguration>` follow the [Declared Configuration CSP](mdm/declaredconfiguration-csp.md) syntax.
> - The `id` of `<DeclaredConfiguration>` should be a unique string.
> - `<Format>` of `<Meta>` should be `chr` and `<Type>` should be `text/plain`.

### Updating a VPNv2 profile for resource access

This example uses the same Declared Configuration **Document ID**, but with a new checksum("A3"). It installs a new VPNv2 profile named `Test_SonicwallNew`, and deletes the old profile.

```xml
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>2</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/DCA000B5-397D-40A1-AABF-40B25078A7F9/Document</LocURI>
        </Target>
        <Data><![CDATA[<?xml version="1.0" encoding="utf-8"?>
            <DeclaredConfiguration context="user" schema="1.0" id="DCA000B5-397D-40A1-AABF-40B25078A7F9" osdefinedscenario="MSFTVPN" checksum="A3">
                <CSP name="./Vendor/MSFT/VPNv2">
                    <URI path="Test_SonicWallNew/TrafficFilterList/0/Protocol" type="int">2</URI>
                    <URI path="Test_SonicWallNew/TrafficFilterList/0/Direction" type="chr">outbound</URI>
                    <URI path="Test_SonicWallNew/EdpModeId" type="chr">wip.contoso.com</URI>
                    <URI path="Test_SonicWallNew/RememberCredentials" type="bool">true</URI>
                    <URI path="Test_SonicWallNew/AlwaysOn" type="bool">false</URI>
                    <URI path="Test_SonicWallNew/Proxy/AutoConfigUrl" type="chr">https://auto.proxy.com</URI>
                    <URI path="Test_SonicWallNew/DeviceCompliance/Enabled" type="bool">true</URI>
                    <URI path="Test_SonicWallNew/DeviceCompliance/Sso/Enabled" type="bool">false</URI>
                    <URI path="Test_SonicWallNew/PluginProfile/ServerUrlList" type="chr">23.54.3.8;server1,vpn2.contoso.com;server2</URI>
                    <URI path="Test_SonicWallNew/PluginProfile/PluginPackageFamilyName" type="chr">SonicWALL.MobileConnect_e5kpm93dbe93j</URI>
                </CSP>
            </DeclaredConfiguration>
        ]]></Data>
      </Item>
    </Replace>
    <Final />
  </SyncBody>
</SyncML>
```

### Getting the VPNv2 profile

This example uses `<Get>` to retrieve the results of the Declared configuration request.

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Get>
      <CmdID>1</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Results/DCA000B5-397D-40A1-AABF-40B25078A7F9/Document</LocURI>
        </Target>
      </Item>
    </Get>
    <Final />
  </SyncBody>
</SyncML>
```

**Response**:

```xml
<SyncML xmlns:msft="http://schemas.microsoft.com/MobileDevice/MDM">
  <SyncHdr />
  <SyncBody>
    <Status>
      <CmdID>1</CmdID>
      <MsgRef>1</MsgRef>
      <CmdRef>0</CmdRef>
      <Cmd>SyncHdr</Cmd>
      <Data>200</Data>
    </Status>
    <Status>
      <CmdID>2</CmdID>
      <MsgRef>1</MsgRef>
      <CmdRef>2</CmdRef>
      <Cmd>Get</Cmd>
      <Data>200</Data>
    </Status>
    <Results>
      <CmdID>3</CmdID>
      <MsgRef>1</MsgRef>
      <CmdRef>2</CmdRef>
      <Item>
        <Source>
          <LocURI>./User/Vendor/MSFT/DeclaredConfiguration/Host/BulkTemplate/Results/DCA000B5-397D-40A1-AABF-40B25078A7F9/Document</LocURI>
        </Source>
        <Data>&lt;DeclaredConfigurationResult context="user" schema="1.0" id="DCA000B5-397D-40A1-AABF-40B25078A7F9" osdefinedscenario="MSFTVPN" checksum="A3" result_checksum="9D2ED497C12D2FCEE1C45158D1F7ED8E2DACE210A0B8197A305417882991C978" result_timestamp="2024-08-06T13:54:38Z" operation="Set" state="60"&gt;&lt;CSP name="./Vendor/MSFT/VPNv2" state="60"&gt;&lt;URI path="Test_SonicWallNew/TrafficFilterList/0/Protocol" status="200" state="60" type="int" /&gt;&lt;URI path="Test_SonicWallNew/TrafficFilterList/0/Direction" status="200" state="60" type="chr" /&gt;&lt;URI path="Test_SonicWallNew/EdpModeId" status="200" state="60" type="chr" /&gt;&lt;URI path="Test_SonicWallNew/RememberCredentials" status="200" state="60" type="bool" /&gt;&lt;URI path="Test_SonicWallNew/AlwaysOn" status="200" state="60" type="bool" /&gt;&lt;URI path="Test_SonicWallNew/Proxy/AutoConfigUrl" status="200" state="60" type="chr" /&gt;&lt;URI path="Test_SonicWallNew/DeviceCompliance/Enabled" status="200" state="60" type="bool" /&gt;&lt;URI path="Test_SonicWallNew/DeviceCompliance/Sso/Enabled" status="200" state="60" type="bool" /&gt;&lt;URI path="Test_SonicWallNew/PluginProfile/ServerUrlList" status="200" state="60" type="chr" /&gt;&lt;URI path="Test_SonicWallNew/PluginProfile/PluginPackageFamilyName" status="200" state="60" type="chr" /&gt;&lt;/CSP&gt;&lt;/DeclaredConfigurationResult&gt;</Data>
      </Item>
    </Results>
    <Final />
  </SyncBody>
</SyncML>
```

> [!TIP]
> To understand the state values, see [Declared configuration states](mdm/declaredconfiguration-csp.md#declared-configuration-states).

### Deleting the VPNv2 profile

This example uses `<Delete>` to remove the configuration request to set the VPNv2 profile.

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Delete>
      <CmdID>1</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/DCA000B5-397D-40A1-AABF-40B25078A7F9/Document</LocURI>
        </Target>
      </Item>
    </Delete>
    <Final />
  </SyncBody>
</SyncML>
```


## Resource Ownership

MDM-managed resources, such as a VPN profile, are transferred/migrated to Windows Declared Configuration management when a Declared Configuration document is sent to the device for the same resource. This resource stays under Declared Configuration management until the Windows Declared Configuration document is deleted or abandoned. Otherwise, when MDM tries to manage the same resource via the legacy MDM channel using SyncML, it fails with error 0x86000031.

`MDM ConfigurationManager: Command failure status. Configuraton Source ID: (29c383c5-6e2d-43bf-a741-c63cb7516bb4), Enrollment Type: (MDMDeviceWithAAD), CSP Name: (ActiveSync), Command Type: (Add: from Replace or Add), CSP URI: (./User/Vendor/MSFT/ActiveSync/Accounts/{3b8b9d4d-a24e-4c6d-a460-034d0bfb9316}), Result: (Unknown Win32 Error code: 0x86000031).`

### Abandon Workflow

Abandoning a resource occurs when certain resources are no longer targeted to a user or group. Instead of deleting the resource on the device, the server can choose to abandon the Declared Configuration document. An abandoned resource stays on the device but stops refreshing the Declared Configuration document that handles drift control. Also the resource ownership is transferred back to MDM, which means the same resource can be modified via legacy MDM channel again.

This example abandons a Windows Declared Configuration Document, by setting the **Abandoned** property to **1**.

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>10</CmdID>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/DCA000B5-397D-40A1-AABF-40B25078A7F9/Properties/Abandoned</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
        </Meta>
        <Data>1</Data>
      </Item>
    </Replace>
    <Final />
  </SyncBody>
</SyncML>
```

### Unabandon workflow

Unabandoning the document causes the document to be applied right away, transferring the resource ownership back to Declared Configuration management and blocking legacy MDM channel from managing the channels again.

This example unabandons a Windows Declared Configuration Document, by setting the **Abandoned** property to **0**.

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>10</CmdID>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/DCA000B5-397D-40A1-AABF-40B25078A7F9/Properties/Abandoned</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
        </Meta>
        <Data>0</Data>
      </Item>
    </Replace>
    <Final />
  </SyncBody>
</SyncML>
```

## Bulk template data

The Bulk template data scenario extends beyond the regular [ClientCertificateInstall CSP](mdm/clientcertificateinstall-csp.md). It uses a special bulk template document type. This section covers the structure, specification, and results of using the bulk template data.

### Template document

A PFXImport template document contains the structure necessary for importing certificates in bulk. The document should define the necessary fields, and the format required for the bulk import.

- The document type must be `BulkTemplate`.
- The URI path is different than the regular URIs by using the `@#pfxThumbprint#` syntax, it declares that it's a dynamic node. Instance data for dynamic nodes is sent later by the server. Each dynamic node might contain dynamic subnodes, such as the `@#pfxBlob#` and `#@pfxPassword#` nodes in this example.

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>2</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/BulkTemplate/Documents/47e88660-1861-4131-96e8-f32e85011e55/Document</LocURI>
        </Target>
        <Data><![CDATA[<?xml version="1.0" encoding="utf-8"?>
            <DeclaredConfiguration context="Device" schema="1.0" id="47e88660-1861-4131-96e8-f32e85011e55" osdefinedscenario="MSFTResource" checksum="FF356C2C71F6A41F9AB4A601AD00C8B5BC7531576233010B13A221A9FE1BE7A0">
                <ReflectedProperties>
                    <Property name="foo" type="chr">foovalue</Property>
                    <Property name="bar" type="chr">barvalue</Property>
                </ReflectedProperties>
                <CSP name="./Vendor/MSFT/ClientCertificateInstall">
                    <URI path="PFXCertInstall/@#pfxThumbprint#/KeyLocation" type="Int">2</URI>
                    <URI path="PFXCertInstall/@#pfxThumbprint#/PFXCertBlob" type="chr">@#pfxBlob#</URI>
                    <URI path="PFXCertInstall/@#pfxThumbprint#/PFXCertPassword" type="chr">@#pfxPassword#</URI>
                    <URI path="PFXCertInstall/@#pfxThumbprint#/PFXKeyExportable" type="bool">True</URI>
                    <URI path="PFXCertInstall/@#pfxThumbprint#/PfxCertPasswordEncryptionType" type="int">0</URI>
                    <URI path="PFXCertInstall/@#pfxThumbprint#/PfxCertPasswordEncryptionStore" type="chr">SomeValue</URI>
                    <URI path="PFXCertInstall/@#pfxThumbprint#/ContainerName" type="chr"></URI>
                </CSP>
            </DeclaredConfiguration>
        ]]></Data>
      </Item>
    </Replace>
    <Final />
  </SyncBody>
</SyncML>
```

### Template data

The bulk template data specifies the certificates to be imported in a base64 encoded format using the `BulkVariables` URI under the `BulkTemplate`. The template data document can contain multiple instances. Each instance must specify all the subinstance data.

In this example, there are two instances. Each instance defines values for **pfxThumbprint**, a **pfxBlob, and a **pfxPassword**.

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>3</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/BulkTemplate/Documents/47e88660-1861-4131-96e8-f32e85011e55/BulkVariables/Value</LocURI>
        </Target>
        <Data><![CDATA[
            <InstanceBlob schema="1.0">
                <Instance>
                    <InstanceData variable="pfxThumbprint">813A171D7341E1DA90D4A01878DD5328D3519006</InstanceData>
                    <InstanceData variable="pfxBlob">pfxbase64BlobValue1</InstanceData>
                    <InstanceData variable="pfxPassword">Password1</InstanceData>
                </Instance>
                <Instance>
                    <InstanceData variable="pfxThumbprint">813A171D7341E1DA90D4A01878DD5328D3519007</InstanceData>
                    <InstanceData variable="pfxBlob">pfxbase64BlobValue2</InstanceData>
                    <InstanceData variable="pfxPassword">Password2</InstanceData>
                </Instance>
            </InstanceBlob>
        ]]></Data>
      </Item>
    </Replace>
    <Final />
  </SyncBody>
</SyncML>
```

### Template results

When the bulk template data document is successfully processed, the specified certificates are imported into the defined stores with the provided passwords and key locations.

- Successful Import: The certificates are correctly imported into the device's certificate stores.
- Error Handling: Any errors encountered during the import process should be documented and include relevant status codes or messages for troubleshooting.

**Request**:

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Get>
      <CmdID>2</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/BulkTemplate/Results/47e88660-1861-4131-96e8-f32e85011e55/Document</LocURI>
        </Target>
      </Item>
    </Get>
    <Final />
  </SyncBody>
</SyncML>
```

**Response**:

```xml
<SyncML xmlns:msft="http://schemas.microsoft.com/MobileDevice/MDM">
  <SyncHdr />
  <SyncBody>
    <Status>
      <CmdID>1</CmdID>
      <MsgRef>1</MsgRef>
      <CmdRef>0</CmdRef>
      <Cmd>SyncHdr</Cmd>
      <Data>200</Data>
    </Status>
    <Status>
      <CmdID>2</CmdID>
      <MsgRef>1</MsgRef>
      <CmdRef>2</CmdRef>
      <Cmd>Get</Cmd>
      <Data>200</Data>
    </Status>
    <Results>
      <CmdID>3</CmdID>
      <MsgRef>1</MsgRef>
      <CmdRef>2</CmdRef>
      <Item>
        <Source>
          <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/BulkTemplate/Results/47e88660-1861-4131-96e8-f32e85011e55/Document</LocURI>
        </Source>
        <Data>&lt;DeclaredConfigurationResult context="Device" schema="1.0" id="47e88660-1861-4131-96e8-f32e85011e55" osdefinedscenario="MSFTResource" checksum="FF356C2C71F6A41F9AB4A601AD00C8B5BC7531576233010B13A221A9FE1BE7A0" result_checksum="DD8C1C422D50A410C2949BA5F495C2C42CC4B0C7B498D1B43318C503F6CEF491" result_timestamp="2024-08-06T13:26:23Z" operation="Set" state="60"&gt;
            &lt;CSP name="./Vendor/MSFT/ClientCertificateInstall" state="60"&gt;
                &lt;URI path="PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D3519006/KeyLocation" status="200" state="60" type="int" /&gt;
                &lt;URI path="PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D3519006/PFXCertBlob" status="200" state="60" type="chr" /&gt;
                &lt;URI path="PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D3519006/PFXCertPassword" status="200" state="60" type="chr" /&gt;
                &lt;URI path="PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D3519006/PFXKeyExportable" status="200" state="60" type="bool" /&gt;
            &lt;/CSP&gt;&lt;CSP name="./Vendor/MSFT/ClientCertificateInstall" state="60"&gt;
                &lt;URI path="PFXCertInstall/CertPFX1/KeyLocation" status="200" state="60" type="int" /&gt;
                &lt;URI path="PFXCertInstall/CertPFX1/PFXCertBlob" status="200" state="60" type="chr" /&gt;
                &lt;URI path="PFXCertInstall/CertPFX1/PFXCertPassword" status="200" state="60" type="chr" /&gt;
                &lt;URI path="PFXCertInstall/CertPFX1/PFXKeyExportable" status="200" state="60" type="bool" /&gt;
            &lt;/CSP&gt;
            &lt;/DeclaredConfigurationResult&gt;
        </Data>
      </Item>
    </Results>
    <Final />
  </SyncBody>
</SyncML>
```
