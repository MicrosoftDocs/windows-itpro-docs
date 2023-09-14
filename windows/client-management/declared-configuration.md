---
title: Declared Configuration protocol
description: Learn more about using Declared Configuration protocol for desired state management of Windows devices.
ms.date: 09/11/2023
ms.topic: overview
---

# What is Declared Configuration protocol

The Declared Configuration protocol is based on a desired state device configuration model though it still utilizes the underlying OMA-DM and Syncml protocol. Through a dedicated OMA-DM server, it provides all the settings in a single batch through this new protocol. The device's Declared Configuration client stack can reason over the settings to achieve the desired scenario in the most efficient and reliable manner.

The Declared Configuration protocol requires that a device has a separate [OMA-DM enrollment](mdm-overview.md), which is dependent on the device being enrolled with the primary OMA-DM server. The desired state model is a different model from the current model where the Server is responsible for the device's desire state. This dual enrollment is only allowed if the device is already enrolled into a primary MDM Server. The new enrollment separates the desired state management functionality from the primary functionality. The Declared Configuration enrollment's first desired state management model feature is called [Extensibility](declared-configuration-extensibility.md).

:::image type="content" source="images/declared-configuration-model.png" alt-text="Diagram illustrating the Declared configuration model.":::

With the new [Declared Configuration CSP](mdm/declaredconfiguration-csp.md), the OMA-DM server can provide the device with the complete collection of setting names and associated values based on a specified scenario. The Declared Configuration stack on the device is responsible for handling the configuration request, and maintaining its state including updates to the scenario.

The benefit of the Declared Configuration desired state model is that it's efficient and accurate, especially since it's the responsibility of the Declared Configuration client to configure the device. The efficiency of Declared Configuration is in the fact that the batches of scenario settings are processed by the client asynchronously, freeing up the server resources to do other work. Thus, the Declared Configuration protocol has low latency. As for configuration quality and accuracy, the Declared Configuration client stack has intimate knowledge of the configuration surface area of the device including the proper handling of continuous device updates affecting the configuration scenario.

## Declared Configuration enrollment

[Mobile Device Enrollment Protocol Version 2](/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692) describes enrollment including discovery, which covers the primary and Declared Configuration enrollments. The Declared Configuration dual enrollment is performed by new DMClient CSP nodes, which are listed here:

- [LinkedEnrollment/Priority](mdm/dmclient-csp.md#deviceproviderprovideridlinkedenrollmentpriority)
- [LinkedEnrollment/Enroll](mdm/dmclient-csp.md#deviceproviderprovideridlinkedenrollmentenroll)
- [LinkedEnrollment/Unenroll](mdm/dmclient-csp.md#deviceproviderprovideridlinkedenrollmentunenroll)
- [LinkedEnrollment/EnrollStatus](mdm/dmclient-csp.md#deviceproviderprovideridlinkedenrollmentenrollstatus)
- [LinkedEnrollment/LastError](mdm/dmclient-csp.md#deviceproviderprovideridlinkedenrollmentlasterror)
- [LinkedEnrollment/DiscoveryEndpoint](mdm/dmclient-csp.md#deviceproviderprovideridlinkedenrollmentdiscoveryendpoint)

Here's a SyncML example for setting **LinkedEnrolment/DiscoveryEndpoint** and triggering **LinkedEnrollment/Enroll**:

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
