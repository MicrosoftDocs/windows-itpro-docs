---
title: Declared configuration protocol
description: Learn more about using declared configuration protocol for desired state management of Windows devices.
ms.date: 08/12/2024
ms.topic: overview
---

# What is the declared configuration protocol

The declared configuration protocol is based on a desired state device configuration model, though it still uses the underlying OMA-DM Syncml protocol. Through a dedicated OMA-DM server, it provides all the settings in a single batch through this protocol. The device's declared configuration client stack can reason over the settings to achieve the desired scenario in the most efficient and reliable manner.

The declared configuration protocol requires that a device has a separate [OMA-DM enrollment](mdm-overview.md), which is dependent on the device being enrolled with the primary OMA-DM server. The desired state model is a different model from the current model where the server is responsible for the device's desire state. This dual enrollment is only allowed if the device is already enrolled into a primary MDM server. This other enrollment separates the desired state management functionality from the primary functionality.

- [Declared configuration discovery](declared-configuration-discovery.md)
- [Declared configuration enrollment](declared-configuration-enrollment.md)

The declared configuration enrollment's offers following desired state management features

- [Resource access](declared-configuration-resource-access.md)
- [Extensibility](declared-configuration-extensibility.md).

:::image type="content" source="images/declared-configuration-model.png" alt-text="Diagram illustrating the declared configuration model.":::

With the [Declared Configuration CSP](mdm/declaredconfiguration-csp.md), the OMA-DM server can provide the device with the complete collection of setting names and associated values based on a specified scenario. The declared configuration stack on the device is responsible for handling the configuration request, and maintaining its state including updates to the scenario.

The benefit of the declared configuration desired state model is that it's efficient and accurate, especially since it's the responsibility of the declared configuration client to configure the device. The efficiency of declared configuration is because the client can asynchronously process batches of scenario settings, which free up the server resources to do other work. Thus the declared configuration protocol has low latency. As for configuration quality and accuracy, the declared configuration client stack has detailed knowledge of the configuration surface area of the device. This behavior includes the proper handling of continuous device updates that affect the configuration scenario.

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

## Related content

- [Declared Configuration extensibility](declared-configuration-extensibility.md)
