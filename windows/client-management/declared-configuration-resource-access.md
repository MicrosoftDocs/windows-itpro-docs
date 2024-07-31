---
title: Resource access overview
description: Learn more about configuring resource access using Declared Configuration
ms.date: 07/29/2024
ms.topic: overview
---

# Resource access

Resource Access is used to manage device configurations and enforce policies to ensure the devices remain in a desired state. It's crucial for maintaining security, compliance, and operational efficiency in organizations. Declared Configuration cloud service is used to send the desired state of a resource to the device where correspondingly the device has the responsibility to enforce and maintain the resource configuration state.

Configuration Service Providers (CSPs) play a vital role for configuring Resource access by acting as an interface between the device and the Declared Configuration protocol. They provide a consistent and standardized approach to deploying and enforcing configurations. CSPs support various resource access scenarios, including:

- [VPNv2 CSP](mdm/vpnv2-csp.md) and [VPN CSP](mdm/vpn-csp.md): The VPNv2 CSP allows the Mobile Device Management (MDM) server to configure the VPN profile of the device. VPN profiles are crucial for secure remote access, enabling devices to access corporate resources safely over public networks. Organizations can enforce secure VPN connections to ensure resource access adheres to security and compliance standards, while protecting data traffic and user privacy.

- [Wi-Fi CSP](mdm/wifi-csp.md): The Wi-Fi CSP provides the functionality to add or delete Wi-Fi networks on a Windows device. Efficient Wi-Fi connectivity is essential for devices to access resources quickly and securely. By managing Wi-Fi networks and ensuring they're configured according to security standards, the Wi-Fi CSP supports stable and secure resource access for devices connected to corporate networks.

- [ClientCertificateInstall CSP](mdm/clientcertificateinstall-csp.md): The ClientCertificateInstall CSP handles personal certificate configurations and manages the import of certificates for secure communication and authentication. Properly provisioning and managing certificates are essential for secure resource access. Certificates provide identity verification and encrypted communication, ensuring authorized users can access resources securely.

- [ActiveSync CSP](mdm/activesync-csp.md)

- [WiredNetwork CSP](mdm/wirednetwork-csp.md)

- [RootCACertificates CSP](mdm/rootcacertificates-csp.md)

## Handling Configuration Requests

The [Declared Configuration](declared-configuration.md) stack on the device processes configuration requests and maintains the desired state, which is key to Resource access. The efficiency and accuracy of handling configuration requests are critical for effective Resource access.

- **Efficiency**: Batch-based processing minimizes server resource usage and reduces latency.
- **Accuracy**: Declared Configuration client stack understands the device's configuration surface area, enabling effective handling of continuous updates. This ensures precise execution of configuration changes communicated by the cloud service.

[Declared Configuration](declared-configuration.md) enhances Resource access by offering cloud-based device management capabilities, allowing for remote configuration, monitoring, and policy enforcement. Resource access integrates seamlessly with Declared Configuration, providing an extended method for managing devices through the cloud with enhanced scalability and efficiency.

- **Remote Configuration**: Administrators can manage device configurations remotely using Declared Configuration's cloud capabilities, providing flexibility in maintaining devices from anywhere. This allows administrators to make changes and updates to devices efficiently.
- **Monitoring**: Observe device performance and health from a centralized cloud platform, ensuring devices operate smoothly and efficiently. Monitoring can detect and address any issues with device resource configurations.
- **Policy Enforcement**: Apply and maintain organizational policies across devices consistently and at scale, ensuring compliance and uniform configuration. This aspect allows organizations to maintain the desired security posture across devices.

## Resource Access Guidelines

These guidelines provide best practices and examples for developers and testers to implement resource access (RA) configurations in a secure, efficient, and consistent manner. They aim to enhance network security and optimize resource access for end users while adhering to policies and compliance requirements.

- **Configuration Integrity**: To support uninterrupted and secure resource access, ensure consistent configurations across devices and users.
- **State Validation**: Monitor the state of configurations to verify the correct application of resource access settings.
- **Profile Management**: Effectively manage user profiles by adding, updating, and deleting as needed, to control access to resources and maintain security.
- **Log and Audit**: Utilize logs and audit trails for operations and changes to aid in troubleshooting and compliance.
- **Drift Detection and Remediation**: To maintain compliance with RA policies, continuously monitor drift (changes in configuration or behavior) and take corrective action.
- **Security and Privacy**: To protect user data and resources, implement strong security and privacy measures in configurations.

By following these guidelines and understanding the syntax of the [DeclaredConfiguration CSP](mdm/declaredconfiguration-csp.md), you can effectively implement and manage RA configurations while maintaining security and compliance.

## Resource Access Configuration with Examples

Resource access configuration utilizes the [DeclaredConfiguration CSP](mdm/declaredconfiguration-csp.md). A declared configuration request for configuring resource access is sent using an OMA-URI similar to `./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/{DocID}/Document`.

- The URI is prefixed with a targeted scope. The `<LocURI>` and the DeclaredConfiguration Context need to match. For example, when `LocURI` starts with **Device**, Context should be **Device** as well. When `LocURI` doesn't start with **Device**, Context should be **User**.
- `{DocID}` is a unique identifier for the desired state of the configuration scenario. Every document must have an **ID**, which must be a GUID.
- The request must be a **Complete** request.

:::image type="content" source="images/declared-configuration-ra-syntax.png" alt-text="Declared Configuration resource access syntax":::

Only supported osdefinedscenarios can be used. Unsupported values result in a failure.

- msftpolicies
- msftfirewall
- msftdefender
- msftnetworkproxy
- msftnetworkqospolicy
- msftpassportforwork
- msftwirednetwork
- msftdefaultproperties
- msftextensibilitymiproviderconfig
- msftadmxconfig
- msftresource
- msftvpn
- msftwifi
- msfttransaction
- msftinventory
- msftcertinventory
- msftsecuredcorestateinventory
- msftextensibilitymiproviderinventory
- msftonetime
- msftadmxinstall
- msftrootcatrustedcertificates
- msftcertificatestore
- msftscep
- msftclientcertificateinstall
- msftenterprisemodernappmanagementstoreinstall
- msftenterprisemodernappmanagementhostedinstall
- msftextensibilitymiproviderInstall
- msftadmxinstall

### Adding a VPNv2 Profile for Resource Access

This example uses the [VPNv2 CSP](mdm/vpnv2-csp.md) to enable the **Always On** mode for a VPN Profile on the device.

```xml
<SyncML xmlns='SYNCML:SYNCML1.2'>
  <SyncBody>
    <Add>
      <CmdID>2</CmdID>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/DCA000B5-397D-40A1-AABF-40B25078A7F9/Document</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>
          <![CDATA[
          <?xml version="1.0" encoding="utf-8" ?>
          <DeclaredConfiguration context="Device" schema="1.0" id="DCA000B5-397D-40A1-AABF-40B25078A7F9" osdefinedscenariio="MSFTVPN" checksum="A0">
            <CSP name="./Vendor/MSFT/VPNv2">
            <URI path="SomeProfileName/AlwaysOn" type="true">2</URI>
          </DeclaredConfiguration>
          ]]>
        </Data>
      </Item>
    </Add>
    <Final />
  </SyncBody>
</SyncML>
```

> [!NOTE]
>
> - Format of the `<LocURI>` and `<DeclaredConfiguration>` follow the [Declared Configuration CSP](mdm/declaredconfiguration-csp.md) syntax.
> - The `id` of `<DeclaredConfiguration>` should be a unique string.
> - `<Format>` of `<Meta>` should be `chr` and `<Type>` should be `text/plain`.

### Updating a VPNv2 Profile for Resource Access

This example is the same as previous example, except that it uses `<Replace>` instead of `<Add>`.

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>1</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>
            ./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/DCA000B5-397D-40A1-AABF-40B25078A7F9/Document
          </LocURI>
        </Target>
        <Data><![CDATA[<?xml version="1.0" encoding="utf-8"?>
      <DeclaredConfiguration context="Device" schema="1.0" id="DCA000B5-397D-40A1-AABF-40B25078A7F9" osdefinedscenario="MSFTVPN" checksum="A0">
       <CSP name="./Vendor/MSFT/VPNv2">
        <URI path="SomeProfileNameDummy/AlwaysOn" type="false">2</URI>
      </DeclaredConfiguration>
     ]]></Data>
      </Item>
    </Replace>
    <Final />
  </SyncBody>
</SyncML>
```

### Getting the VPNv2 Profile

This example uses `<Get>` to retrieve the results of the Declared configuration request to verify the **Always On** mode of the VPNv2 profile.

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
          <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Results/DCA000B5-397D-40A1-AABF-40B25078A7F9/Document</LocURI>
        </Target>
      </Item>
    </Get>
    <Final />
  </SyncBody>
</SyncML>
```

### Deleting a VPNv2 Profile

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
          <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/DCA000B5-397D-40A1-AABF-40B25078A7F9/Document</LocURI>
        </Target>
      </Item>
    </Delete>
    <Final />
  </SyncBody>
</SyncML>
```
