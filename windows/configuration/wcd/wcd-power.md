---
title: Power (Windows 10)
description: This section describes the Power settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
localizationpriority: medium
ms.author: jdecker
ms.date: 08/21/2017
---

# Power (Windows Configuration Designer reference)

Use to configure settings for Power.

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings | X |  X  | X | X | X |


## Controls

Setting | Description
--- | ---
AllowSystemRequiredPowerRequests |
BootLowLatencyDuration |
DefaultOverlayAcPowerScheme |
DefaultOverlayDcPowerScheme |
DefaultOverlayPowerScheme |
DimTimeoutIsManuallySpecified |
EnergyEstimationEnabled |
EnforceConsoleLockScreenTimeout |
EnforceDisconnectedStandby |
HiberFiletype |
IgnoreCsComplianceCheck |
LidNotificationsAreReliable |
SmartUserPresenceConfidence |

## EnergyEstimationEngine

Setting | Description
--- | ---
CPU |
EfficiencyClass | Select **0** or **1** and click **Add**. For the added EfficientyClassId > **PowerParameters** > **PowerEnvelope**, configure the power in milli-watts for CPU at 100% usage and 100% frequency. Minimum value is 100, and maximum vallue is 64000.
Display |
DisplayBacklightPowerFloor | Configure the backlight power floor in milli-watts. Minimum value is 24, and maximum value is 250.
DisplayBacklightPowerGradient |
DisplayBacklightPowerQDenominator |
DisplayBacklightPowerQNumerator |
DisplayPanelPowerAreaFactor |
DisplayPanelPowerDpiFactor |
DisplayPanelPowerFloor |
DisplayPanelPowerVsyncDelta |
EnergyEstimationTelemetry |
BatteryDrainMaxE3UploadRank |
BatteryDrainMinE3UploadBI |
BatteryDrainMinRate |
LongtermTimerInMinutes |
UploadAcRecords |
MobileBroadband |
MBBClass |
StandbyActivationEnergy |
DripsPowerFloorMilliWatts |
NonDripsPenaltyMilliWatts |
Storage |
StorageType |
Wifi |
WifiClass |


## Policy


### Definitions: Processor

1. For both **HeteroDecreaseThreshold** and **HeteroIncreaseThreshold**, enter an Id in the **List** field, and click **Add**.
2. In the **Available Customizations** pane, select the Id that you added, and configure the value as follows.

**HeteroDecreaseThreshold** specifies a threshold to cross below, which is required to park the Nth efficiency class 1 core. There is a separate value for each core index. The threshold is relative to efficiency class 0 performance. The provisioning interface can specify up to 4 different thresholds. If the system has 5 or more class 1 cores, the 4th value is used for all remaining cores of the same class.

HeteroDecreaseThreshold is a four-byte unsigned integer where each byte represents a threshold in percentage. The lowest byte is the first threshold. For example, to set four thresholds—A, B, C, and D—the value of the parameter will be A + B*256 + C*65536 + D*16777216.

Minimum value: `0 + 0*256 + 0*65536 + 0*16777216` 
Maximum value: `100 + 100*256 + 100*65536 + 100*16777216`

**HeteroIncreaseThreshold** specifies the threshold value to cross above, which is required to unpark the Nth efficiency class 1 core. There is a separate value for each core index. The threshold is relative to efficiency class 0 performance. The provisioning interface can specify up to 4 different thresholds. If the system has 5 or more class 1 cores, the 4th value is used for all remaining cores of the same class.

HeteroIncreaseThreshold is a four-byte unsigned integer where each byte represents a threshold in percentage. The lowest byte is the first threshold. For example, to set four thresholds—A, B, C, and D—the value of the parameter will be A + B*256 + C*65536 + D*16777216.

Minimum value: `0 + 0*256 + 0*65536 + 0*16777216` 
Maximum value: `100 + 100*256 + 100*65536 + 100*16777216` 
 
### Settings
 
1. For each setting, select between **Balanced**, **HgihPerformance**, and **PowerSaver** for the **SchemePersonality**, and then click **Add**. 
2. In the **Available Customizations** pane, select the **SchemePersonality** that you added, and configure the value as follows.

 
Settings for AdaptivePowerBehavior | Description
--- | ---
StandbyBudgetGracePeriod |
AcValue |
DcValue |
StandbyBudgetPercent |

Settings for Battery | Description
--- | ---

Settings for Button | Description
--- | ---

Settings for Disk | Description
--- | ---

Settings for Display | Description
--- | ---

Settings for EnergySaver | Description
--- | ---

Settings for IdleResiliency | Description
--- | ---

Settings for Misc | Description
--- | ---

Settings for Multimedia | Description
--- | ---

Settings for PCIExpress | Description
--- | ---

Settings for Processor | Description
--- | ---

Settings for Sleep | Description
--- | ---