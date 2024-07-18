---
title: WindowsAdvancedThreatProtection CSP
description: The Windows Defender Advanced Threat Protection (WDATP) CSP allows IT Admins to onboard, determine configuration and health status, and offboard endpoints for WDATP.
ms.date: 11/01/2017
---

# WindowsAdvancedThreatProtection CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

> [!IMPORTANT]
> Windows 11 Home devices that have been upgraded to one of the below mentioned applicable editions might require you to run the following command before onboarding:
> 
> `DISM /online /Add-Capability /CapabilityName:Microsoft.Windows.Sense.Client~~~~`
> 
> For more information about edition upgrades and features, see [Customize Windows features](/windows-hardware/manufacture/desktop/windows-features?view=windows-11&preserve-view=true).

The Windows Defender Advanced Threat Protection (WDATP) configuration service provider (CSP) allows IT Admins to onboard, determine configuration and health status, and offboard endpoints for WDATP.

The following example shows the WDATP configuration service provider in tree format as used by the Open Mobile Alliance (OMA) Device Management (DM).

```console
./Device/Vendor/MSFT
WindowsAdvancedThreatProtection
----Onboarding
----HealthState
--------LastConnected
--------SenseIsRunning
--------OnboardingState
--------OrgId
----Configuration
--------SampleSharing
--------TelemetryReportingFrequency
--------AadDdeviceId
----Offboarding
----DeviceTagging
--------Group
--------Criticality
```

The following list describes the characteristics and parameters.

**./Device/Vendor/MSFT/WindowsAdvancedThreatProtection**
The root node for the Windows Defender Advanced Threat Protection configuration service provider.

Supported operation is Get.

**Onboarding**
Sets Windows Defender Advanced Threat Protection Onboarding blob and initiates onboarding to Windows Defender Advanced Threat Protection.

The data type is a string.

Supported operations are Get and Replace.

**HealthState**
Node that represents the Windows Defender Advanced Threat Protection health state.

**HealthState/LastConnected**
Contains the timestamp of the last successful connection.

Supported operation is Get.

**HealthState/SenseIsRunning**
Boolean value that identifies the Windows Defender Advanced Threat Protection Sense running state.

The default value is false.

Supported operation is Get.

**HealthState/OnboardingState**
Represents the onboarding state.

Supported operation is Get.

The following list shows the supported values:

- 0 (default) – Not onboarded
- 1 – Onboarded

**HealthState/OrgId**
String that represents the OrgID.

Supported operation is Get.

**Configuration**
Represents Windows Defender Advanced Threat Protection configuration.

**Configuration/SampleSharing**
Returns or sets the Windows Defender Advanced Threat Protection Sample Sharing configuration parameter.

The following list shows the supported values:

-   0 – None
-   1 (default)– All

Supported operations are Get and Replace.

**Configuration/TelemetryReportingFrequency**
Added in Windows 10, version 1703. Returns or sets the Windows Defender Advanced Threat Protection diagnostic data reporting frequency.

The following list shows the supported values:

- 1 (default) – Normal
- 2 - Expedite

Supported operations are Get and Replace.

**Configuration/AadDeviceId**
Returns or sets the Intune's reported known AadDeviceId for the machine

Supported operations are Get and Replace.

**Offboarding**
Sets the Windows Defender Advanced Threat Protection Offboarding blob and initiates offboarding to Windows Defender Advanced Threat Protection.

The data type is a string.

Supported operations are Get and Replace.

**DeviceTagging**
Added in Windows 10, version 1709. Represents Windows Defender Advanced Threat Protection configuration for managing role based access and device tagging.

Supported operation is Get.

**DeviceTagging/Group**
Added in Windows 10, version 1709. Device group identifiers.

The data type is a string.

Supported operations are Get and Replace.

**DeviceTagging/Criticality**
Added in Windows 10, version 1709. Asset criticality value. Supported values:

- 0 - Normal
- 1 - Critical

The data type is an integer.

Supported operations are Get and Replace.

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
      <CmdID>7</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/Configuration/AadDeviceId
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

[Configuration service provider reference](index.yml)
