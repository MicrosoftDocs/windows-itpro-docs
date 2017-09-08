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
 
1. For each setting, select a power scheme for **SchemePersonality**, and then click **Add**. 
2. In the **Available Customizations** pane, select the **SchemePersonality** that you added, and configure the value as follows.
3. Repeate for each power scheme that you want to configure.

>[!NOTE]
>Each setting can be configured for **AcValue** (plugged in) and **DcValue** (on battery).

 
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

Settings for Processor</br>Some parameters have suffix "1" to indicate efficiency class</br>[Learn more about processor power management options](https://msdn.microsoft.com/library/windows/hardware/mt422910.aspx) | Description
--- | ---
CPConcurrency |
CPDecreasePolicy |
CPDecreaseTime |
CPDistribution |
DPHeadroom |
CPIncreasePolicy |
CPIncreaseTime |
CpLatencyHintUnpark |
CpLatencyHintUnpark1 |
CPMaxCores |
CPMinCores |
CPOverUtilizationThreshold |
CPPerfState |
CPPerfState1 |
DutyCycling |
HeteroClass0FloorPerf |
HeteroClass1InitialPerf |
HeteroDecreaseThreshold |
HeteroDecreaseTime |
HeteroIncreaseThreshold |
HeteroIncreaseTime |
HeteroPolicy |
IdleDemoteThreshold |
IdleDisable |
IdlePromoteThreshold |
IdleScaling |
IdleStateMax |
IdleTimeCheck |
MaxFrequency |
MaxPerformance |
MinPerformance |
PerfAllowThrottling |
PerfAutonomousMode |
PerfAutonomousWindows |
PerfBoostMode |
PerfBoostPolicy |
PerfDecreasePolicy |
PerfDecreaseThreshold |
PerfDecreaseThreshold1 |
PerfDecreaseTime |
PerfDistributeUtility |
PerfEnergyPereference |
PerfEnergyPreference |
PerfHistory |
PerfIncreasePolicy |
PerfIncreaseThreshold |
PerfIncreaseTime |
PerfLatencyHint |
PerfTimeCheck |
SchedulingPolicy |
ShortSchedulingPolicy |
SystemCoolingPolicy |



Settings for Sleep | Description
--- | ---
AllowRemoteOpenSleep | Configure the network file system to prevent the computer from automatically entering sleep when remote network files are open. **Disabled** prevents automatic sleep when remote network files are open. However, if the open files are stored in Offline Files and are backed by the Offline File cache, automatic sleep is allowed. **Enabled** prevents automatic sleep when remote network files are open. However, if the open files are stored in Offline Files or the open files have not been updated since they were originally opened, automatic sleep is allowed. 
AllowRtcWake | whether the system uses the system-wide wake-on-timer capability. The system can automatically use wake-on-timer on capable hardware to perform scheduled tasks. For example, the system might wake automatically to install updates. **Important** wakes on internal system timers only.
AllowStandby | Specify whether to allow standby.
AllowSystemRequired | Configure the power manager to accept or ignore application system required requests. These requests prevent the system from automatically entering sleep after a period of user inactivity.
AwayMode | Specify whether the system uses away mode. If this setting is disabled, away mode is not used even if programs request it.
HibernateTimeout | Specify the duration of time after sleep that the system automatically wakes and enters hibernation, in seconds. This settings enables hibernate option on Modern Standby systems. Set the value to 0 to disable the feature. 
HybridSleep | Specify whether the system can enter hybrid sleep.
StandbyTimeout | Specify the duration of inactivity before the system automatically enters sleep, in seconds.
UnattendTimeout | Specify the duration of inactivity before the system automatically enters sleep after waking from sleep in an unattended state, in seconds. For example, if the system wakes from sleep because of a timed event or a wake on LAN (WoL) event, the sleep unattended idle timeout value will be used instead of the sleep idle timeout value. 
