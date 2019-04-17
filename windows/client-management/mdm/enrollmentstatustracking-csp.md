---
title: EnrollmentStatusTracking CSP
description: The EnrollmentStatusTracking configuration service provider is used by the blocking Enrollment Status Page (ESP) to track Win32 app installations through Sidecar, SCCM, or any other client agent used to install apps. It sends the installation status of both the provider and the Win32 apps back to the ESP, which is displayed on the ESP UI.
.
ms.author: v-madhi@microsoft.com
ms.topic: article
ms.prod: w10
ms.technology: windows
author: ManikaDhiman
ms.date: 04/10/2019
---

# EnrollmentStatusTracking CSP
> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, with respect to the information provided here.

During Autopilot deployment, you can configure the Enrollment Status Page (ESP) to block the device use until the required apps are installed. Instead of blocking the device use until all the apps are installed, you can select which apps must be installed before using the device. The EnrollmentStatusTracking configuration service provider (CSP) is used by Intune's SideCar agent for configuring ESP to block the device use until the required Win32 apps are installed. It tracks the installation status information of the required apps and sends it to ESP, which is displayed on the ESP UI to the user.

The following diagram shows the EnrollmentStatusTracking CSP in tree format.

![dmclient csp](images/provisioning-csp-dmclient-th2.png)

<a href="" id="device-or-user"></a>**Device or User**  
For device certificates, use **./Device/Vendor/MSFT** path and for user certificates use **./User/Vendor/MSFT** path.

<a href="" id="enrollmentstatustracking"></a>**EnrollmentStatusTracking**
<!--Required.-->Root node for the CSP. Provides the settings to communicate what policies the ESP must block on. Using these settings, policy providers register themselves and the set of policies that must be tracked. The ESP includes the counts of these policy settings in the status message that is displayed to the user. It also blocks ESP until all the policies are provisioned. The policy provider is expected to drive the status updates by updating the appropriate node values, which is then reflected in the ESP status message.

Scope is permanent. Supported operation is Get.

<a href="" id="setup"></a>**Setup**  
Required. Provides the settings that ESP reads during the account setup phase in the user context and device setup phase in the device context. Policy providers use this node to communicate progress status back to the ESP, which is then displayed to the user through progress messages.

Scope is permanent. Supported operation is Get.

<a href="" id="apps"></a>**Apps**  
Required. Provides the settings for ESP to block until the specified policies are provisioned and to provide status update through progress messages.

Scope is permanent. Supported operation is Get.

<a href="" id="apps-policyproviders"></a>**Apps/PolicyProviders**  
Required. Provides the settings that the ESP reads during the device setup phase. Policy providers use these nodes to communicate progress status back to the ESP, which is then displayed to the user through progress message updates.

Scope is permanent. Supported operation is Get.

<a href="" id="apps-policyproviders-providername"></a>**Apps/PolicyProviders**/***ProviderName***  
Optional. Represents an app policy provider for the ESP. Existence of this node indicates to the ESP that it should not show the tracking status message until the TrackingPoliciesCreated node is set to true.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

<a href="" id="apps-policyproviders-providername-trackingpoliciescreated"></a>**Apps/PolicyProviders/*ProviderName*/TrackingPoliciesCreated**  
Required. Indicates whether the provider has created the required policies for the ESP to use for tracking app installation progress. The policy provider is expected to set the value of this node, and not the MDM server.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

Value type is boolean. The expected values are as follows:
- true: Indicates <>
- false: Indicates <>. This is the default.

<a href="" id="apps-tracking"></a>**Apps/Tracking**  
Required. Represents an app policy provider for the Enrollment Status Page (ESP). Existence of this node indicates to the ESP that it should not show the tracking status message until the TrackingPoliciesCreated node has been set to true.

Scope is permanent. Supported operation is Get.

<a href="" id="apps-tracking-providername"></a>**Apps/Tracking/*ProviderName***  
Optional. Indicates the name of the provider responsible for installing the apps and providing status back to the Enrollment Status Page.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

<a href="" id="apps-tracking-providername-appname"></a>**Apps/Tracking/*ProviderName*/*AppName***  
Optional. Contains a unique name of the app whose progress is tracked in the ESP. The policy provider can define any value for this node as it is not used by the ESP directly.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

<a href="" id="apps-tracking-providername-appname-trackinguri"></a>**Apps/Tracking/*ProviderName*/*AppName*/TrackingUri**  
Optional. An optional URI to another CSP for tracking the apps installation. If this value is not set, installation status is derived from the InstallationState node.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

Value type is chr.

<a href="" id="apps-tracking-providername-appname-installationstate"></a>**Apps/Tracking/*ProviderName*/*AppName*/InstallationState**  
Optional. Represents the installation state for the app. The policy providers (not the MDM server) must update this node for the ESP to track the installation progress and update the status message.

Expected values are as follows:
- 1 = NotInstalled
- 2 = InProgress
- 3 = Completed
- 4 = Error

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

Value type is integer.

<a href="" id="apps-tracking-providername-appname-rebootrequired"></a>**Apps/Tracking/*ProviderName*/*AppName*/RebootRequired**  
Optional. Indicates if the app installation requires ESP to issue a reboot. The policy providers installing the app (not the MDM server) must set this node.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

Value type is integer. Expected values are as follows:
- 1 = NotRequired
- 2 = SoftReboot
- 3 = HardReboot
If the policy providers do not set this node, the ESP will not reboot the device for the app install.

<a href="" id="setup-hasprovisioningcompleted"></a>**Setup/HasProvisioningCompleted**  
Required. Indicates the policy provisioning status. The ESP sets this node when it completes the provisioning. Providers can query this node to determine whether or not ESP is displayed. For example, when an app install requires a reboot, the policy provider lets the ESP issue the reboot by setting ```RebootRequired``` value for that app only if the ESP is running; otherwise, the policy provider is responsible for issuing a reboot themselves.

Scope is permanent. Supported operation is Get.

Value type is boolean. Expected values are as follows:
- false: Indicates that the <>. This is the default.
- true: Indicates that the <>.

<a href="" id="devicepreparation"></a>**DevicePreparation** (only for ./Device/Vendor/MSFT)
Required. Specifies the settings that ESP reads during the the Device Preparation phase. These setting are used to orchestrate any setup activities prior to provisioning the device in the Device Setup phase of the ESP. This node is supported only in the device context.

Scope is permanent. Supported operation is Get.

<a href="" id="devicepreparation-policyproviders"></a>**DevicePreparation/PolicyProviders** (only for ./Device/Vendor/MSFT)
Required. Indicates to the ESP that it should wait in the Device Preparation phase until all the policy providers are installed or marked as not required.

Scope is permanent. Supported operation is Get.

<a href="" id="devicepreparation-policyproviders-providername"></a>**DevicePreparation/PolicyProviders/*ProviderName*** (only for ./Device/Vendor/MSFT)
Optional. Represents a policy provider for the ESP. The node should be given a unique name for the policy provider. Registration of a policy provider indicates to ESP that it should block in the Device Preparation phase until the provider sets its InstallationState node to 1 (not required) or 2 (complete).  Once all registered policy providers have been marked as completed (or not required), the ESP will progress to the Device Setup phase.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

<a href="" id="devicepreparation-policyproviders-providername-installationstate"></a>**DevicePreparation/PolicyProviders/*ProviderName*/InstallationState** (only for ./Device/Vendor/MSFT)
Required. Communicates the policy provider installation state back to the Enrollment Status Page.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

Value type is integer. Expected values are as follows:
- 1 = NotInstalled
- 2 = NotRequired
- 3= Completed
- 4 = Error

<a href="" id="devicepreparation-policyproviders-providername-lasterror"></a>**DevicePreparation/PolicyProviders/*ProviderName*/LastError** (only for ./Device/Vendor/MSFT)
Required. Represents the last error code during the application installation process. If a policy provider fails to install, it can optionally set an HRESULT error code that the Enrollment Status Page can display in an error message to the user. This node is read by the Enrollment Status Page only when the provider's InstallationState node is set to 3 (Error). This node is only intended to be set by the policy provider itself, not the MDM server.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

Value type is integer. <what are the expected values?>

<a href="" id="devicepreparation-policyproviders-providername-timeout"></a>**DevicePreparation/PolicyProviders/*ProviderName*/Timeout** (only for ./Device/Vendor/MSFT)
Required. Represents the amount of time, in minutes that the provider installation process can run before the ESP shows an error. Provider installation is complete when the InstallationState node is set to 2 (NotRequired) or 3 (Complete).  If no timeout value is supplied the ESP will choose a default timeout value of 15 minutes.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

Value type is integer. <what are the expected values?> The default is 15 minutes. <Is there a maximum value here?>

<a href="" id="devicepreparation-policyproviders-providername-trackedresourcetypes"></a>**DevicePreparation/PolicyProviders/*ProviderName*/TrackedResourceTypes** (only for ./Device/Vendor/MSFT)
Required. This node's children registers which resource types the policy provider supports for provisioning. Only registered providers for a particular resource type will have their policies incorporated with Enrollment Status Page tracking message.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

<a href="" id="devicepreparation-policyproviders-providername-trackedresourcetypes-Apps"></a>**DevicePreparation/PolicyProviders/*ProviderName*/TrackedResourceTypes/Apps** (only for ./Device/Vendor/MSFT)
Required. This node registers the policy provider for App provisioning.

Scope is dynamic. Supported operations are Get, Add, Delete, and Replace.

Value type is boolean. Expected values are as follows:
- false: Indicates that the <>. This is the default.
- true: Indicates that the <>.