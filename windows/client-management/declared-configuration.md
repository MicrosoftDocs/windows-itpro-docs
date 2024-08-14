---
title: Declared configuration protocol
description: Learn more about using declared configuration protocol for desired state management of Windows devices.
ms.date: 08/14/2024
ms.topic: overview
---

# What is the declared configuration protocol

The declared configuration protocol is a desired state device configuration model designed for efficient and reliable management of Windows devices. It leverages the OMA-DM SyncML protocol to provide all necessary settings in a single batch through a dedicated OMA-DM server. The device's declared configuration client stack processes these settings to achieve the desired state in the most efficient and reliable manner.

The declared configuration protocol requires that a device has a separate [OMA-DM enrollment](mdm-overview.md), which is dependent on the device being enrolled with the primary OMA-DM server. The desired state model is a different model from the current model where the server is responsible for the device's desire state. This dual enrollment is only allowed if the device is already enrolled into a primary MDM server. This other enrollment separates the desired state management functionality from the primary functionality.

- [Declared configuration discovery](declared-configuration-discovery.md): The initial discovery phase of the Declared Configuration Protocol uses a dedicated JSON schema to query enrollment details from the [discovery service endpoint (DS)](openspecs/windows_protocols/ms-mde2/60deaa44-52df-4a47-a844-f5b42037f7d3#gt_8d76dac8-122a-452b-8c97-b25af916f19b). This phase involves sending HTTP requests with specific headers and a JSON body containing details such as user domain, tenant ID, and OS version. The DS responds with the necessary enrollment service URLs and authentication policies based on the enrollment type (Microsoft Entra joined or registered devices).
- [Declared configuration enrollment](declared-configuration-enrollment.md): The enrollment phase follows the [MS-MDE2 protocol](openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692) and uses new [DMClient CSP](mdm/dmclient-csp.md) policies for dual enrollment. This phase involves setting the `LinkedEnrollment/DiscoveryEndpoint` and triggering the `LinkedEnrollment/Enroll` using SyncML commands. The device can then manage its configuration state by interacting with the OMA-DM server through these policies.

The declared configuration enrollment offers following desired state management features:

- [Resource access](declared-configuration-resource-access.md): Provides access to necessary resources for configuration.
- [Extensibility](declared-configuration-extensibility.md): Allows for extending the configuration capabilities as needed.

:::image type="content" source="images/declared-configuration-model.png" alt-text="Diagram illustrating the declared configuration model.":::

Once a device is enrolled, with the [Declared Configuration CSP](mdm/declaredconfiguration-csp.md), the OMA-DM server can provide the device with the complete collection of setting names and associated values based on a specified scenario. The declared configuration stack on the device is responsible for handling the configuration request, and maintaining its state including updates to the scenario.

The benefit of the declared configuration desired state model is that it's efficient and accurate, especially since it's the responsibility of the declared configuration client to configure the device. The efficiency of declared configuration is because the client can asynchronously process batches of scenario settings, which free up the server resources to do other work. Thus the declared configuration protocol has low latency. As for configuration quality and accuracy, the declared configuration client stack has detailed knowledge of the configuration surface area of the device. This behavior includes the proper handling of continuous device updates that affect the configuration scenario.

## Supported platforms

Declared Configuration enrollment for [Microsoft Entra joined devices](/entra/identity/devices/concept-directory-join) is supported for all versions of Windows 10/11.

Declared Configuration enrollment for [Microsoft Entra registered devices](/entra/identity/devices/concept-device-registration) is supported for Windows 10/11 with the following updates:

- Windows 11, version 24H2 with [KB5040529](https://support.microsoft.com/help/5040529) (OS Build 26100.1301)
- Windows 11, version 23H2 with [KB5040527](https://support.microsoft.com/help/5040527) (OS Build 22631.3958)
- Windows 11, version 22H2 with [KB5040527](https://support.microsoft.com/help/5040527) (OS Build 22621.3958)
- Windows 10, version 22H2 with [KB5040525](https://support.microsoft.com/help/5040525) (OS Build 19045.4717)

## Declared configuration refresh interval

The Declared Configuration refresh schedule is created whenever there's a Declared Configuration doc present on the device and there's currently no schedule task for refresh. The task runs every 4 hours by default and can be configured. Each time the Declared Configuration refresh task runs, it checks for all drifts from desired state by comparing the current system configuration versus the server intention in the Declared Configuration docs. If there are any drifts, Declared Configuration engine tries to reapply the Declared Configuration docs to fix it. In case where a Declared Configuration doc can't be reapplied due to instance data missing, the Declared Configuration doc is marked in drifted state and a new sync session is triggered to notify there's a drift.

To identify, adjust or remove the refresh schedule, use the **RefreshInterval** URI:

- Identify current schedule:

    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <SyncML xmlns="SYNCML:SYNCML1.1">
      <SyncBody>
        <Get>
          <CmdID>2</CmdID>
          <Item>
            <Target>
              <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/ManagementServiceConfiguration/RefreshInterval</LocURI>
            </Target>
          </Item>
        </Get>
        <Final />
      </SyncBody>
    </SyncML>
    ```

- Adjust current schedule:

    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <SyncML xmlns="SYNCML:SYNCML1.1">
      <SyncBody>
        <Replace>
          <CmdID>2</CmdID>
          <Item>
            <Meta>
              <Format>int</Format>
              <Type>text/plain</Type>
            </Meta>
            <Target>
              <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/ManagementServiceConfiguration/RefreshInterval</LocURI>
            </Target>
            <Data>30</Data>
          </Item>
        </Replace>
        <Final />
      </SyncBody>
    </SyncML>
    ```

- Delete the current schedule and use system default:

    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <SyncML xmlns="SYNCML:SYNCML1.1">
      <SyncBody>
        <Delete>
          <CmdID>2</CmdID>
          <Item>
            <Target>
              <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/ManagementServiceConfiguration/RefreshInterval</LocURI>
            </Target>
          </Item>
        </Delete>
        <Final />
      </SyncBody>
    </SyncML>
    ```
