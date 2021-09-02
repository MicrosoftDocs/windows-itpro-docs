---
title: WindowsAdvancedThreatProtection CSP
description: The Windows Defender Advanced Threat Protection (WDATP) CSP allows IT Admins to onboard, determine configuration and health status, and offboard endpoints for WDATP.
ms.assetid: 6C3054CA-9890-4C08-9DB6-FBEEB74699A8
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 11/01/2017
---

# WindowsAdvancedThreatProtection CSP


The Windows Defender Advanced Threat Protection (WDATP) configuration service provider (CSP) allows IT Admins to onboard, determine configuration and health status, and offboard endpoints for WDATP.

The following diagram shows the WDATP configuration service provider in tree format as used by the Open Mobile Alliance (OMA) Device Management (DM).

![windowsadvancedthreatprotection csp diagram.](images/provisioning-csp-watp.png)

The following list describes the characteristics and parameters.

<a href="" id="--device-vendor-msft-windowsadvancedthreatprotection"></a>**./Device/Vendor/MSFT/WindowsAdvancedThreatProtection**  
<p>The root node for the Windows Defender Advanced Threat Protection configuration service provider.

<p>Supported operation is Get.

<a href="" id="onboarding"></a>**Onboarding**  
<p>Sets Windows Defender Advanced Threat Protection Onboarding blob and initiates onboarding to Windows Defender Advanced Threat Protection.

<p>The data type is a string.

<p>Supported operations are Get and Replace.

<a href="" id="healthstate"></a>**HealthState**  
<p>Node that represents the Windows Defender Advanced Threat Protection health state.

<a href="" id="healthstate-lastconnected"></a>**HealthState/LastConnected**  
<p>Contains the timestamp of the last successful connection.

<p>Supported operation is Get.

<a href="" id="healthstate-senseisrunning"></a>**HealthState/SenseIsRunning**  
<p>Boolean value that identifies the Windows Defender Advanced Threat Protection Sense running state.

<p>The default value is false.

<p>Supported operation is Get.

<a href="" id="healthstate-onboardingstate"></a>**HealthState/OnboardingState**  
<p>Represents the onboarding state.

<p>Supported operation is Get.

<p>The following list shows the supported values:

-   0 (default) – Not onboarded.
-   1 – Onboarded

<a href="" id="healthstate-orgid"></a>**HealthState/OrgId**  
<p>String that represents the OrgID.

<p>Supported operation is Get.

<a href="" id="configuration"></a>**Configuration**  
<p>Represents Windows Defender Advanced Threat Protection configuration.

<a href="" id="configuration-samplesharing"></a>**Configuration/SampleSharing**  
<p>Returns or sets the Windows Defender Advanced Threat Protection Sample Sharing configuration parameter.

<p>The following list shows the supported values:

-   0 – None
-   1 (default)– All

<p>Supported operations are Get and Replace.

<a href="" id="configuration-telemetryreportingfrequency"></a>**Configuration/TelemetryReportingFrequency**  
<p>Added in Windows 10, version 1703. Returns or sets the Windows Defender Advanced Threat Protection diagnostic data reporting frequency. 

<p>The following list shows the supported values:

-   1 (default) – Normal
-   2 - Expedite

<p>Supported operations are Get and Replace.

<a href="" id="offboarding"></a>**Offboarding**  
<p>Sets the Windows Defender Advanced Threat Protection Offboarding blob and initiates offboarding to Windows Defender Advanced Threat Protection.

<p>The data type is a string.

<p>Supported operations are Get and Replace.

<a href="" id="devicetagging"></a>**DeviceTagging**  
<p>Added in Windows 10, version 1709. Represents Windows Defender Advanced Threat Protection configuration for managing role based access and device tagging.

<p>Supported operations is Get.

<a href="" id="group"></a>**DeviceTagging/Group**  
<p>Added in Windows 10, version 1709. Device group identifiers.

<p>The data type is a string.

<p>Supported operations are Get and Replace.

<a href="" id="criticality"></a>**DeviceTagging/Criticality**  
<p>Added in Windows 10, version 1709. Asset criticality value. Supported values:  

- 0 - Normal
- 1 - Critical

<p>The data type is an integer.

<p>Supported operations are Get and Replace.

## Examples


```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Get>
      <CmdID>111</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/Onboarding
          </LocURI>
        </Target>
      </Item>
    </Get>
    <Get>
      <CmdID>1</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/HealthState/LastConnected
          </LocURI>
        </Target>
      </Item>
    </Get>
        <Get>
      <CmdID>2</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/HealthState/OnBoardingState
          </LocURI>
        </Target>
      </Item>
    </Get>
            <Get>
      <CmdID>3</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/HealthState/SenseIsRunning
          </LocURI>
        </Target>
      </Item>
    </Get>
            <Get>
      <CmdID>4</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/HealthState/OrgId
          </LocURI>
        </Target>
      </Item>
    </Get>
    <Get>
      <CmdID>5</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/Configuration/SampleSharing
          </LocURI>
        </Target>
      </Item>
    </Get>
    <Get>
      <CmdID>6</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/Configuration/TelemetryReportingFrequency
          </LocURI>
        </Target>
      </Item>
    </Get>
    <Get>
      <CmdID>11</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/DeviceTagging/Group
          </LocURI>
        </Target>
      </Item>
    </Get>
    <Get>
      <CmdID>12</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/DeviceTagging/Criticality
          </LocURI>
        </Target>
      </Item>
    </Get>
    <Get>
      <CmdID>99</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/Offboarding
          </LocURI>
        </Target>
      </Item>
    </Get>
    <Final/> 
  </SyncBody>
</SyncML>
```

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






