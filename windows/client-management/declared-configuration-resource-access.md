---
title: Windows declared configuration resource access
description: Learn more about configuring resource access using Windows declared Configuration.
ms.date: 09/12/2024
ms.topic: how-to
---

# Declared configuration resource access

Windows declared configuration (WinDC) resource access is used to manage device configurations and enforce policies to ensure the devices remain in a desired state. It's crucial for maintaining security, compliance, and operational efficiency in organizations. WinDC cloud service is used to send the desired state of a resource to the device where correspondingly the device has the responsibility to enforce and maintain the resource configuration state.

[Configuration Service Providers (CSPs)](mdm/index.yml) play a vital role for configuring Resource access and act as an interface between the device and the WinDC protocol. They provide a consistent and standardized approach to deploying and enforcing configurations. CSPs support various resource access scenarios, including:

- [VPNv2 CSP](mdm/vpnv2-csp.md) and [VPN CSP](mdm/vpn-csp.md)
- [Wi-Fi CSP](mdm/wifi-csp.md)
- [ClientCertificateInstall CSP](mdm/clientcertificateinstall-csp.md)
- [ActiveSync CSP](mdm/activesync-csp.md)
- [WiredNetwork CSP](mdm/wirednetwork-csp.md)
- [RootCACertificates CSP](mdm/rootcacertificates-csp.md)

The WinDC stack on the device processes configuration requests and maintains the desired state, which is key to RA. The efficiency, accuracy, and enforcement of configuration requests are critical for effective RA. Resource access integrates seamlessly with WinDC, providing an extended method for managing devices through the cloud with enhanced scalability and efficiency.

- **Efficiency**: Batch-based processing minimizes server resource usage and reduces latency.
- **Accuracy**: WinDC client stack understands the device's configuration surface area, enabling effective handling of continuous updates. It ensures precise execution of configuration changes communicated by the cloud service.
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

## WinDC document

The value of the `Document` leaf node in the [DeclaredConfiguration CSP](mdm/declaredconfiguration-csp.md) is an XML document that describes the request. Here's a sample WinDC document with the configuration data specified for resource access.

```xml
<DeclaredConfiguration context="user" schema="1.0" id="DCA000B5-397D-40A1-AABF-40B25078A7F9" osdefinedscenario="MSFTVPN" checksum="A0">
  <CSP name="./Vendor/MSFT/VPNv2">
    <URI path="Test_SonicWall/TrafficFilterList/0/Protocol" type="int">2</URI>
    <URI path="Test_SonicWall/TrafficFilterList/0/Direction" type="chr">outbound</URI>
  </CSP>
</DeclaredConfiguration>
```

Only supported values for `osdefinedscenario` can be used. Unsupported values result in an error message similar to `Invalid scenario name`.

| osdefinedscenario            | Recommended using with        |
|------------------------------|-------------------------------|
| MSFTWiredNetwork             | WiredNetwork                  |
| MSFTResource                 | ActiveSync                    |
| MSFTVPN                      | VPN and VPNv2                 |
| MSFTWifi                     | Wifi                          |
| MSFTInventory                | Certificate inventory         |
| MSFTClientCertificateInstall | SCEP, PFX, Bulk Template Data |

These `osdefinedscenario` values require the following tags and attributes.

- The `<CSP>` XML tag describes the CSP being targeted.

    This tag has the following attributes:

    | Attribute | Description |
    |--|--|
    | `name` | Specifies the targeted CSP OMA-URI. |

- The `<URI>` XML tag specifies the CSP setting node along with the desired value.

    This tag has the following attributes:

    | Attribute | Description       |
    |-----------|-------------------|
    | `path`    | Setting path      |
    | `type`    | Setting data type |

> [!NOTE]
> The target of the scenario settings must match the WinDC context. The CSP **scope** defined in `<LocURI>` and WinDC **context** must both be either `Device` or `User`.
>
> :::image type="content" source="images/declared-configuration-ra-syntax.png" alt-text="WinDC resource access syntax":::

### osdefinedscenario examples

- Partial `MSFTWifi` example for Wifi:

    ```xml
    <DeclaredConfiguration context="Device" schema="1.0" id="10249228-e719-58bf-b459-060de45240f1" osdefinedscenario="MSFTWifi" checksum="11111111">
    <CSP name="./Vendor/MSFT/WiFi">
    ```

- Partial `MSFTResource` example for ActiveSync:

    ```xml
    <DeclaredConfiguration context="User" schema="1.0" id="33333333-1861-4131-96e8-44444444" osdefinedscenario="MSFTResource" checksum="5555">
    <CSP name="./Vendor/MSFT/ActiveSync">
    ```

## SyncML examples

The standard OMA-DM SyncML syntax is used to specify the DeclaredConfiguration CSP operations such as **Replace**, **Add**, and **Delete**. The payload of the SyncML's `<Data>` element must be XML-encoded. For this XML encoding, there are various online encoders that you can use. To avoid encoding the payload, you can use [CDATA Section](https://www.w3.org/TR/REC-xml/#sec-cdata-sect) as shown in the following SyncML examples.

### Configure a VPNv2 profile for resource access

This example demonstrates how to use the [VPNv2 CSP](mdm/vpnv2-csp.md) to configure a VPN profile named **Test_SonicWall** on the device in the **User** scope.

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

<!--
> [!NOTE]
>
> - Format of the `<LocURI>` and `<DeclaredConfiguration>` follow the [DeclaredConfiguration CSP](mdm/declaredconfiguration-csp.md) syntax.
> - The `id` of `<DeclaredConfiguration>` should be a unique string.
> - `<Format>` of `<Meta>` should be `chr` and `<Type>` should be `text/plain`.
-->

### Updating a VPNv2 profile for resource access

This example demonstrates how to use the same WinDC **Document ID**, but with a new checksum("A3"). It installs a new VPNv2 profile named `Test_SonicwallNew`, and deletes the old profile.

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

This example demonstrates how to use `<Get>` to retrieve the results of the WinDC request.

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
> To understand the state values, see [WinDC states](mdm/declaredconfiguration-csp.md#windc-states).

### Deleting the VPNv2 profile

This example demonstrates how to use `<Delete>` to remove the configuration request to set the VPNv2 profile.

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

## Resource ownership

MDM-managed resources, such as a VPN profile, are transferred/migrated to WinDC management when a WinDC document is sent to the device for the same resource. This resource stays under WinDC management until the WinDC document is [deleted](mdm/declaredconfiguration-csp.md#delete-a-windc-document) or [abandoned](mdm/declaredconfiguration-csp.md#abandon-a-windc-document). Otherwise, when MDM tries to manage the same resource via the legacy MDM channel using SyncML, it fails with error 0x86000031.

`MDM ConfigurationManager: Command failure status. Configuraton Source ID: (29c383c5-6e2d-43bf-a741-c63cb7516bb4), Enrollment Type: (MDMDeviceWithAAD), CSP Name: (ActiveSync), Command Type: (Add: from Replace or Add), CSP URI: (./User/Vendor/MSFT/ActiveSync/Accounts/{3b8b9d4d-a24e-4c6d-a460-034d0bfb9316}), Result: (Unknown Win32 Error code: 0x86000031).`

## Bulk template data

The Bulk template data scenario extends beyond the regular [ClientCertificateInstall CSP](mdm/clientcertificateinstall-csp.md). It uses a special bulk template document type. This section covers the structure, specification, and results of using the bulk template data.

### Template document

A PFXImport template document contains the structure necessary for importing certificates in bulk. The document should define the necessary fields, and the format required for the bulk import.

- The document type must be `BulkTemplate`.
- The URI path is different than the regular URIs by using the `@#pfxThumbprint#` syntax, it declares that it's a dynamic node. [Instance data](#template-data) for dynamic nodes is sent later using `BulkVariables`. Each dynamic node might contain dynamic subnodes, such as the `@#pfxBlob#` and `#@pfxPassword#` nodes in this example.

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
- Error Handling: Any errors encountered during the import process include relevant status codes or messages for troubleshooting.

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
