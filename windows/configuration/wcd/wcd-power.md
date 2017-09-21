---
title: Power (Windows 10)
description: This section describes the Power settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.date: 10/17/2017
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
AllowSystemRequiredPowerRequests | Specify whether System Required power requests are allowed on systems capable of connected standby.
BootLowLatencyDuration | 
DefaultOverlayAcPowerScheme | Specify the default overlay power scheme to use when device is plugged in.
DefaultOverlayDcPowerScheme | Specify the default overlay power shceme to use when the device is on battery.
DefaultOverlayPowerScheme | Specify the default overlay power scheme to use. This setting is deprecated.
DimTimeoutIsManuallySpecified | Set to **True** to control the period before the screen dims using the DimTimeout setting. Set to **False** to allow Windows to automatically select the period based on the screen off timeout.
EnergyEstimationEnabled | 
EnforceConsoleLockScreenTimeout | Specify whether the console lock screen timeout should be enforced independently of the user display timeout.
EnforceDisconnectedStandby | Specify whether to force the network to disconnect during standby.
HiberFiletype | Specify the type of HiberFile to be used by the system. Set to **Reduced** to allow fast startup, but not hibernate. Set to **Full** to allow both fast startup and hibernate.
IgnoreCsComplianceCheck | Specify whether to ignore connected standby compliance chcks.
LidNotificationsAreReliable | Use to notify the OS whether the platform guarantees that lid notifications are sent whenever the lid is opened or closed. When configured as **True**, the platform guarantees that lid notifications will be sent every time the device lid is opened or closed. The OS suppresses Windows Hello when the device lid is closed to ensure further input is not processed and to save battery life. OEMs must reliably report lid open and lid close events to opt-in to this setting. If there are scenarios where a lid open event is not reliably reported to the OS, Windows Hello may not work for the user.
SmartUserPresenceConfidence | Specify the confidence, in percentage, in predicted user-away intervals.

## EnergyEstimationEngine

Setting | Description
--- | ---
CPU > EfficiencyClass | Select **0** or **1** and click **Add**. For the added EfficiencyClassId > **PowerParameters** > **PowerEnvelope**, configure the power in milli-watts for CPU at 100% usage and 100% frequency. Minimum value is 100, and maximum value is 64000.
Display > DisplayBacklightPowerFloor | Configure the backlight power floor in milli-watts. Minimum value is 24, and maximum value is 250.
Display > DisplayBacklightPowerGradient | Configure the backlight power gradient brightness. Minimum value is 1, and maximum value is 25.
Display > DisplayBacklightPowerQDenominator |
Display > DisplayBacklightPowerQNumerator |
Display > DisplayPanelPowerAreaFactor |
Display > DisplayPanelPowerDpiFactor |
Display > DisplayPanelPowerFloor |
Display > DisplayPanelPowerVsyncDelta |
EnergyEstimationTelemetry > BatteryDrainMaxE3UploadRank |
EnergyEstimationTelemetry > BatteryDrainMinE3UploadBI |
EnergyEstimationTelemetry > BatteryDrainMinRate |
EnergyEstimationTelemetry > LongtermTimerInMinutes |
EnergyEstimationTelemetry > UploadAcRecords |
MobileBroadband > MBBClass |
StandbyActivationEnergy > DripsPowerFloorMilliWatts |
StandbyActivationEnergy > NonDripsPenaltyMilliWatts |
Storage > StorageType |
Wifi > WifiClass |


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

</br></br> 
Settings for AdaptivePowerBehavior | Description
--- | ---
StandbyBudgetGracePeriod | Define the minimum time, in seconds, after the system enters standby before the system makes the check if standby power budget is consumed.
StandbyBudgetPercent | Define the battery drain percentage that the user is allowed in a standby session.
StandbyReserveGracePeriod | Define the minimum time, in seconds, after the screen turns off before the system checks to make sure there is enough battery available to maintain the specified screen on time.
StandbyReserveTime | Define the screen on time, in seconds, that will be available to the user after standby exists and the screen turns on.
StandbyResetPercent | Specify the percentage of battery when the system will reset the standby budget.
</br></br> 
Settings for Battery | Description
--- | ---
CriticalAction | Select the action to take when critical battery level is reached.
CriticalBatteryLevel | Specify the percentage of capacity when the critical battery action is taken.
LowAction | Specify the action to take when the low batter level is reached.
LowBatteryLevel | Specify the percentage of capacity when the low battery action is taken and the low battery warning, if enabled, appears.
LowBatteryWarning | Specify whether the OS displays a UI warning at the batter meter when the battery capacity crosses the low battery threshold.
ReserveBatteryLevel | Specify the percentage of capacity when the reserve battery warning is shown to the user.
</br></br> 
Settings for Button | Description
--- | ---
ForcedShutdown | Specify the type of system shutdown that occurs when the system power button is pressed if the power button action is set to **Shut down**. When configured as **On**, a forced system shutdown will occur. When configured as **Off**, a normal system shutdown will occur.
LidAction | Specify the action to take when the system lid is closed.
LidOpenWake | Specify the action to take when the system lid is opened.
PowerButtonAction | Specify the action to take when the system power button is pressed.
SleepButtonAction | Specify the action to take when the sleep power button is pressed.
UIPowerButtonAction | Specify the action to take when the UI power button is pressed.
</br></br> 
Settings for Disk | Description
--- | ---
BurstIgnoreDuration | Specify the period of inactivity, in seconds, to ignore when attempting to aggressively power down the disk. 
IdleTimeout | Specify the period of inactivity, in seconds, before the disk is automatically powered down.
MaxDiskPower | 
</br></br> 
Settings for Display | Description
--- | ---
AdapativeIncrease | This setting denotes the user annoyance detection threshold. It specifies the duration, in seconds, between automatic display brightness level reduction and user input to consider the automatic display brightness level reduction as an annoyance to the user. This setting applies only to portable computers that support Windows control of the brightness level of an integrated display device. In most situations, you should not change the default value of this setting.
AdaptiveTimeout | Specify whether the OS automatically scales the display idle time-out based on user activity. If the user provides input to the system shortly after the display idle timeout is reached, Windows automatically extends the display idle time-out to deliver a better user experience. 
AllowAdaptiveBrightness |
AllowDisplayRequired | Specify whether Windows allows applications to temporarily prevent the display from automatically reducing brightness or turning off to save power. 
AnoyanceTimout |
ConsoleLockTimeout |
DimLevel | Specify the reduced display brightness level, in percentage, after the dim idle timeout has been reached. This setting applies only to portable computers that support Windows control of the brightness level of an integrated display device. 
DimTimeout | Specify the period of inactivity, in seconds, before the display is dimmed.
IdleTimeout | Specify the period of inactivity, in seconds, before the display is automatically turned off.
NormalLevel | Specify the default display brightness level, in percentage.
</br></br> 
Settings for EnergySaver | Description
--- | ---
BatteryThreshold | Specify the battery charge level, as a percentage, at which Energy Saver is turned on.
Brightness | Specify the percentage value to scale brightness to when Energy Saver is turned on.
Policy | Select between **User** and **Aggressive**.
</br></br> 
Settings for IdleResiliency | Description
--- | ---
AllowDeepSleep |
ExecutionRequiredTimeout |
IdleResiliencyPeriod |
IOCoalescingTimeout |
</br></br> 
Settings for Misc | Description
--- | ---
AllowWifiInStandby | Specify whether to allow Wi-Fi networking during standby.
ConnectivityInStandby | Specify whether to allow connectivity during standby.
DeviceIdlePolicy | Configure for power-saving or performance.
LockConsoleOnWake | Specify whether to lock the console.
</br></br> 
Settings for Multimedia | Description
--- | ---
VideoPlayBackQuality | Configure for power-saving or performance.
</br></br> 
Settings for PCIExpress | Description
--- | ---
ASPM | Configure Active State Power Management (ASPM) for moderate power savings or maximum power savings.
</br></br> 
Settings for Processor</br>(Some parameters have suffix "1" to indicate efficiency class)</br>[Learn more about processor power management options](https://msdn.microsoft.com/library/windows/hardware/mt422910.aspx) | Description
--- | ---
CPConcurrency |
CPDecreasePolicy |
CPDecreaseTime |
CPDistribution |
DPHeadroom |
CPIncreasePolicy |
CPIncreaseTime |
CpLatencyHintUnpark |
CPMaxCores |
CPMinCores |
CPOverUtilizationThreshold |
CPPerfState |
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
</br></br> 


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
