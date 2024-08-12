---
title: Declared configuration enrollment
description: Learn more about configuring enrollment for declared configuration protocol.
ms.date: 08/12/2024
ms.topic: how-to
---

# Declared configuration enrollment

The device uses new [DMClient CSP](mdm/dmclient-csp.md) policies for declared configuration dual enrollment:

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