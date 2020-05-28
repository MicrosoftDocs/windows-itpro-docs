---
description: Use this article to learn more about what required Windows diagnostic data is gathered.
title: Windows 10, version 2004 required diagnostic events and fields (Windows 10)
keywords: privacy, telemetry
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: brianlic-msft
ms.author: brianlic
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
audience: ITPro
ms.date: 03/27/2020
---


# Windows 10, version 2004 required Windows diagnostic events and fields


> [!IMPORTANT]  
> Windows is moving to classifying the data collected from customer’s devices as either *Required* or *Optional*.


 **Applies to**

- Windows 10, version 2004


Required diagnostic data gathers a limited set of information that is critical for understanding the device and its configuration including: basic device information, quality-related information, app compatibility, and Microsoft Store.

Required diagnostic data helps to identify problems that can occur on a particular device hardware or software configuration. For example, it can help determine if crashes are more frequent on devices with a specific amount of memory or that are running a particular driver version. This helps Microsoft fix operating system or app problems.

Use this article to learn about diagnostic events, grouped by event area, and the fields within each event. A brief description is provided for each field. Every event generated includes common data, which collects device data.

You can learn more about Windows functional and diagnostic data through these articles:


- [Windows 10, version 1809 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1809.md)
- [Windows 10, version 1803 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1803.md)
- [Windows 10, version 1709 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1709.md)
- [Windows 10, version 1703 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1703.md)
- [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md)
- [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md)




## Appraiser events

### Microsoft.Windows.Appraiser.General.ChecksumTotalPictureCount

This event lists the types of objects and how many of each exist on the client device. This allows for a quick way to ensure that the records present on the server match what is present on the client.

The following fields are available:

- **DatasourceApplicationFile_21H1Setup**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_21H1Setup**  The count of the number of this particular object type present on this device.
- **DatasourceDriverPackage_21H1Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoBlock_21H1Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPassive_21H1Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPostUpgrade_21H1Setup**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionDevicePnp_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionDriverPackage_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoBlock_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPassive_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPostUpgrade_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionMediaCenter_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemBios_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionTest_21H1Setup**  The count of the number of this particular object type present on this device.
- **PCFP**  The count of the number of this particular object type present on this device.
- **Wmdrm_21H1Setup**  The count of the number of this particular object type present on this device.


### Microsoft.Windows.Appraiser.General.DatasourceDevicePnpAdd

This event sends compatibility data for a Plug and Play device, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **ActiveNetworkConnection**  Indicates whether the device is an active network device.
- **CosDeviceRating**  An enumeration that indicates if there is a driver on the target operating system.
- **CosDeviceSolution**  An enumeration that indicates how a driver on the target operating system is available.
- **CosDeviceSolutionUrl**  Microsoft.Windows.Appraiser.General.DatasourceDevicePnpAdd . Empty string
- **CosPopulatedFromId**  The expected uplevel driver matching ID based on driver coverage data.
- **IsBootCritical**  Indicates whether the device boot is critical.
- **UplevelInboxDriver**  Indicates whether there is a driver uplevel for this device.
- **WuDriverCoverage**  Indicates whether there is a driver uplevel for this device, according to Windows Update.
- **WuDriverUpdateId**  The Windows Update ID of the applicable uplevel driver.
- **WuPopulatedFromId**  The expected uplevel driver matching ID based on driver coverage from Windows Update.


### Microsoft.Windows.Appraiser.General.DatasourceDriverPackageAdd

This event sends compatibility database data about driver packages to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPassiveRemove

This event indicates that the DataSourceMatchingInfoPassive object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


## Census events

### Census.PrivacySettings

This event provides information about the device level privacy settings and whether device-level access was granted to these capabilities. Not all settings are applicable to all devices. Each field records the consent state for the corresponding privacy setting. The consent state is encoded as a 16-bit signed integer, where the first 8 bits represents the effective consent value, and the last 8 bits represent the authority that set the value. The effective consent (first 8 bits) is one of the following values:  -3 = unexpected consent value, -2 = value was not requested, -1 = an error occurred while attempting to retrieve the value, 0 = undefined, 1 = allow, 2 = deny, 3 = prompt. The consent authority (last 8 bits) is one of the following values: -3 = unexpected authority, -2 = value was not requested, -1 = an error occurred while attempting to retrieve the value, 0 = system, 1 = a higher authority (a gating setting, the system-wide setting, or a group policy), 2 = advertising ID group policy, 3 = advertising ID policy for child account, 4 = privacy setting provider doesn't know the actual consent authority, 5 = consent was not configured and a default set in code was used, 6 = system default, 7 = organization policy, 8 = OneSettings.

The following fields are available:

- **Activity**  Current state of the activity history setting.
- **ActivityHistoryCloudSync**  Current state of the activity history cloud sync setting.
- **ActivityHistoryCollection**  Current state of the activity history collection setting.
- **AdvertisingId**  Current state of the advertising ID setting.
- **AppDiagnostics**  Current state of the app diagnostics setting.
- **Appointments**  Current state of the calendar setting.
- **Bluetooth**  Current state of the Bluetooth capability setting.
- **BluetoothSync**  Current state of the Bluetooth sync capability setting.
- **BroadFileSystemAccess**  Current state of the broad file system access setting.
- **CellularData**  Current state of the cellular data capability setting.
- **Chat**  Current state of the chat setting.
- **Contacts**  Current state of the contacts setting.
- **DocumentsLibrary**  Current state of the documents library setting.
- **Email**  Current state of the email setting.
- **FindMyDevice**  Current state of the "find my device" setting.
- **GazeInput**  Current state of the gaze input setting.
- **HumanInterfaceDevice**  Current state of the human interface device setting.
- **InkTypeImprovement**  Current state of the improve inking and typing setting.
- **Location**  Current state of the location setting.
- **LocationHistory**  Current state of the location history setting.
- **Microphone**  Current state of the microphone setting.
- **PhoneCall**  Current state of the phone call setting.
- **PhoneCallHistory**  Current state of the call history setting.
- **PicturesLibrary**  Current state of the pictures library setting.
- **Radios**  Current state of the radios setting.
- **SensorsCustom**  Current state of the custom sensor setting.
- **SerialCommunication**  Current state of the serial communication setting.
- **Sms**  Current state of the text messaging setting.
- **SpeechPersonalization**  Current state of the speech services setting.
- **USB**  Current state of the USB setting.
- **UserAccountInformation**  Current state of the account information setting.
- **UserDataTasks**  Current state of the tasks setting.
- **UserNotificationListener**  Current state of the notifications setting.
- **VideosLibrary**  Current state of the videos library setting.
- **Webcam**  Current state of the camera setting.
- **WifiData**  Current state of the Wi-Fi data setting.
- **WiFiDirect**  Current state of the Wi-Fi direct setting.


### Census.Security

This event provides information on about security settings used to help keep Windows up to date and secure.

The following fields are available:

- **AvailableSecurityProperties**  This field helps to enumerate and report state on the relevant security properties for Device Guard.
- **CGRunning**  Credential Guard isolates and hardens key system and user secrets against compromise, helping to minimize the impact and breadth of a Pass the Hash style attack in the event that malicious code is already running via a local or network based vector. This field tells if Credential Guard is running.
- **DGState**  This field summarizes the Device Guard state.
- **HVCIRunning**  Hypervisor Code Integrity (HVCI) enables Device Guard to help protect kernel mode processes and drivers from vulnerability exploits and zero days. HVCI uses the processor’s functionality to force all software running in kernel mode to safely allocate memory. This field tells if HVCI is running.
- **IsSawGuest**  Indicates whether the device is running as a Secure Admin Workstation Guest.
- **IsSawHost**  Indicates whether the device is running as a Secure Admin Workstation Host.
- **IsWdagFeatureEnabled**  Indicates whether Windows Defender Application Guard is enabled.
- **RequiredSecurityProperties**  Describes the required security properties to enable virtualization-based security.
- **SecureBootCapable**  Systems that support Secure Boot can have the feature turned off via BIOS. This field tells if the system is capable of running Secure Boot, regardless of the BIOS setting.
- **SModeState**  The Windows S mode trail state.
- **SystemGuardState**  Indicates the SystemGuard state. NotCapable (0), Capable (1), Enabled (2), Error (0xFF).
- **TpmReadyState**  Indicates the TPM ready state. NotReady (0), ReadyForStorage (1), ReadyForAttestation (2), Error (0xFF).
- **VBSState**  Virtualization-based security (VBS) uses the hypervisor to help protect the kernel and other parts of the operating system. Credential Guard and Hypervisor Code Integrity (HVCI) both depend on VBS to isolate/protect secrets, and kernel-mode code integrity validation.  VBS has a tri-state that can be Disabled, Enabled, or Running.
- **WdagPolicyValue**  The Windows Defender Application Guard policy.


## Common data extensions

### Common Data Extensions.app

Describes the properties of the running application. This extension could be populated by a client app or a web app.

The following fields are available:

- **asId**  An integer value that represents the app session. This value starts at 0 on the first app launch and increments after each subsequent app launch per boot session.
- **env**  The environment from which the event was logged.
- **expId**  Associates a flight, such as an OS flight, or an experiment, such as a web site UX experiment, with an event.
- **id**  Represents a unique identifier of the client application currently loaded in the process producing the event; and is used to group events together and understand usage pattern, errors by application.
- **locale**  The locale of the app.
- **name**  The name of the app.
- **userId**  The userID as known by the application.
- **ver**  Represents the version number of the application. Used to understand errors by Version, Usage by Version across an app.


### Common Data Extensions.container

Describes the properties of the container for events logged within a container.

The following fields are available:

- **epoch**  An ID that's incremented for each SDK initialization.
- **localId**  The device ID as known by the client.
- **osVer**  The operating system version.
- **seq**  An ID that's incremented for each event.
- **type**  The container type. Examples: Process or VMHost


### Common Data Extensions.device

Describes the device-related fields.

The following fields are available:

- **deviceClass**  The device classification. For example, Desktop, Server, or Mobile.
- **localId**  A locally-defined unique ID for the device. This is not the human-readable device name. Most likely equal to the value stored at HKLM\Software\Microsoft\SQMClient\MachineId
- **make**  Device manufacturer.
- **model**  Device model.


### Common Data Extensions.Envelope

Represents an envelope that contains all of the common data extensions.

The following fields are available:

- **data**  Represents the optional unique diagnostic data for a particular event schema.
- **ext_app**  Describes the properties of the running application. This extension could be populated by either a client app or a web app. See [Common Data Extensions.app](#common-data-extensionsapp).
- **ext_container**  Describes the properties of the container for events logged within a container. See [Common Data Extensions.container](#common-data-extensionscontainer).
- **ext_device**  Describes the device-related fields. See [Common Data Extensions.device](#common-data-extensionsdevice).
- **ext_m365a**  Describes the Microsoft 365-related fields. See [Common Data Extensions.m365a](#common-data-extensionsm365a).
- **ext_mscv**  Describes the correlation vector-related fields. See [Common Data Extensions.mscv](#common-data-extensionsmscv).
- **ext_os**  Describes the operating system properties that would be populated by the client. See [Common Data Extensions.os](#common-data-extensionsos).
- **ext_sdk**  Describes the fields related to a platform library required for a specific SDK. See [Common Data Extensions.sdk](#common-data-extensionssdk).
- **ext_user**  Describes the fields related to a user. See [Common Data Extensions.user](#common-data-extensionsuser).
- **ext_utc**  Describes the fields that might be populated by a logging library on Windows. See [Common Data Extensions.utc](#common-data-extensionsutc).
- **ext_xbl**  Describes the fields related to XBOX Live. See [Common Data Extensions.xbl](#common-data-extensionsxbl).
- **iKey**  Represents an ID for applications or other logical groupings of events.
- **name**  Represents the uniquely qualified name for the event.
- **time**  Represents the event date time in Coordinated Universal Time (UTC) when the event was generated on the client. This should be in ISO 8601 format.
- **ver**  Represents the major and minor version of the extension.

### Common Data Extensions.m365a

Describes the Microsoft 365-related fields.

The following fields are available:

- **enrolledTenantId**  The enrolled tenant ID.
- **msp**  A bitmask that lists the active programs.

### Common Data Extensions.mscv

Describes the correlation vector-related fields.

The following fields are available:

- **cV**  Represents the Correlation Vector: A single field for tracking partial order of related events across component boundaries.


### Common Data Extensions.os

Describes some properties of the operating system.

The following fields are available:

- **bootId**  An integer value that represents the boot session. This value starts at 0 on first boot after OS install and increments after every reboot.
- **expId**  Represents the experiment ID. The standard for associating a flight, such as an OS flight (pre-release build), or an experiment, such as a web site UX experiment, with an event is to record the flight / experiment IDs in Part A of the common schema.
- **locale**  Represents the locale of the operating system.
- **name**  Represents the operating system name.
- **ver**  Represents the major and minor version of the extension.


### Common Data Extensions.sdk

Used by platform specific libraries to record fields that are required for a specific SDK.

The following fields are available:

- **epoch**  An ID that is incremented for each SDK initialization.
- **installId**  An ID that's created during the initialization of the SDK for the first time.
- **libVer**  The SDK version.
- **seq**  An ID that is incremented for each event.
- **ver**  The version of the logging SDK.


### Common Data Extensions.user

Describes the fields related to a user.

The following fields are available:

- **authId**  This is an ID of the user associated with this event that is deduced from a token such as a Microsoft Account ticket or an XBOX token.
- **locale**  The language and region.
- **localId**  Represents a unique user identity that is created locally and added by the client. This is not the user's account ID.


### Common Data Extensions.utc

Describes the properties that could be populated by a logging library on Windows.

The following fields are available:

- **aId**  Represents the ETW ActivityId. Logged via TraceLogging or directly via ETW.
- **bSeq**  Upload buffer sequence number in the format: buffer identifier:sequence number
- **cat**  Represents a bitmask of the ETW Keywords associated with the event.
- **cpId**  The composer ID, such as Reference, Desktop, Phone, Holographic, Hub, IoT Composer.
- **epoch**  Represents the epoch and seqNum fields, which help track how many events were fired and how many events were uploaded, and enables identification of data lost during upload and de-duplication of events on the ingress server.
- **eventFlags**  Represents a collection of bits that describe how the event should be processed by the Connected User Experience and Telemetry component pipeline. The lowest-order byte is the event persistence. The next byte is the event latency.
- **flags**  Represents the bitmap that captures various Windows specific flags.
- **loggingBinary**  The binary (executable, library, driver, etc.) that fired the event.
- **mon**  Combined monitor and event sequence numbers in the format: monitor sequence : event sequence
- **op**  Represents the ETW Op Code.
- **pgName**  The short form of the provider group name associated with the event.
- **popSample**  Represents the effective sample rate for this event at the time it was generated by a client.
- **providerGuid**  The ETW provider ID associated with the provider name.
- **raId**  Represents the ETW Related ActivityId. Logged via TraceLogging or directly via ETW.
- **seq**  Represents the sequence field used to track absolute order of uploaded events. It is an incrementing identifier for each event added to the upload queue.  The Sequence helps track how many events were fired and how many events were uploaded and enables identification of data lost during upload and de-duplication of events on the ingress server.
- **sqmId**  The Windows SQM (Software Quality Metrics—a precursor of Windows 10 Diagnostic Data collection) device identifier.
- **stId**  Represents the Scenario Entry Point ID. This is a unique GUID for each event in a diagnostic scenario. This used to be Scenario Trigger ID.
- **wcmp**  The Windows Shell Composer ID.
- **wPId**  The Windows Core OS product ID.
- **wsId**  The Windows Core OS session ID.


### Common Data Extensions.xbl

Describes the fields that are related to XBOX Live.

The following fields are available:

- **claims**  Any additional claims whose short claim name hasn't been added to this structure.
- **did**  XBOX device ID
- **dty**  XBOX device type
- **dvr**  The version of the operating system on the device.
- **eid**  A unique ID that represents the developer entity.
- **exp**  Expiration time
- **ip**  The IP address of the client device.
- **nbf**  Not before time
- **pid**  A comma separated list of PUIDs listed as base10 numbers.
- **sbx**  XBOX sandbox identifier
- **sid**  The service instance ID.
- **sty**  The service type.
- **tid**  The XBOX Live title ID.
- **tvr**  The XBOX Live title version.
- **uts**  A bit field, with 2 bits being assigned to each user ID listed in xid. This field is omitted if all users are retail accounts.
- **xid**  A list of base10-encoded XBOX User IDs.


## Common data fields

### Ms.Device.DeviceInventoryChange

Describes the installation state for all hardware and software components available on a particular device.

The following fields are available:

- **action**  The change that was invoked on a device inventory object.
- **inventoryId**  Device ID used for Compatibility testing
- **objectInstanceId**  Object identity which is unique within the device scope.
- **objectType**  Indicates the object type that the event applies to.
- **syncId**  A string used to group StartSync, EndSync, Add, and Remove operations that belong together. This field is unique by Sync period and is used to disambiguate in situations where multiple agents perform overlapping inventories for the same object.

## Component-based Servicing events

### Microsoft.Windows.CbsLite.CbsLiteResetBegin

This event is fired from Update OS when re-install of the OS begins.

The following fields are available:

- **cbsLiteSessionID**  An ID to associate other Cbs events related to this reset session.
- **resetFlags**  A flag containing the detail of which reset scenarios was executed.
- **wipeDuration**  The time taken to purge the system volume and format data volume.

## DISM events

### Microsoft.Windows.StartRepairCore.DISMLatestInstalledLCU

The DISM Latest Installed LCU sends information to report result of search for latest installed LCU after last successful boot.

The following fields are available:

- **dismInstalledLCUPackageName**  The name of the latest installed package.


### Microsoft.Windows.StartRepairCore.DISMUninstallLCU

The DISM Uninstall LCU sends information to report result of uninstall attempt for found LCU.

The following fields are available:

- **errorCode**  The result code returned by the event.


## Driver installation events

### Microsoft.Windows.DriverInstall.DeviceInstall

This critical event sends information about the driver installation that took place.

The following fields are available:

- **ClassGuid**  The unique ID for the device class.
- **ClassLowerFilters**  The list of lower filter class drivers.
- **ClassUpperFilters**  The list of upper filter class drivers.
- **CoInstallers**  The list of coinstallers.
- **ConfigFlags**  The device configuration flags.
- **DeviceConfigured**  Indicates whether this device was configured through the kernel configuration.
- **DeviceInstalled**  Indicates whether the legacy install code path was used.
- **DeviceInstanceId**  The unique identifier of the device in the system.
- **DeviceStack**  The device stack of the driver being installed.
- **DriverDate**  The date of the driver.
- **DriverDescription**  A description of the driver function.
- **DriverInfName**  Name of the INF file (the setup information file) for the driver.
- **DriverInfSectionName**  Name of the DDInstall section within the driver INF file.
- **DriverPackageId**  The ID of the driver package that is staged to the driver store.
- **DriverProvider**  The driver manufacturer or provider.
- **DriverUpdated**  Indicates whether the driver is replacing an old driver.
- **DriverVersion**  The version of the driver file.
- **EndTime**  The time the installation completed.
- **Error**  Provides the WIN32 error code for the installation.
- **ExtensionDrivers**  List of extension drivers that complement this installation.
- **FinishInstallAction**  Indicates whether the co-installer invoked the finish-install action.
- **FinishInstallUI**  Indicates whether the installation process shows the user interface.
- **FirmwareDate**  The firmware date that will be stored in the EFI System Resource Table (ESRT).
- **FirmwareRevision**  The firmware revision that will be stored in the EFI System Resource Table (ESRT).
- **FirmwareVersion**  The firmware version that will be stored in the EFI System Resource Table (ESRT).
- **FirstHardwareId**  The ID in the hardware ID list that provides the most specific device description.
- **FlightIds**  A list of the different Windows Insider builds on the device.
- **GenericDriver**  Indicates whether the driver is a generic driver.
- **Inbox**  Indicates whether the driver package is included with Windows.
- **InstallDate**  The date the driver was installed.
- **LastCompatibleId**  The ID in the hardware ID list that provides the least specific device description.
- **LastInstallFunction**  The last install function invoked in a co-installer if the install timeout was reached while a co-installer was executing.
- **LowerFilters**  The list of lower filter drivers.
- **MatchingDeviceId**  The hardware ID or compatible ID that Windows used to install the device instance.
- **NeedReboot**  Indicates whether the driver requires a reboot.
- **OriginalDriverInfName**  The original name of the INF file before it was renamed.
- **ParentDeviceInstanceId**  The device instance ID of the parent of the device.
- **PendedUntilReboot**  Indicates whether the installation is pending until the device is rebooted.
- **Problem**  Error code returned by the device after installation.
- **ProblemStatus**  The status of the device after the driver installation.
- **RebootRequiredReason**  DWORD (Double Word—32-bit unsigned integer) containing the reason why the device required a reboot during install.
- **SecondaryDevice**  Indicates whether the device is a secondary device.
- **ServiceName**  The service name of the driver.
- **SessionGuid**  GUID (Globally Unique IDentifier) for the update session.
- **SetupMode**  Indicates whether the driver installation took place before the Out Of Box Experience (OOBE) was completed.
- **StartTime**  The time when the installation started.
- **SubmissionId**  The driver submission identifier assigned by the Windows Hardware Development Center.
- **UpperFilters**  The list of upper filter drivers.


## DxgKernelTelemetry events

### DxgKrnlTelemetry.GPUAdapterInventoryV2

This event sends basic GPU and display driver information to keep Windows and display drivers up-to-date.

The following fields are available:

- **AdapterTypeValue**  The numeric value indicating the type of Graphics adapter.
- **aiSeqId**  The event sequence ID.
- **bootId**  The system boot ID.
- **BrightnessVersionViaDDI**  The version of the Display Brightness Interface.
- **ComputePreemptionLevel**  The maximum preemption level supported by GPU for compute payload.
- **DDIInterfaceVersion**  The device driver interface version.
- **DedicatedSystemMemoryB**  The amount of system memory dedicated for GPU use (in bytes).
- **DedicatedVideoMemoryB**  The amount of dedicated VRAM of the GPU (in bytes).
- **DisplayAdapterLuid**  The display adapter LUID.
- **DriverDate**  The date of the display driver.
- **DriverRank**  The rank of the display driver.
- **DriverVersion**  The display driver version.
- **DX10UMDFilePath**  The file path to the location of the DirectX 10 Display User Mode Driver in the Driver Store.
- **DX11UMDFilePath**  The file path to the location of the DirectX 11 Display User Mode Driver in the Driver Store.
- **DX12UMDFilePath**  The file path to the location of the DirectX 12 Display User Mode Driver in the Driver Store.
- **DX9UMDFilePath**  The file path to the location of the DirectX 9 Display User Mode Driver in the Driver Store.
- **GPUDeviceID**  The GPU device ID.
- **GPUPreemptionLevel**  The maximum preemption level supported by GPU for graphics payload.
- **GPURevisionID**  The GPU revision ID.
- **GPUVendorID**  The GPU vendor ID.
- **InterfaceFuncPointersProvided1**  Number of device driver interface function pointers provided.
- **InterfaceFuncPointersProvided2**  Number of device driver interface function pointers provided.
- **InterfaceId**  The GPU interface ID.
- **IsDisplayDevice**  Does the GPU have displaying capabilities?
- **IsHwSchEnabled**  Boolean value indicating whether hardware scheduling is enabled.
- **IsHwSchSupported**  Indicates whether the adapter supports hardware scheduling.
- **IsHybridDiscrete**  Does the GPU have discrete GPU capabilities in a hybrid device?
- **IsHybridIntegrated**  Does the GPU have integrated GPU capabilities in a hybrid device?
- **IsLDA**  Is the GPU comprised of Linked Display Adapters?
- **IsMiracastSupported**  Does the GPU support Miracast?
- **IsMismatchLDA**  Is at least one device in the Linked Display Adapters chain from a different vendor?
- **IsMPOSupported**  Does the GPU support Multi-Plane Overlays?
- **IsMsMiracastSupported**  Are the GPU Miracast capabilities driven by a Microsoft solution?
- **IsPostAdapter**  Is this GPU the POST GPU in the device?
- **IsRemovable**  TRUE if the adapter supports being disabled or removed.
- **IsRenderDevice**  Does the GPU have rendering capabilities?
- **IsSoftwareDevice**  Is this a software implementation of the GPU?
- **KMDFilePath**  The file path to the location of the Display Kernel Mode Driver in the Driver Store.
- **MeasureEnabled**  Is the device listening to MICROSOFT_KEYWORD_MEASURES?
- **NumVidPnSources**  The number of supported display output sources.
- **NumVidPnTargets**  The number of supported display output targets.
- **SharedSystemMemoryB**  The amount of system memory shared by GPU and CPU (in bytes).
- **SubSystemID**  The subsystem ID.
- **SubVendorID**  The GPU sub vendor ID.
- **TelemetryEnabled**  Is the device listening to MICROSOFT_KEYWORD_TELEMETRY?
- **TelInvEvntTrigger**  What triggered this event to be logged?  Example: 0 (GPU enumeration) or 1 (DxgKrnlTelemetry provider toggling)
- **version**  The event version.
- **WDDMVersion**  The Windows Display Driver Model version.


## Feature update events

### Microsoft.Windows.Upgrade.Uninstall.UninstallFinalizedAndRebootTriggered

This event indicates that the uninstall was properly configured and that a system reboot was initiated.



## Holographic events

### Microsoft.Windows.Shell.HolographicFirstRun.AppActivated

This event indicates Windows Mixed Reality Portal app activation state. This event also used to count WMR device.

The following fields are available:

- **IsDemoMode**  Windows Mixed Reality Portal app state of demo mode.
- **IsDeviceSetupComplete**  Windows Mixed Reality Portal app state of device setup completion.
- **PackageVersion**  Windows Mixed Reality Portal app package version.
- **PreviousExecutionState**  Windows Mixed Reality Portal app prior execution state.
- **wilActivity**  Windows Mixed Reality Portal app wilActivity ID. See [wilActivity](#wilactivity).

### wilActivity

This event provides a Windows Internal Library context used for Product and Service diagnostics.

The following fields are available:

- **callContext**  The function where the failure occurred.
- **currentContextId**  The ID of the current call context where the failure occurred.
- **currentContextMessage**  The message of the current call context where the failure occurred.
- **currentContextName**  The name of the current call context where the failure occurred.
- **failureCount**  The number of failures for this failure ID.
- **failureId**  The ID of the failure that occurred.
- **failureType**  The type of the failure that occurred.
- **fileName**  The file name where the failure occurred.
- **function**  The function where the failure occurred.
- **hresult**  The HResult of the overall activity.
- **lineNumber**  The line number where the failure occurred.
- **message**  The message of the failure that occurred.
- **module**  The module where the failure occurred.
- **originatingContextId**  The ID of the originating call context that resulted in the failure.
- **originatingContextMessage**  The message of the originating call context that resulted in the failure.
- **originatingContextName**  The name of the originating call context that resulted in the failure.
- **threadId**  The ID of the thread on which the activity is executing.


### Microsoft.Windows.Shell.HolographicFirstRun.AppLifecycleService_Resuming

This event indicates Windows Mixed Reality Portal app resuming. This event is also used to count WMR device.


## Inventory events

### Microsoft.Windows.Inventory.Core.AmiTelCacheChecksum

This event captures basic checksum data about the device inventory items stored in the cache for use in validating data completeness for Microsoft.Windows.Inventory.Core events. The fields in this event may change over time, but they will always represent a count of a given object.

The following fields are available:

- **Device**  A count of device objects in cache.
- **DriverPackageExtended**  A count of driverpackageextended objects in cache.
- **File**  A count of file objects in cache.
- **Generic**  A count of generic objects in cache.
- **InventoryApplication**  A count of application objects in cache.
- **InventoryApplicationDriver**  A count of application driver objects in cache
- **InventoryApplicationFile**  A count of application file objects in cache.
- **InventoryApplicationFramework**  A count of application framework objects in cache
- **InventoryApplicationShortcut**  A count of application shortcut objects in cache
- **InventoryDeviceContainer**  A count of device container objects in cache.
- **InventoryDeviceInterface**  A count of Plug and Play device interface objects in cache.
- **InventoryDeviceMediaClass**  A count of device media objects in cache.
- **InventoryDevicePnp**  A count of device Plug and Play objects in cache.
- **InventoryDeviceUsbHubClass**  A count of device usb objects in cache
- **InventoryDriverBinary**  A count of driver binary objects in cache.
- **InventoryDriverPackage**  A count of device objects in cache.
- **InventoryMiscellaneousOfficeAddIn**  A count of office add-in objects in cache
- **InventoryMiscellaneousOfficeAddInUsage**  A count of office add-in usage objects in cache.
- **InventoryMiscellaneousOfficeIdentifiers**  A count of office identifier objects in cache
- **InventoryMiscellaneousOfficeIESettings**  A count of office ie settings objects in cache
- **InventoryMiscellaneousOfficeInsights**  A count of office insights objects in cache
- **InventoryMiscellaneousOfficeProducts**  A count of office products objects in cache
- **InventoryMiscellaneousOfficeSettings**  A count of office settings objects in cache
- **InventoryMiscellaneousOfficeVBA**  A count of office vba objects in cache
- **InventoryMiscellaneousOfficeVBARuleViolations**  A count of office vba rule violations objects in cache
- **InventoryMiscellaneousUUPInfo**  A count of uup info objects in cache
- **Metadata**  A count of metadata objects in cache.
- **Programs**  A count of program objects in cache.


### Microsoft.Windows.Inventory.Core.InventoryApplicationFrameworkAdd

This event provides the basic metadata about the frameworks an application may depend on.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **FileId**  A hash that uniquely identifies a file.
- **Frameworks**  The list of frameworks this file depends on.
- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceContainerAdd

This event sends basic metadata about a device container (such as a monitor or printer as opposed to a Plug and Play device) to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Categories**  A comma separated list of functional categories in which the container belongs.
- **DiscoveryMethod**  The discovery method for the device container.
- **FriendlyName**  The name of the device container.
- **IsActive**  Is the device connected, or has it been seen in the last 14 days?
- **IsConnected**  For a physically attached device, this value is the same as IsPresent. For wireless a device, this value represents a communication link.
- **IsMachineContainer**  Is the container the root device itself?
- **IsNetworked**  Is this a networked device?
- **IsPaired**  Does the device container require pairing?
- **Manufacturer**  The manufacturer name for the device container.
- **ModelId**  A unique model ID.
- **ModelName**  The model name.
- **ModelNumber**  The model number for the device container.
- **PrimaryCategory**  The primary category for the device container.


### Microsoft.Windows.Inventory.Core.InventoryDriverPackageAdd

This event sends basic metadata about drive packages installed on the system  to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Class**  The class name for the device driver.
- **ClassGuid**  The class GUID for the device driver.
- **Date**  The driver package date.
- **Directory**  The path to the driver package.
- **DriverInBox**  Is the driver included with the operating system?
- **FlightIds**  Driver Flight IDs.
- **Inf**  The INF name of the driver package.
- **InventoryVersion**  The version of the inventory file generating the events.
- **Provider**  The provider for the driver package.
- **RecoveryIds**  Driver recovery IDs.
- **SubmissionId**  The HLK submission ID for the driver package.
- **Version**  The version of the driver package.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousMemorySlotArrayInfoAdd

This event provides basic information about active memory slots on the device.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Capacity**  Memory size in bytes.
- **Manufacturer**  Name of the DRAM manufacturer.
- **Model**  Model and submodel of the memory.
- **Slot**  Slot the DRAM is plugged into the motherboard.
- **Speed**  MHZ the memory is currently configured and used at.
- **Type**  Reports DDR, etc. as an enumeration value per DMTF SMBIOS standard version 3.3.0, section 7.18.2.
- **TypeDetails**  Reports Non-volatile, etc. as a bit flag enumeration per DMTF SMBIOS standard version 3.3.0, section 7.18.3.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIdentifiersAdd

Provides data on the Office identifiers.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **OAudienceData**  Sub-identifier for Microsoft Office release management, identifying the pilot group for a device
- **OAudienceId**  Microsoft Office identifier for Microsoft Office release management, identifying the pilot group for a device
- **OMID**  Identifier for the Office SQM Machine
- **OPlatform**  Whether the installed Microsoft Office product is 32-bit or 64-bit
- **OTenantId**  Unique GUID representing the Microsoft O365 Tenant
- **OVersion**  Installed version of Microsoft Office. For example, 16.0.8602.1000
- **OWowMID**  Legacy Microsoft Office telemetry identifier (SQM Machine ID) for WoW systems (32-bit Microsoft Office on 64-bit Windows)


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeProductsAdd

Describes Office Products installed.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **OC2rApps**  A GUID the describes the Office Click-To-Run apps
- **OC2rSkus**  Comma-delimited list (CSV) of Office Click-To-Run products installed on the device. For example, Office 2016 ProPlus
- **OMsiApps**  Comma-delimited list (CSV) of Office MSI products installed on the device. For example, Microsoft Word
- **OProductCodes**  A GUID that describes the Office MSI products


### Microsoft.Windows.Inventory.Indicators.Checksum

This event summarizes the counts for the InventoryMiscellaneousUexIndicatorAdd events.

The following fields are available:

- **CensusId**  A unique hardware identifier.
- **ChecksumDictionary**  A count of each operating system indicator.


## Microsoft Edge events

### Aria.160f0649efde47b7832f05ed000fc453.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state was not retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (e.g. Canary/Dev/Beta/Stable). client_id is not durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event, where 1 is basic, 2 is enhanced, and 3 is full.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSource**  An enumeration representing the source of this installation: source was not retrieved (0), unspecified source (1), website installer (2), enterprise MSI (3), Windows update (4), Edge updater (5), scheduled or timed task (6, 7), uninstall (8), Edge about page (9), self-repair (10), other install command line (11), reserved (12), unknown source (13).
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **reconsentConfigs**  A comma separated list of all reconsent configurations the current installation has received. Each configuration follows a well-defined format: 2DigitMonth-2DigitYear-3LetterKeyword.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Aria.29e24d069f27450385c7acaa2f07e277.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **app_version**  The internal Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state was not retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (e.g. Canary/Dev/Beta/Stable). client_id is not durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSource**  An enumeration representing the source of this installation: source was not retrieved (0), unspecified source (1), website installer (2), enterprise MSI (3), Windows update (4), Edge updater (5), scheduled or timed task (6, 7), uninstall (8), Edge about page (9), self-repair (10), other install command line (11), reserved (12), unknown source (13).
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Aria.7005b72804a64fa4b2138faab88f877b.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state was not retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (e.g. Canary/Dev/Beta/Stable). client_id is not durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSource**  An enumeration representing the source of this installation: source was not retrieved (0), unspecified source (1), website installer (2), enterprise MSI (3), Windows update (4), Edge updater (5), scheduled or timed task (6, 7), uninstall (8), Edge about page (9), self-repair (10), other install command line (11), reserved (12), unknown source (13).
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **reconsentConfigs**  A comma separated list of all reconsent configurations the current installation has received. Each configuration follows a well-defined format: 2DigitMonth-2DigitYear-3LetterKeyword.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Aria.754de735ccd546b28d0bfca8ac52c3de.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state was not retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (e.g. Canary/Dev/Beta/Stable). client_id is not durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSource**  An enumeration representing the source of this installation: source was not retrieved (0), unspecified source (1), website installer (2), enterprise MSI (3), Windows update (4), Edge updater (5), scheduled or timed task (6, 7), uninstall (8), Edge about page (9), self-repair (10), other install command line (11), reserved (12), unknown source (13).
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Aria.af397ef28e484961ba48646a5d38cf54.Microsoft.WebBrowser.Installer.EdgeUpdate.Ping

The Ping event sends a detailed inventory of software and hardware information about the EdgeUpdate user's version, app usage, update usage, and hardware capabilities. This event contains Device Connectivity and Configuration, Product and Service Performance, Product and Service Usage, and Software Setup and Inventory data. One roll-up event is sent each time any installation, update, or uninstallation process, including an error, occurs in the EdgeUpdate service. Each Ping event can contain an arbitrary number of apps which have been modified, and each of these apps in turn can fire multiple event types. This event is used to measure the reliability, performance, and usage of the EdgeUpdate service.

The following fields are available:

- **appAp**  Any additional parameters for the specified application. Default: ''.
- **appAppId**  The GUID that identifies the product. Compatible clients must transmit this attribute. Please see the wiki for additional information. Default: undefined.
- **appBrandCode**  The brand code under which the product was installed, if any. A brand code is a short (4-character) string used to identify installations that took place as a result of partner deals or website promotions. Default: ''.
- **appChannel**  An integer indicating the channel of the installation (i.e. Canary or Dev).
- **appClientId**  A generalized form of the brand code that can accept a wider range of values and is used for similar purposes. Default: ''.
- **appCohort**  A machine-readable string identifying the release cohort (channel) that the app belongs to. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appCohortHint**  A machine-readable enum indicating that the client has a desire to switch to a different release cohort. The exact legal values are app-specific and should be shared between the server and app implementations. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appCohortName**  A stable non-localized human-readable enum indicating which (if any) set of messages the app should display to the user. For example, an app with a cohort Name of 'beta' might display beta-specific branding to the user. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appConsentState**  Bit flags describing the diagnostic data disclosure and response flow where 1 indicates the affirmative and 0 indicates the negative or unspecified data. Bit 1 indicates consent was given, bit 2 indicates data originated from the download page, bit 18 indicates choice for sending data about how the browser is used, and bit 19 indicates choice for sending data about websites visited.
- **appDayOfInstall**  The date-based counting equivalent of appInstallTimeDiffSec (the numeric calendar day that the app was installed on). This value is provided by the server in the response to the first request in the installation flow. The client MAY fuzz this value to the week granularity (e.g. send '0' for 0 through 6, '7' for 7 through 13, etc.). The first communication to the server should use a special value of '-1'. A value of '-2' indicates that this value is not known. Please see the wiki for additional information. Default: '-2'.
- **appExperiments**  A key/value list of experiment identifiers. Experiment labels are used to track membership in different experimental groups, and may be set at install or update time. The experiments string is formatted as a semicolon-delimited concatenation of experiment label strings. An experiment label string is an experiment Name, followed by the '=' character, followed by an experimental label value. For example: 'crdiff=got_bsdiff;optimized=O3'. The client should not transmit the expiration date of any experiments it has, even if the server previously specified a specific expiration date. Default: ''.
- **appInstallTimeDiffSec**  The difference between the current time and the install date in seconds. '0' if unknown. Default: '-1'.
- **appLang**  The language of the product install, in IETF BCP 47 representation. Default: ''.
- **appNextVersion**  The version of the app that the update flow to which this event belongs attempted to reach, regardless of the success or failure of the update operation. Please see the wiki for additional information. Default: '0.0.0.0'.
- **appPingEventAppSize**  The total number of bytes of all downloaded packages. Default: '0'.
- **appPingEventDownloadMetricsDownloadedBytes**  For events representing a download, the number of bytes expected to be downloaded. For events representing an entire update flow, the sum of all such expected bytes over the course of the update flow. Default: '0'.
- **appPingEventDownloadMetricsDownloader**  A string identifying the download algorithm and/or stack. Example values include: 'bits', 'direct', 'winhttp', 'p2p'. Sent in events that have an event type of '14' only. Default: ''.
- **appPingEventDownloadMetricsDownloadTimeMs**  For events representing a download, the time elapsed between the start of the download and the end of the download, in milliseconds. For events representing an entire update flow, the sum of all such download times over the course of the update flow. Sent in events that have an event type of '1', '2', '3', and '14' only. Default: '0'.
- **appPingEventDownloadMetricsError**  The error code (if any) of the operation, encoded as a signed base-10 integer. Default: '0'.
- **appPingEventDownloadMetricsTotalBytes**  For events representing a download, the number of bytes expected to be downloaded. For events representing an entire update flow, the sum of all such expected bytes over the course of the update flow. Default: '0'.
- **appPingEventDownloadTimeMs**  For events representing a download, the time elapsed between the start of the download and the end of the download, in milliseconds. For events representing an entire update flow, the sum of all such download times over the course of the update flow. Sent in events that have an event type of '1', '2', '3', and '14' only. Default: '0'.
- **appPingEventErrorCode**  The error code (if any) of the operation, encoded as a signed, base-10 integer. Default: '0'.
- **appPingEventEventResult**  An enum indicating the result of the event. Please see the wiki for additional information. Default: '0'.
- **appPingEventEventType**  An enum indicating the type of the event. Compatible clients MUST transmit this attribute. Please see the wiki for additional information.
- **appPingEventExtraCode1**  Additional numeric information about the operation's result, encoded as a signed, base-10 integer. Default: '0'.
- **appPingEventInstallTimeMs**  For events representing an install, the time elapsed between the start of the install and the end of the install, in milliseconds. For events representing an entire update flow, the sum of all such durations. Sent in events that have an event type of '2' and '3' only. Default: '0'.
- **appPingEventNumBytesDownloaded**  The number of bytes downloaded for the specified application. Default: '0'.
- **appPingEventSequenceId**  An id that uniquely identifies particular events within one requestId. Since a request can contain multiple ping events, this field is necessary to uniquely identify each possible event.
- **appPingEventSourceUrlIndex**  For events representing a download, the position of the download URL in the list of URLs supplied by the server in a "urls" tag.
- **appPingEventUpdateCheckTimeMs**  For events representing an entire update flow, the time elapsed between the start of the update check and the end of the update check, in milliseconds. Sent in events that have an event type of '2' and '3' only. Default: '0'.
- **appUpdateCheckIsUpdateDisabled**  The state of whether app updates are restricted by group policy. True if updates have been restricted by group policy or false if they have not.
- **appUpdateCheckTargetVersionPrefix**  A component-wise prefix of a version number, or a complete version number suffixed with the $ character. The server should not return an update instruction to a version number that does not match the prefix or complete version number. The prefix is interpreted a dotted-tuple that specifies the exactly-matching elements; it is not a lexical prefix (for example, '1.2.3' must match '1.2.3.4' but must not match '1.2.34'). Default: ''.
- **appUpdateCheckTtToken**  An opaque access token that can be used to identify the requesting client as a member of a trusted-tester group. If non-empty, the request should be sent over SSL or another secure protocol. Default: ''.
- **appVersion**  The version of the product install. Please see the wiki for additional information. Default: '0.0.0.0'.
- **eventType**  A string indicating the type of the event. Please see the wiki for additional information.
- **hwHasAvx**  '1' if the client's hardware supports the AVX instruction set. '0' if the client's hardware does not support the AVX instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse**  '1' if the client's hardware supports the SSE instruction set. '0' if the client's hardware does not support the SSE instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse2**  '1' if the client's hardware supports the SSE2 instruction set. '0' if the client's hardware does not support the SSE2 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse3**  '1' if the client's hardware supports the SSE3 instruction set. '0' if the client's hardware does not support the SSE3 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse41**  '1' if the client's hardware supports the SSE4.1 instruction set. '0' if the client's hardware does not support the SSE4.1 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse42**  '1' if the client's hardware supports the SSE4.2 instruction set. '0' if the client's hardware does not support the SSE4.2 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSsse3**  '1' if the client's hardware supports the SSSE3 instruction set. '0' if the client's hardware does not support the SSSE3 instruction set. '-1' if unknown. Default: '-1'.
- **hwPhysmemory**  The physical memory available to the client, truncated down to the nearest gibibyte. '-1' if unknown. This value is intended to reflect the maximum theoretical storage capacity of the client, not including any hard drive or paging to a hard drive or peripheral. Default: '-1'.
- **isMsftDomainJoined**  '1' if the client is a member of a Microsoft domain. '0' otherwise. Default: '0'.
- **osArch**  The architecture of the operating system (e.g. 'x86', 'x64', 'arm'). '' if unknown. Default: ''.
- **osPlatform**  The operating system family that the within which the Omaha client is running (e.g. 'win', 'mac', 'linux', 'ios', 'android'). '' if unknown. The operating system Name should be transmitted in lowercase with minimal formatting. Default: ''.
- **osServicePack**  The secondary version of the operating system. '' if unknown. Default: ''.
- **osVersion**  The primary version of the operating system. '' if unknown. Default: ''.
- **requestCheckPeriodSec**  The update interval in seconds. The value is read from the registry. Default: '-1'.
- **requestDlpref**  A comma-separated list of values specifying the preferred download URL behavior. The first value is the highest priority, further values reflect secondary, tertiary, et cetera priorities. Legal values are '' (in which case the entire list must be empty, indicating unknown or no-preference) or 'cacheable' (the server should prioritize sending URLs that are easily cacheable). Default: ''.
- **requestDomainJoined**  '1' if the machine is part of a managed enterprise domain. Otherwise '0'.
- **requestInstallSource**  A string specifying the cause of the update flow. For example: 'ondemand', or 'scheduledtask'. Default: ''.
- **requestIsMachine**  '1' if the client is known to be installed with system-level or administrator privileges. '0' otherwise. Default: '0'.
- **requestOmahaShellVersion**  The version of the Omaha installation folder. Default: ''.
- **requestOmahaVersion**  The version of the Omaha updater itself (the entity sending this request). Default: '0.0.0.0'.
- **requestProtocolVersion**  The version of the Omaha protocol. Compatible clients MUST provide a value of '3.0'. Compatible clients must always transmit this attribute. Default: undefined.
- **requestRequestId**  A randomly-generated (uniformly distributed) GUID, corresponding to the Omaha request. Each request attempt should have (with high probability) a unique request id. Default: ''.
- **requestSessionId**  A randomly-generated (uniformly distributed) GUID. Each single update flow (e.g. update check, update application, event ping sequence) should have (with high probability) a single unique session ID. Default: ''.
- **requestTestSource**  Either '', 'dev', 'qa', 'prober', 'auto', or 'ossdev'. Any value except '' indicates that the request is a test and should not be counted toward normal metrics. Default: ''.
- **requestUid**  A randomly-generated (uniformly distributed) GUID, corresponding to the Omaha user. Each request attempt SHOULD have (with high probability) a unique request id. Default: ''.


### Aria.f4a7d46e472049dfba756e11bdbbc08f.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state was not retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (e.g. Canary/Dev/Beta/Stable). client_id is not durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSource**  An enumeration representing the source of this installation: source was not retrieved (0), unspecified source (1), website installer (2), enterprise MSI (3), Windows update (4), Edge updater (5), scheduled or timed task (6, 7), uninstall (8), Edge about page (9), self-repair (10), other install command line (11), reserved (12), unknown source (13).
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **reconsentConfigs**  A comma separated list of all reconsent configurations the current installation has received. Each configuration follows a well-defined format: 2DigitMonth-2DigitYear-3LetterKeyword.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Microsoft.WebBrowser.Installer.EdgeUpdate.Ping

This event sends hardware and software inventory information about the Microsoft Edge Update service, Microsoft Edge applications, and the current system environment, including app configuration, update configuration, and hardware capabilities. It's used to measure the reliability and performance of the EdgeUpdate service and if Microsoft Edge applications are up to date

The following fields are available:

- **appAp**  Microsoft Edge Update parameters, including channel, architecture, platform, and additional parameters identifying the release of Microsoft Edge to update and how to install it. Example: 'beta-arch_x64-full'. Default: ''."
- **appAppId**  The GUID that identifies the product channels such as Edge Canary, Dev, Beta, Stable, and Edge Update.
- **appBrandCode**  The 4-digit brand code under which the the product was installed, if any. Possible values: 'GGLS' (default), 'GCEU' (enterprise install), and '' (unknown).
- **appChannel**  An integer indicating the channel of the installation (e.g. Canary or Dev).
- **appClientId**  A generalized form of the brand code that can accept a wider range of values and is used for similar purposes. Default: ''.
- **appCohort**  A machine-readable string identifying the release channel that the app belongs to. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appCohortHint**  A machine-readable enum indicating that the client has a desire to switch to a different release cohort. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appCohortName**  A stable non-localized human-readable enum indicating which (if any) set of messages the app should display to the user. For example, an app with a cohort name of 'beta' might display beta-specific branding to the user. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appConsentState**  Bit flags describing the diagnostic data disclosure and response flow where 1 indicates the affirmative and 0 indicates the negative or unspecified data. Bit 1 indicates consent was given, bit 2 indicates data originated from the download page, bit 18 indicates choice for sending data about how the browser is used, and bit 19 indicates choice for sending data about websites visited.
- **appDayOfInstall**  The date-based counting equivalent of appInstallTimeDiffSec (the numeric calendar day that the app was installed on). This value is provided by the server in the response to the first request in the installation flow. Default: '-2' (Unknown).
- **appExperiments**  A semicolon-delimited key/value list of experiment identifiers and treatment groups. This field is unused and always empty in Edge Update. Default: ''.
- **appIid**  A GUID that identifies a particular installation flow. For example, each download of a product installer is tagged with a unique GUID. Attempts to install using that installer can then be grouped. A client SHOULD NOT persist the IID GUID after the installation flow of a product is complete.
- **appInstallTimeDiffSec**  The difference between the current time and the install date in seconds. '0' if unknown. Default: '-1'.
- **appLang**  The language of the product install, in IETF BCP 47 representation. Default: ''.
- **appNextVersion**  The version of the app that the update attempted to reach, regardless of the success or failure of the update operation. Default: '0.0.0.0'.
- **appPingEventAppSize**  The total number of bytes of all downloaded packages. Default: '0'.
- **appPingEventDownloadMetricsDownloadedBytes**  For events representing a download, the number of bytes expected to be downloaded. For events representing an entire update flow, the sum of all such expected bytes over the course of the update flow. Default: '0'.
- **appPingEventDownloadMetricsDownloader**  A string identifying the download algorithm and/or stack. Example values include: 'bits', 'direct', 'winhttp', 'p2p'. Sent in events that have an event type of '14' only. Default: ''.
- **appPingEventDownloadMetricsDownloadTimeMs**  For events representing a download, the time elapsed between the start of the download and the end of the download, in milliseconds. For events representing an entire update flow, the sum of all such download times over the course of the update flow. Sent in events that have an event type of '1', '2', '3', and '14' only. Default: '0'.
- **appPingEventDownloadMetricsError**  The error code (if any) of the operation, encoded as a signed base-10 integer. Default: '0'.
- **appPingEventDownloadMetricsServerIpHint**  For events representing a download, the CDN Host IP address that corresponds to the update file server. The CDN host is controlled by Microsoft servers and always maps to IP addresses hosting *.delivery.mp.microsoft.com or msedgesetup.azureedge.net. Default: ''.
- **appPingEventDownloadMetricsTotalBytes**  For events representing a download, the number of bytes expected to be downloaded. For events representing an entire update flow, the sum of all such expected bytes over the course of the update flow. Default: '0'.
- **appPingEventDownloadMetricsUrl**  For events representing a download, the CDN URL provided by the update server for the client to download the update, the URL is controlled by Microsoft servers and always maps back to either *.delivery.mp.microsoft.com or msedgesetup.azureedge.net. Default: ''.
- **appPingEventDownloadTimeMs**  For events representing a download, the time elapsed between the start of the download and the end of the download, in milliseconds. For events representing an entire update flow, the sum of all such download times over the course of the update flow. Sent in events that have an event type of '1', '2', '3', and '14' only. Default: '0'.
- **appPingEventErrorCode**  The error code (if any) of the operation, encoded as a signed, base-10 integer. Default: '0'.
- **appPingEventEventResult**  An enumeration indicating the result of the event. Common values are '0' (Error) and '1' (Success). Default: '0' (Error).
- **appPingEventEventType**  An enumeration indicating the type of the event and the event stage. Default: '0' (Unknown).
- **appPingEventExtraCode1**  Additional numeric information about the operation's result, encoded as a signed, base-10 integer. Default: '0'.
- **appPingEventInstallTimeMs**  For events representing an install, the time elapsed between the start of the install and the end of the install, in milliseconds. For events representing an entire update flow, the sum of all such durations. Sent in events that have an event type of '2' and '3' only. Default: '0'.
- **appPingEventNumBytesDownloaded**  The number of bytes downloaded for the specified application. Default: '0'.
- **appPingEventSequenceId**  An ID that uniquely identifies particular events within one requestId. Since a request can contain multiple ping events, this field is necessary to uniquely identify each possible event.
- **appPingEventSourceUrlIndex**  For events representing a download, the position of the download URL in the list of URLs supplied by the server in a tag.
- **appPingEventUpdateCheckTimeMs**  For events representing an entire update flow, the time elapsed between the start of the update check and the end of the update check, in milliseconds. Sent in events that have an event type of '2' and '3' only. Default: '0'.
- **appUpdateCheckIsUpdateDisabled**  The state of whether app updates are restricted by group policy. True if updates have been restricted by group policy or false if they have not.
- **appUpdateCheckTargetVersionPrefix**  A component-wise prefix of a version number, or a complete version number suffixed with the $ character. The prefix is interpreted a dotted-tuple that specifies the exactly-matching elements; it is not a lexical prefix (for example, '1.2.3' MUST match '1.2.3.4' but MUST NOT match '1.2.34'). Default: ''.
- **appUpdateCheckTtToken**  An opaque access token that can be used to identify the requesting client as a member of a trusted-tester group. If non-empty, the request is sent over SSL or another secure protocol. This field is unused by Edge Update and always empty. Default: ''.
- **appVersion**  The version of the product install. Default: '0.0.0.0'.
- **eventType**  A string representation of appPingEventEventType indicating the type of the event.
- **hwHasAvx**  '1' if the client's hardware supports the AVX instruction set. '0' if the client's hardware does not support the AVX instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse**  '1' if the client's hardware supports the SSE instruction set. '0' if the client's hardware does not support the SSE instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse2**  '1' if the client's hardware supports the SSE2 instruction set. '0' if the client's hardware does not support the SSE2 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse3**  '1' if the client's hardware supports the SSE3 instruction set. '0' if the client's hardware does not support the SSE3 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse41**  '1' if the client's hardware supports the SSE4.1 instruction set. '0' if the client's hardware does not support the SSE4.1 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse42**  '1' if the client's hardware supports the SSE4.2 instruction set. '0' if the client's hardware does not support the SSE4.2 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSsse3**  '1' if the client's hardware supports the SSSE3 instruction set. '0' if the client's hardware does not support the SSSE3 instruction set. '-1' if unknown. Default: '-1'.
- **hwPhysmemory**  The physical memory available to the client, truncated down to the nearest gibibyte. '-1' if unknown. This value is intended to reflect the maximum theoretical storage capacity of the client, not including any hard drive or paging to a hard drive or peripheral. Default: '-1'.
- **isMsftDomainJoined**  '1' if the client is a member of a Microsoft domain. '0' otherwise. Default: '0'.
- **osArch**  The architecture of the operating system (e.g. 'x86', 'x64', 'arm'). '' if unknown. Default: ''.
- **osPlatform**  The operating system family that the within which the Omaha client is running (e.g. 'win', 'mac', 'linux', 'ios', 'android'). '' if unknown. The operating system name should be transmitted in lowercase with minimal formatting. Default: ''.
- **osServicePack**  The secondary version of the operating system. '' if unknown. Default: ''.
- **osVersion**  The primary version of the operating system. '' if unknown. Default: ''.
- **requestCheckPeriodSec**  The update interval in seconds. The value is read from the registry. Default: '-1'.
- **requestDlpref**  A comma-separated list of values specifying the preferred download URL behavior. The first value is the highest priority, further values reflect secondary, tertiary, et cetera priorities. Legal values are '' (in which case the entire list must be empty, indicating unknown or no-preference) or 'cacheable' (the server should prioritize sending URLs that are easily cacheable). Default: ''.
- **requestDomainJoined**  '1' if the device is part of a managed enterprise domain. Otherwise '0'.
- **requestInstallSource**  A string specifying the cause of the update flow. For example: 'ondemand', or 'scheduledtask'. Default: ''.
- **requestIsMachine**  '1' if the client is known to be installed with system-level or administrator privileges. '0' otherwise. Default: '0'.
- **requestOmahaShellVersion**  The version of the Omaha installation folder. Default: ''.
- **requestOmahaVersion**  The version of the Omaha updater itself (the entity sending this request). Default: '0.0.0.0'.
- **requestProtocolVersion**  The version of the Omaha protocol. Compatible clients MUST provide a value of '3.0'. Compatible clients MUST always transmit this attribute. Default: undefined.
- **requestRequestId**  A randomly-generated (uniformly distributed) GUID, corresponding to the Omaha request. Each request attempt SHOULD have (with high probability) a unique request id. Default: ''.
- **requestSessionCorrelationVectorBase**  A client generated random MS Correlation Vector base code used to correlate the update session with update and CDN servers. Default: ''.
- **requestSessionId**  A randomly-generated (uniformly distributed) GUID. Each single update flow (e.g. update check, update application, event ping sequence) SHOULD have (with high probability) a single unique session ID. Default: ''.
- **requestTestSource**  Either '', 'dev', 'qa', 'prober', 'auto', or 'ossdev'. Any value except '' indicates that the request is a test and should not be counted toward normal metrics. Default: ''.
- **requestUid**  A randomly-generated (uniformly distributed) GUID, corresponding to the Omaha user. Each request attempt SHOULD have (with high probability) a unique request id. Default: ''.


## MUI events

### MuiResourceLoaderTraceLogging.MapAndVerifyResourceFileFailure

This event is logged when LdrMapAndVerifyResourceFile fails for an overlay module.

The following fields are available:

- **Culture**  Language tag.
- **DevicePath**  True if file path is a device path.
- **Flags**  Flags used for verification in LdrMapAndVerifyResourceFile.
- **ResourceFileName**  DLL path and name.
- **Status**  Failing status code.


### MuiResourceLoaderTraceLogging.VerifyAlternateResourceModuleWithServiceChecksumFailure

This event logs a failure when a MUI has an incompatible service checksum.

The following fields are available:

- **ActualServiceChecksum**  The checksum in the MUI file.
- **ExpectedServiceChecksum**  The checksum in the neutral binary.
- **ResourceFileName**  DLL path and name which has a failing service checksum.


### NetworkTelemetry.AccessPointData

This event describes the wireless access point to which the Xbox is connected. Collected when a wireless network is joined.



### NetworkTelemetry.FlightControllerInitialize

This event is logged when the flight controller attempts to write the hosts file.



## Sediment events

### Microsoft.Windows.Sediment.OSRSS.CheckingOneSettings

This event indicates the parameters that the Operating System Remediation System Service (OSRSS) uses for a secure ping to Microsoft to help ensure Windows is up to date.

The following fields are available:

- **CustomVer**  The registry value for targeting.
- **IsMetered**  TRUE if the machine is on a metered network.
- **LastVer**  The version of the last successful run.
- **ServiceVersionMajor**  The Major version information of the component.
- **ServiceVersionMinor**  The Minor version information of the component.
- **Time**  The system time at which the event occurred.


## Setup events

### SetupPlatformTel.SetupPlatformTelActivityEvent

This event sends basic metadata about the SetupPlatform update installation process, to help keep Windows up to date.

The following fields are available:

- **FieldName**  Retrieves the event name/data point. Examples: InstallStartTime, InstallEndtime, OverallResult etc.
- **GroupName**  Retrieves the groupname the event belongs to. Example: Install Information, DU Information, Disk Space Information etc.
- **Value**  Value associated with the corresponding event name. For example, time-related events will include the system time


## Software update events

### SoftwareUpdateClientTelemetry.Uninstall

Uninstall event for target update on Windows Update Client. See EventScenario field for specifics (for example, Started/Failed/Succeeded).

The following fields are available:

- **BundleId**  The identifier associated with the specific content bundle. This should not be all zeros if the bundleID was found.
- **BundleRepeatFailCount**  Indicates whether this particular update bundle previously failed.
- **BundleRevisionNumber**  Identifies the revision number of the content bundle.
- **CallerApplicationName**  Name of the application making the Windows Update request. Used to identify context of request.
- **ClassificationId**  Classification identifier of the update content.
- **ClientVersion**  Version number of the software distribution client.
- **CommonProps**  A bitmask for future flags associated with the Windows Update client behavior. There is no value being reported in this field right now. Expected value for this field is 0.
- **DeploymentMutexId**  Mutex identifier of the deployment operation.
- **DeploymentProviderHostModule**  Name of the module which is hosting the Update Deployment Provider for deployment operation.
- **DeploymentProviderMode**  The mode of operation of the Update Deployment Provider.
- **DriverPingBack**  Contains information about the previous driver and system state.
- **DriverRecoveryIds**  The list of identifiers that could be used for uninstalling the drivers when a recovery is required.
- **EventInstanceID**  A globally unique identifier for event instance.
- **EventScenario**  Indicates the purpose of the event (a scan started, succeded, failed, etc.).
- **EventType**  Indicates the event type. Possible values are &quot;Child&quot;, &quot;Bundle&quot;, &quot;Release&quot; or &quot;Driver&quot;.
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode is not specific enough.
- **FeatureUpdatePause**  Indicates whether feature OS updates are paused on the device.
- **FlightBuildNumber**  Indicates the build number of the flight.
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **HardwareId**  If the download was for a driver targeted to a particular device model, this ID indicates the model of the device.
- **IsFinalOutcomeEvent**  Indicates whether this event signals the end of the update/upgrade process.
- **IsFirmware**  Indicates whether an update was a firmware update.
- **IsSuccessFailurePostReboot**  Indicates whether an initial success was then a failure after a reboot.
- **IsWUfBDualScanEnabled**  Flag indicating whether WU-for-Business dual scan is enabled on the device.
- **IsWUfBEnabled**  Flag indicating whether WU-for-Business is enabled on the device.
- **IsWUfBTargetVersionEnabled**  Flag that indicates if the WU-for-Business target version policy is enabled on the device.
- **MergedUpdate**  Indicates whether an OS update and a BSP update were merged for install.
- **ProcessName**  Process name of the caller who initiated API calls into the software distribution client.
- **QualityUpdatePause**  Indicates whether quality OS updates are paused on the device.
- **RelatedCV**  The previous correlation vector that was used by the client before swapping with a new one.
- **RepeatFailCount**  Indicates whether this specific piece of content previously failed.
- **RevisionNumber**  Identifies the revision number of this specific piece of content.
- **ServiceGuid**  A unique identifier for the service that the software distribution client is installing content for (Windows Update, Microsoft Store, etc).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **TargetGroupId**  For drivers targeted to a specific device model, this ID indicates the distribution group of devices receiving that driver.
- **TargetingVersion**  For drivers targeted to a specific device model, this is the version number of the drivers being distributed to the device.
- **UpdateId**  Identifier associated with the specific piece of content.
- **UpdateImportance**  Indicates the importance of a driver and why it received that importance level (0-Unknown, 1-Optional, 2-Important-DNF, 3-Important-Generic, 4-Important-Other, 5-Recommended).
- **UsedSystemVolume**  Indicates whether the device’s main system storage drive or an alternate storage drive was used.
- **WUDeviceID**  Unique device ID controlled by the software distribution client.


## Update events

### Update360Telemetry.UpdateAgentReboot

This event sends information indicating that a request has been sent to suspend an update.

The following fields are available:

- **ErrorCode**  The error code returned for the current reboot.
- **FlightId**  Unique ID for the flight (test instance version).
- **IsSuspendable**  Indicates whether the update has the ability to be suspended and resumed at the time of reboot. When the machine is rebooted and the update is in middle of Predownload or Install and Setup.exe is running, this field is TRUE, if not its FALSE.
- **ObjectId**  The unique value for each Update Agent mode.
- **Reason**  Indicates the HResult why the machine could not be suspended. If it is successfully suspended, the result is 0.
- **RelatedCV**  The correlation vector value generated from the latest USO (Update Service Orchestrator) scan.
- **ScenarioId**  The ID of the update scenario.
- **SessionId**  The ID of the update attempt.
- **UpdateId**  The ID of the update.
- **UpdateState**  Indicates the state of the machine when Suspend is called. For example, Install, Download, Commit.


## Upgrade events

### Setup360Telemetry.Setup360

This event sends data about OS deployment scenarios, to help keep Windows up-to-date.

The following fields are available:

- **FieldName**  Retrieves the data point.
- **FlightData**  Specifies a unique identifier for each group of Windows Insider builds.
- **InstanceId**  Retrieves a unique identifier for each instance of a setup session.
- **ReportId**  Retrieves the report ID.
- **ScenarioId**  Retrieves the deployment scenario.
- **Value**  Retrieves the value associated with the corresponding FieldName.


### Setup360Telemetry.UnexpectedEvent

This event sends data indicating that the device has invoked the unexpected event phase of the upgrade, to help keep Windows up to date.

The following fields are available:

- **ClientId**  With Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe
- **ReportId**  With Windows Update, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Detailed information about the phase/action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that can be used used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT.
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled.
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  This is the Windows Update Client ID. With Windows Update, this is the same as the clientId.


## Windows Update CSP events

### Microsoft.Windows.UpdateCsp.ExecuteRollBackFeatureFailed

This event sends basic telemetry on the failure of the Feature Rollback.

The following fields are available:

- **current**  Result of currency check.
- **dismOperationSucceeded**  Dism uninstall operation status.
- **hResult**  Failure error code.
- **oSVersion**  Build number of the device.
- **paused**  Indicates whether the device is paused.
- **rebootRequestSucceeded**  Reboot Configuration Service Provider (CSP) call success status.
- **sacDevice**  This is the device info.
- **wUfBConnected**  Result of WUfB connection check.


## Windows Update events

### Microsoft.Windows.Update.DataMigrationFramework.DmfMigrationStarted

This event sends data collected at the beginning of the Data Migration Framework (DMF) and parameters involved in its invocation, to help keep Windows up to date.

The following fields are available:

- **MigrationMicrosoftPhases**  The number of Microsoft-authored migrators scheduled to be ran by DMF for this upgrade
- **MigrationOEMPhases**  The number of OEM-authored migrators scheduled to be ran by DMF for this upgrade
- **MigrationStartTime**  The timestamp representing the beginning of the DMF migration
- **WuClientId**  The GUID of the Windows Update client invoking DMF


## XBOX events

### Microsoft.Gaming.Install.ResurrectedInstall

This event is logged when app installation resumes on Xbox console.

The following fields are available:

- **InstanceId**  App install instance ID.
- **Result**  App install resume result.


### Microsoft.Xbox.XceBridge.CS.1.0.0.9.0.2.SFR.ConnectedStandbyEnterEnd

This event is triggered when connected standby is finished activating.



### NuiServiceTelemetryProvider.DriverSensorFirmwareVersion

This event reports the version of the currently installed firmware.



### NuiServiceTelemetryProvider.DriverSensorHardwareVersion

This event reports basic and raw hardware version of the NUI sensor. Also reports serial number.



### NuiServiceTelemetryProvider.SensorFirmwareDeviceError

This event reports sensor firmware device error.



### SignInArbiter.AutoPairingGeneralInfo

This event is reported at various times to note system state.



### XceDiagnosticUploadable.UploaderPerfHeartbeat

This event reports a digest of a number of different counters that are tracked locally by the uploader.



## XDE events

### Microsoft.Emulator.Xde.RunTime.XdeStarted

This event sends basic information regarding the XDE process to address problems with emulator start.

The following fields are available:

- **addUserToHyperVAdmins**  True if user added to Hyper-V admin group.
- **addUserToPerformanceLogUsersGroup**  True if user added to performance group.
- **automateFeatures**  True if automation is being used.
- **bootLanguage**  Boot language for guest.
- **bootToSnapshot**  True if should attempt to boot to snapshot.
- **com1PipeName**  COM1 pipe name.
- **com2PipeName**  COM2 pipe name.
- **diffDiskVhd**  Diff disk name.
- **displayName**  Display name.
- **fastShutdown**  True if should try to shutdown quickly.
- **language**  Language to use for UI.
- **memSize**  Memory size.
- **natDisabled**  True if NAT is to be disabled.
- **noStart**  True if VM shouldn't be started.
- **originalVideoResolution**  Original video resolution.
- **remoteFxDisabled**  Disable GPU.
- **screenDiagonalSize**  Screen diagonal size.
- **sensorsEnabled**  Sensors to enable in guest.
- **showName**  True if display name should appear on UI.
- **showUsage**  True if usage was shown.
- **silentSnapshot**  True if a silent snapshot was taken.
- **silentUi**  True if message boxes should be suppressed.
- **sku**  The emulator sku to use
- **startedBy**  The program that started the emulator.
- **version**  Emulator version.
- **versionLong**  Long format of emulator version.
- **vhdPath**  VHD path.
- **videoResolution**  Video resolution to use.
- **virtualMachineName**  VM name.
- **waitForClientConnection**  True if we should wait for client connection.
- **wp81NetworkStackDisabled**  WP 8.1 networking stack disabled.



