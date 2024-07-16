---
title: Declared configuration protocol
description: Learn more about using declared configuration protocol for desired state management of Windows devices.
ms.date: 07/08/2024
ms.topic: overview
---

# What is the declared configuration protocol

The declared configuration protocol is based on a desired state device configuration model, though it still uses the underlying OMA-DM Syncml protocol. Through a dedicated OMA-DM server, it provides all the settings in a single batch through this protocol. The device's declared configuration client stack can reason over the settings to achieve the desired scenario in the most efficient and reliable manner.

The declared configuration protocol requires that a device has a separate [OMA-DM enrollment](mdm-overview.md), which is dependent on the device being enrolled with the primary OMA-DM server. The desired state model is a different model from the current model where the server is responsible for the device's desire state. This dual enrollment is only allowed if the device is already enrolled into a primary MDM server. This other enrollment separates the desired state management functionality from the primary functionality. The declared configuration enrollment's first desired state management model feature is called [extensibility](declared-configuration-extensibility.md).

:::image type="content" source="images/declared-configuration-model.png" alt-text="Diagram illustrating the declared configuration model.":::

With the [Declared Configuration CSP](mdm/declaredconfiguration-csp.md), the OMA-DM server can provide the device with the complete collection of setting names and associated values based on a specified scenario. The declared configuration stack on the device is responsible for handling the configuration request, and maintaining its state including updates to the scenario.

The benefit of the declared configuration desired state model is that it's efficient and accurate, especially since it's the responsibility of the declared configuration client to configure the device. The efficiency of declared configuration is because the client can asynchronously process batches of scenario settings, which free up the server resources to do other work. Thus the declared configuration protocol has low latency. As for configuration quality and accuracy, the declared configuration client stack has detailed knowledge of the configuration surface area of the device. This behavior includes the proper handling of continuous device updates that affect the configuration scenario.

## Declared configuration enrollment

[Mobile Device Enrollment Protocol version 2](/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692) describes enrollment including discovery, which covers the primary and declared configuration enrollments. The device uses the following new [DMClient CSP](mdm/dmclient-csp.md) policies for declared configuration dual enrollment:

- [LinkedEnrollment/Enroll](mdm/dmclient-csp.md#deviceproviderprovideridlinkedenrollmentenroll)
- [LinkedEnrollment/Unenroll](mdm/dmclient-csp.md#deviceproviderprovideridlinkedenrollmentunenroll)
- [LinkedEnrollment/EnrollStatus](mdm/dmclient-csp.md#deviceproviderprovideridlinkedenrollmentenrollstatus)
- [LinkedEnrollment/LastError](mdm/dmclient-csp.md#deviceproviderprovideridlinkedenrollmentlasterror)
- [LinkedEnrollment/DiscoveryEndpoint](mdm/dmclient-csp.md#deviceproviderprovideridlinkedenrollmentdiscoveryendpoint)

The following SyncML example sets **LinkedEnrolment/DiscoveryEndpoint** and triggers **LinkedEnrollment/Enroll**:

```xml
<SyncML xmlns="SYNCML:SYNCML1.1">
    <SyncBody>
        <Replace>
           <CmdID>2</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/DMClient/Provider/MS%20DM%20SERVER/LinkedEnrollment/DiscoveryEndpoint</LocURI>
                </Target>
         <Data>https://discovery.dm.microsoft.com/EnrollmentConfiguration?api-version=1.0</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>

<SyncML xmlns="SYNCML:SYNCML1.1">
    <SyncBody>
        <Exec>
            <CmdID>2</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/DMClient/Provider/MS%20DM%20SERVER/LinkedEnrollment/Enroll</LocURI>
                </Target>
           </Item>
        </Exec>
        <Final/>
    </SyncBody>
</SyncML>
```

## Related content

- [Declared Configuration extensibility](declared-configuration-extensibility.md)
