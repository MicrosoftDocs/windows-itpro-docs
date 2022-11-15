---
title: Policy CSP - System
description: Learn policy settings that determine whether users can access the Insider build controls in the advanced options for Windows Update.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 08/26/2021
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - System

<hr/>

<!--Policies-->
## System policies

<dl>
  <dd>
    <a href="#system-allowbuildpreview">System/AllowBuildPreview</a>
  </dd>
  <dd>
    <a href="#system-allowcommercialdatapipeline">System/AllowCommercialDataPipeline</a>
  </dd>
  <dd>
    <a href="#system-allowdesktopanalyticsprocessing">System/AllowDesktopAnalyticsProcessing </a>
  </dd>
  <dd>
    <a href="#system-allowdevicenameindiagnosticdata">System/AllowDeviceNameInDiagnosticData</a>
  </dd>
  <dd>
    <a href="#system-allowembeddedmode">System/AllowEmbeddedMode</a>
  </dd>
  <dd>
    <a href="#system-allowexperimentation">System/AllowExperimentation</a>
  </dd>
  <dd>
    <a href="#system-allowfontproviders">System/AllowFontProviders</a>
  </dd>
  <dd>
    <a href="#system-allowlocation">System/AllowLocation</a>
  </dd>
  <dd>
    <a href="#system-allowmicrosoftmanageddesktopprocessing">System/AllowMicrosoftManagedDesktopProcessing</a>
  </dd>
  <dd>
    <a href="#system-allowstoragecard">System/AllowStorageCard</a>
  </dd>
  <dd>
    <a href="#system-allowtelemetry">System/AllowTelemetry</a>
  </dd>
  <dd>
    <a href="#system-allowupdatecomplianceprocessing">System/AllowUpdateComplianceProcessing</a>
  </dd>
  <dd>
    <a href="#system-allowusertoresetphone">System/AllowUserToResetPhone</a>
  </dd>
 <dd>
    <a href="#system-allowwufbcloudprocessing">System/AllowWUfBCloudProcessing</a>
  </dd>
  <dd>
    <a href="#system-bootstartdriverinitialization">System/BootStartDriverInitialization</a>
  </dd>
  <dd>
    <a href="#system-configuremicrosoft365uploadendpoint">System/ConfigureMicrosoft365UploadEndpoint</a>
  </dd>
  <dd>
    <a href="#system-configuretelemetryoptinchangenotification">System/ConfigureTelemetryOptInChangeNotification</a>
  </dd>
  <dd>
    <a href="#system-configuretelemetryoptinsettingsux">System/ConfigureTelemetryOptInSettingsUx</a>
  </dd>
  <dd>
    <a href="#system-disabledevicedelete">System/DisableDeviceDelete</a>
  </dd>
  <dd>
    <a href="#system-disablediagnosticdataviewer">System/DisableDiagnosticDataViewer</a>
  </dd>
  <dd>
    <a href="#system-disableenterpriseauthproxy">System/DisableEnterpriseAuthProxy</a>
  </dd>
  <dd>
    <a href="#system-disableonedrivefilesync">System/DisableOneDriveFileSync</a>
  </dd>
  <dd>
    <a href="#system-disablesystemrestore">System/DisableSystemRestore</a>
  </dd>
  <dd>
    <a href="#system-feedbackhubalwayssavediagnosticslocally">System/FeedbackHubAlwaysSaveDiagnosticsLocally</a>
  </dd>
  <dd>
    <a href="#system-limitdiagnosticlogcollection">System/LimitDiagnosticLogCollection</a>
  </dd>
  <dd>
    <a href="#system-limitdumpcollection">System/LimitDumpCollection</a>
  </dd>
  <dd>
    <a href="#system-limitenhanceddiagnosticdatawindowsanalytics">System/LimitEnhancedDiagnosticDataWindowsAnalytics</a>
  </dd>
  <dd>
    <a href="#system-telemetryproxy">System/TelemetryProxy</a>
  </dd>
  <dd>
    <a href="#system-turnofffilehistory">System/TurnOffFileHistory</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="system-allowbuildpreview"></a>**System/AllowBuildPreview**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy setting applies only to devices running Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education.

This policy setting determines whether users can access the Insider build controls in the Advanced Options for Windows Update. These controls are located under "Get Insider builds," and enable users to make their devices available for downloading and installing Windows preview software.

If you enable or don't configure this policy setting, users can download and install Windows preview software on their devices. If you disable this policy setting, the item "Get Insider builds" will be unavailable.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Toggle user control over Insider builds*
-   GP name: *AllowBuildPreview*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *AllowBuildPreview.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed. The item "Get Insider builds" is unavailable, users are unable to make their devices available for preview software.
-   1 – Allowed. Users can make their devices available for downloading and installing preview software.
-   2 (default) – Not configured. Users can make their devices available for downloading and installing preview software.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-allowcommercialdatapipeline"></a>**System/AllowCommercialDataPipeline**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting configures an Azure Active Directory-joined device, so that Microsoft is the processor of the Windows diagnostic data collected from the device, subject to the [Product Terms](https://www.microsoft.com/licensing/terms/productoffering).

To enable this behavior, you must complete two steps:

 1. Enable this policy setting.
 2. Join an Azure Active Directory account to the device.

Windows diagnostic data is collected when the Allow Telemetry policy setting is set to 1 – **Required (Basic)** or above.

If you disable or don't configure this setting, Microsoft will be the controller of the Windows diagnostic data collected from the device and processed in accordance with Microsoft’s [privacy statement](https://go.microsoft.com/fwlink/?LinkId=521839) unless you have enabled policies like Allow Update Compliance Processing or Allow Desktop Analytics Processing.

Configuring this setting doesn't change the Windows diagnostic data collection level set for the device or the operation of optional analytics processor services like Desktop Analytics and Update Compliance.

See the documentation at [ConfigureWDD](https://aka.ms/ConfigureWDD) for information on this and other policies that will result in Microsoft being the processor of Windows diagnostic data.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow commercial data pipeline*
-   GP name: *AllowCommercialDataPipeline*
-   GP element: *AllowCommercialDataPipeline*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - Disabled.
-   1 - Enabled.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-allowdesktopanalyticsprocessing"></a>**System/AllowDesktopAnalyticsProcessing**

<!--/Scope-->
<!--Description-->

This policy setting, in combination with the Allow Telemetry and Configure the Commercial ID policy settings, enables organizations to configure the device so that Microsoft is the processor for Windows diagnostic data collected from the device, subject to the [Product Terms](https://www.microsoft.com/licensing/terms/productoffering).

To enable this behavior, you must complete three steps:

 1. Enable this policy setting.
 2. Set **AllowTelemetry** to 1 – **Required (Basic)** or above.
 3. Set the Configure the Commercial ID setting for your Desktop Analytics workspace.

This setting has no effect on devices, unless they're properly enrolled in Desktop Analytics.

When these policies are configured, Windows diagnostic data collected from the device will be subject to Microsoft processor commitments.

If you disable or don't configure this policy setting, devices won't appear in Desktop Analytics.

The following list shows the supported values:

-   0 (default) – Disabled.
-   2 – Allowed.


<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-allowdevicenameindiagnosticdata"></a>**System/AllowDeviceNameInDiagnosticData**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows the device name to be sent to Microsoft as part of Windows diagnostic data. If you disable or don't configure this policy setting, then device name won't be sent to Microsoft as part of Windows diagnostic data.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow device name to be sent in Windows diagnostic data*
-   GP name: *AllowDeviceNameInDiagnosticData*
-   GP element: *AllowDeviceNameInDiagnosticData*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Disabled.
-   1 – Allowed.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-allowembeddedmode"></a>**System/AllowEmbeddedMode**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether set general purpose device to be in embedded mode.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-allowexperimentation"></a>**System/AllowExperimentation**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy isn't supported in Windows 10, version 1607.

This policy setting determines the level that Microsoft can experiment with the product to study user preferences or device behavior.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disabled.
-   1 (default) – Permits Microsoft to configure device settings only.
-   2 – Allows Microsoft to conduct full experimentation.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-allowfontproviders"></a>**System/AllowFontProviders**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Boolean policy setting that determines whether Windows is allowed to download fonts and font catalog data from an online font provider. If you enable this setting, Windows periodically queries an online font provider to determine whether a new font catalog is available. Windows may also download font data if needed to format or render text. If you disable this policy setting, Windows doesn't connect to an online font provider and only enumerates locally installed fonts.

This MDM setting corresponds to the EnableFontProviders Group Policy setting. If both the Group Policy and the MDM settings are configured, the group policy setting takes precedence. If neither is configured, the behavior depends on a DisableFontProviders registry value. In server editions, this registry value is set to 1 by default, so the default behavior is false (disabled). In all other editions, the registry value isn't set by default, so the default behavior is true (enabled).

This setting is used by lower-level components for text display and fond handling and hasn't direct effect on web browsers, which may download web fonts used in web content.

> [!NOTE]
> Reboot is required after setting the policy; alternatively you can stop and restart the FontCache service.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Enable Font Providers*
-   GP name: *EnableFontProviders*
-   GP path: *Network/Fonts*
-   GP ADMX file name: *GroupPolicy.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - false - No traffic to fs.microsoft.com, and only locally installed fonts are available.
-   1 - true (default) - There may be network traffic to fs.microsoft.com, and downloadable fonts are available to apps that support them.

<!--/SupportedValues-->
<!--Validation-->
To verify if System/AllowFontProviders is set to true:

-  After a client machine is rebooted, check whether there's any network traffic from client machine to fs.microsoft.com.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-allowlocation"></a>**System/AllowLocation**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether to allow app access to the Location service.

Most restricted value is 0.

While the policy is set to 0 (Force Location Off) or 2 (Force Location On), any Location service call from an app would trigger the value set by this policy.

When switching the policy back from 0 (Force Location Off) or 2 (Force Location On) to 1 (User Control), the app reverts to its original Location service setting.

For example, an app's original Location setting is Off. The administrator then sets the **AllowLocation** policy to 2 (Force Location On.) The Location service starts working for that app, overriding the original setting. Later, if the administrator switches the **AllowLocation** policy back to 1 (User Control), the app will revert to using its original setting of Off.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Turn off location*
-   GP name: *DisableLocation_2*
-   GP path: *Windows Components/Location and Sensors*
-   GP ADMX file name: *Sensors.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Force Location Off. All Location Privacy settings are toggled off and grayed out. Users can't change the settings, and no apps are allowed access to the Location service, including Cortana and Search.
-   1 (default) – Location service is allowed. The user has control and can change Location Privacy settings on or off.
-   2 – Force Location On. All Location Privacy settings are toggled on and grayed out. Users can't change the settings and all consent permissions will be automatically suppressed.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="system-allowmicrosoftmanageddesktopprocessing"></a>**System/AllowMicrosoftManagedDesktopProcessing**

<!--/Scope-->
<!--Description-->

This policy setting configures an Azure Active Directory-joined device so that Microsoft is the processor of the Windows diagnostic data.

For customers who enroll into the Microsoft Managed Desktop service, this policy will be enabled by default to allow Microsoft to process data for operational and analytic needs. For more information, see [Privacy and personal data](/microsoft-365/managed-desktop/service-description/privacy-personal-data).

This setting has no effect on devices, unless they're properly enrolled in Microsoft Managed Desktop.

When these policies are configured, Windows diagnostic data collected from the device will be subject to Microsoft processor commitments.

If you disable this policy setting, devices may not appear in Microsoft Managed Desktop.

>[!IMPORTANT]
> You should not disable or make changes to this policy as that will severely impact the ability of Microsoft Managed Desktop to manage the devices.

<hr/>

<!--Policy-->
<a href="" id="system-allowstoragecard"></a>**System/AllowStorageCard**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Controls whether the user is allowed to use the storage card for device storage. This setting prevents programmatic access to the storage card.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – SD card use isn't allowed, and USB drives are disabled. This setting doesn't prevent programmatic access to the storage card.
-   1 (default) – Allow a storage card.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-allowtelemetry"></a>**System/AllowTelemetry**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the device to send diagnostic and usage telemetry data, such as Watson.

For more information about diagnostic data, including what is and what isn't collected by Windows, see [Configure Windows diagnostic data in your organization](/windows/privacy/configure-windows-diagnostic-data-in-your-organization).

The following list shows the supported values for Windows 8.1:
-   0 - Not allowed.
-   1 – Allowed, except for Secondary Data Requests.
-   2 (default) – Allowed.

In Windows 10, you can configure this policy setting to decide what level of diagnostic data to send to Microsoft.

The following list shows the supported values for Windows 10 version 1809 and older, choose the value that is applicable to your OS version (older OS values are displayed in the brackets):

- 0 – **Off (Security)** This value turns Windows diagnostic data off.

    > [!NOTE]
    > This value is only applicable to Windows 10 Enterprise, Windows 10 Education, Windows 10 IoT Core (IoT Core), HoloLens 2, and Windows Server 2016 (and later versions). Using this setting on other devices editions of Windows is equivalent to setting the value of 1.

- 1 – **Required (Basic)** Sends basic device info, including quality-related data, app compatibility, and other similar data to keep the device secure and up-to-date.

- 2 – (**Enhanced**) Sends the same data as a value of 1, plus extra insights, including how Windows apps are used, how they perform, and advanced reliability data, such as limited crash dumps.

    > [!NOTE]
    > **Enhanced** is no longer an option for Windows Holographic, version 21H1.

- 3 – **Optional (Full)** Sends the same data as a value of 2, plus extra data necessary to identify and fix problems with devices such as enhanced error logs.

Most restrictive value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Telemetry*
-   GP name: *AllowTelemetry*
-   GP element: *AllowTelemetry*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-allowupdatecomplianceprocessing"></a>**System/AllowUpdateComplianceProcessing**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy setting, in combination with the Allow Telemetry and Configure the Commercial ID policy settings, enables organizations to configure the device so that Microsoft is the processor of the Windows diagnostic data collected from the device, subject to the [Product Terms](https://www.microsoft.com/licensing/terms/productoffering).

To enable this behavior, you must complete three steps:

 1. Enable this policy setting.
 2. Set **AllowTelemetry** to 1 – **Required (Basic)** or above.
 3. Set the Configure the Commercial ID setting for your Update Compliance workspace.

When these policies are configured, Windows diagnostic data collected from the device will be subject to Microsoft processor commitments.

If you disable or don't configure this policy setting, devices won't appear in Update Compliance.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Update Compliance Processing*
-   GP name: *AllowUpdateComplianceProcessing*
-   GP element: *AllowUpdateComplianceProcessing*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Disabled.
-   16 - Enabled.
<!--/SupportedValues-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="system-allowusertoresetphone"></a>**System/AllowUserToResetPhone**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether to allow the user to factory reset the device by using control panel and hardware key combination.

Most restricted value is 0.

> [!TIP]
> This policy is also applicable to Windows 10 and not exclusive to phone.
<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:
-   0 – Not allowed.
-   1 (default) – Allowed to reset to factory default settings.
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-allowwufbcloudprocessing"></a>**System/AllowWUfBCloudProcessing**

<hr/>

<!--/Scope-->
<!--Description-->

This policy setting configures an Azure Active Directory-joined device so that Microsoft is the processor of the Windows diagnostic data collected from the device, subject to the [Product Terms](https://www.microsoft.com/licensing/terms/productoffering).

To enable this behavior, you must complete three steps:

 1. Enable this policy setting.
 2. Set **AllowTelemetry** to 1 – **Required (Basic)** or above.
 3. Join an Azure Active Directory account to the device.

When these policies are configured, Windows diagnostic data collected from the device will be subject to Microsoft processor commitments.

If you disable or don't configure this policy setting, devices enrolled to the Windows Update for Business deployment service won't be able to take advantage of some deployment service features.

<hr/>

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Disabled.
-   8 - Enabled.
<!--/SupportedValues-->


<!--Policy-->
<a href="" id="system-bootstartdriverinitialization"></a>**System/BootStartDriverInitialization**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to specify which boot-start drivers are initialized based on a classification determined by an Early Launch Antimalware boot-start driver. The Early Launch Antimalware boot-start driver can return the following classifications for each boot-start driver:
-  Good: The driver has been signed and hasn't been tampered with.
-  Bad: The driver has been identified as malware. It's recommended that you don't allow known bad drivers to be initialized.
-  Bad, but required for boot: The driver has been identified as malware, but the computer can't successfully boot without loading this driver.
-  Unknown: This driver hasn't been attested to by your malware detection application and hasn't been classified by the Early Launch Antimalware boot-start driver.

If you enable this policy setting, you'll be able to choose which boot-start drivers to initialize next time the computer is started.

If you disable or don't configure this policy setting, the boot start drivers determined to be Good, Unknown, or Bad, but Boot Critical are initialized and the initialization of drivers determined to be Bad is skipped.

If your malware detection application doesn't include an Early Launch Antimalware boot-start driver or if your Early Launch Antimalware boot-start driver has been disabled, this setting has no effect and all boot-start drivers are initialized.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Boot-Start Driver Initialization Policy*
-   GP name: *POL_DriverLoadPolicy_Name*
-   GP path: *System/Early Launch Antimalware*
-   GP ADMX file name: *earlylauncham.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-configuremicrosoft365uploadendpoint"></a>**System/ConfigureMicrosoft365UploadEndpoint**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy sets the upload endpoint for this device’s diagnostic data as part of the Microsoft 365 Update Readiness program.

If your organization is participating in the program and has been instructed to configure a custom upload endpoint, then use this setting to define that endpoint.

The value for this setting will be provided by Microsoft as part of the onboarding process for the program.

Supported value type is string.
<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Microsoft 365 Update Readiness upload endpoint*
-   GP name: *ConfigureMicrosoft365UploadEndpoint*
-   GP element: *ConfigureMicrosoft365UploadEndpoint*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-configuretelemetryoptinchangenotification"></a>**System/ConfigureTelemetryOptInChangeNotification**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines whether a device shows notifications about telemetry levels to people on first sign in or when changes occur in Settings. 

- If you set this policy setting to "Disable telemetry change notifications", telemetry level notifications stop appearing.
- If you set this policy setting to "Enable telemetry change notifications" or don't configure this policy setting, telemetry notifications appear at first sign in and when changes occur in Settings.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure telemetry opt-in change notifications.*
-   GP name: *ConfigureTelemetryOptInChangeNotification*
-   GP element: *ConfigureTelemetryOptInChangeNotification*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:
-   0 (default) - Enable telemetry change notifications
-   1 - Disable telemetry change notifications
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-configuretelemetryoptinsettingsux"></a>**System/ConfigureTelemetryOptInSettingsUx**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines whether people can change their own telemetry levels in Settings. This setting should be used in conjunction with the Allow Telemetry settings.

If you set this policy setting to "Disable Telemetry opt-in Settings", telemetry levels are disabled in Settings, preventing people from changing them.

If you set this policy setting to "Enable Telemetry opt-in Settings" or don't configure this policy setting, people can change their own telemetry levels in Settings.

> [!Note]
> Set the Allow Telemetry policy setting to prevent people from sending diagnostic data to Microsoft beyond your organization's acceptable level of data disclosure.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure telemetry opt-in setting user interface.*
-   GP name: *ConfigureTelemetryOptInSettingsUx*
-   GP element: *ConfigureTelemetryOptInSettingsUx*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:
-   0 (default) - Enable Telemetry opt-in Settings
-   1 - Disable Telemetry opt-in Settings
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-disabledevicedelete"></a>**System/DisableDeviceDelete**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls whether the Delete diagnostic data button is enabled in Diagnostic & Feedback Settings page.

- If you enable this policy setting, the Delete diagnostic data button will be disabled in Settings page, preventing the deletion of diagnostic data collected by Microsoft from the device.
- If you disable or don't configure this policy setting, the Delete diagnostic data button will be enabled in Settings page, which allows people to erase all diagnostic data collected by Microsoft from that device.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Disable deleting diagnostic data*
-   GP name: *DisableDeviceDelete*
-   GP element: *DisableDeviceDelete*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-disablediagnosticdataviewer"></a>**System/DisableDiagnosticDataViewer**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls whether users can enable and launch the Diagnostic Data Viewer from the Diagnostic & Feedback Settings page.

- If you enable this policy setting, the Diagnostic Data Viewer won't be enabled in Settings page, and it will prevent the viewer from showing diagnostic data collected by Microsoft from the device.
- If you disable or don't configure this policy setting, the Diagnostic Data Viewer will be enabled in Settings page.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Disable diagnostic data viewer.*
-   GP name: *DisableDiagnosticDataViewer*
-   GP element: *DisableDiagnosticDataViewer*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-disableenterpriseauthproxy"></a>**System/DisableEnterpriseAuthProxy**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting blocks the Connected User Experience and Telemetry service from automatically using an authenticated proxy, to send data back to Microsoft on Windows 10. If you disable or don't configure this policy setting, the Connected User Experience and Telemetry service will automatically use an authenticated proxy, to send data back to Microsoft. Enabling this policy will block the Connected User Experience and Telemetry service from automatically using an authenticated proxy.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Authenticated Proxy usage for the Connected User Experience and Telemetry service*
-   GP name: *DisableEnterpriseAuthProxy*
-   GP element: *DisableEnterpriseAuthProxy*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-disableonedrivefilesync"></a>**System/DisableOneDriveFileSync**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to prevent apps and features from working with files on OneDrive. If you enable this policy setting:

* Users can't access OneDrive from the OneDrive app or file picker.
* Microsoft Store apps can't access OneDrive using the WinRT API.
* OneDrive doesn't appear in the navigation pane in File Explorer.
* OneDrive files aren't kept in sync with the cloud.
* Users can't automatically upload photos and videos from the camera roll folder.

If you disable or don't configure this policy setting, apps and features can work with OneDrive file storage.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent the usage of OneDrive for file storage*
-   GP name: *PreventOnedriveFileSync*
-   GP path: *Windows Components/OneDrive*
-   GP ADMX file name: *SkyDrive.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (sync enabled).
-   1 – True (sync disabled).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable policy.
2.   Restart machine.
3.   Verify that OneDrive.exe isn't running in Task Manager.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-disablesystemrestore"></a>**System/DisableSystemRestore**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows you to disable System Restore.

This policy setting allows you to turn off System Restore.

System Restore enables users, in case of a problem, to restore their computers to a previous state without losing personal data files. By default, System Restore is turned on for the boot volume.

If you enable this policy setting, System Restore is turned off, then System Restore Wizard can't be accessed. The option to configure System Restore or create a restore point through System Protection is also disabled.

If you disable or don't configure this policy setting, users can perform System Restore, and configure System Restore settings through System Protection.

Also, see the "Turn off System Restore configuration" policy setting. If the "Turn off System Restore" policy setting is disabled or not configured, the "Turn off System Restore configuration" policy setting is used to determine whether the option to configure System Restore is available.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off System Restore*
-   GP name: *SR_DisableSR*
-   GP path: *System/System Restore*
-   GP ADMX file name: *systemrestore.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-feedbackhubalwayssavediagnosticslocally"></a>**System/FeedbackHubAlwaysSaveDiagnosticsLocally**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
When feedback in the Feedback Hub is being filed, diagnostic logs are collected for certain types of feedback. We now offer the option for users to save it locally, in addition to sending it to Microsoft. This policy will allow enterprises to mandate that all diagnostics are saved locally for use in internal investigations.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - False. The Feedback Hub won't always save a local copy of diagnostics that may be created when feedback is submitted. The user will have the option to do so.
- 1 - True. The Feedback Hub should always save a local copy of diagnostics that may be created when feedback is submitted.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-limitdiagnosticlogcollection"></a>**System/LimitDiagnosticLogCollection**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies whether diagnostic log data can be collected when more information is needed to troubleshoot a problem. It's sent only if we have permission to collect optional diagnostic data, and only if the device meets the criteria for more data collection.

If you disable or don't configure this policy setting, we may occasionally collect advanced diagnostic data if the user has opted to send optional diagnostic data.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Limit Diagnostic Log Collection*
-   GP name: *LimitDiagnosticLogCollection*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disabled
-   1 – Enabled

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-limitdumpcollection"></a>**System/LimitDumpCollection**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting limits the type of dumps that can be collected when more information is needed to troubleshoot a problem. These dumps aren't sent unless we have permission to collect optional diagnostic data.

With this policy setting being enabled, Windows Error Reporting is limited to sending kernel mini dumps and user mode triage dumps only.

If you disable or don't configure this policy setting, we may occasionally collect full or heap dumps if the user has opted to send optional diagnostic data.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Limit Dump Collection*
-   GP name: *LimitDumpCollection*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disabled
-   1 – Enabled
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-limitenhanceddiagnosticdatawindowsanalytics"></a>**System/LimitEnhancedDiagnosticDataWindowsAnalytics**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting, in combination with the Allow Telemetry policy setting, enables organizations to send Microsoft a specific set of diagnostic data for IT insights via Windows Analytics services.

To enable this behavior, you must complete two steps:

 1. Enable this policy setting.

 2. Set the **AllowTelemetry** level:

    - For Windows 10 version 1809 and older: set **AllowTelemetry** to Enhanced.

      > [!NOTE]
      > **Enhanced** is no longer an option for Windows Holographic, version 21H1.

    - For Windows 10 version 19H1 and later: set **AllowTelemetry** to Optional (Full).

When you configure these policy settings, a basic level of diagnostic data plus other events that are required for Windows Analytics are sent to Microsoft. These events are documented here: <a href="/windows/privacy/enhanced-diagnostic-data-windows-analytics-events-and-fields" data-raw-source="[Windows 10, version 1709 enhanced telemetry events and fields used by Windows Analytics](/windows/privacy/enhanced-diagnostic-data-windows-analytics-events-and-fields)">Windows 10, version 1709 enhanced telemetry events and fields used by Windows Analytics</a>.

Enabling enhanced diagnostic data in the Allow Telemetry policy in combination with not configuring this policy will also send the required events for Windows Analytics, plus enhanced level telemetry data. This setting has no effect on computers configured to send Required (Basic) or Optional (Full) diagnostic data to Microsoft.

If you disable or don't configure this policy setting, then the level of diagnostic data sent to Microsoft is determined by the System/AllowTelemetry policy.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Limit Enhanced diagnostic data to the minimum required by Windows Analytics*
-   GP name: *LimitEnhancedDiagnosticDataWindowsAnalytics*
-   GP element: *LimitEnhancedDiagnosticDataWindowsAnalytics*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-telemetryproxy"></a>**System/TelemetryProxy**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows you to specify the fully qualified domain name (FQDN) or IP address of a proxy server to forward Connected User Experiences and Telemetry requests. The format for this setting is *&lt;server&gt;:&lt;port&gt;*. The connection is made over a Secure Sockets Layer (SSL) connection. If the named proxy fails, or if there's no proxy specified when this policy is enabled, the Connected User Experiences and Telemetry data won't be transmitted and will remain on the local device.

If you disable or don't configure this policy setting, Connected User Experiences and Telemetry will go to Microsoft using the default proxy configuration.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Connected User Experiences and Telemetry*
-   GP name: *TelemetryProxy*
-   GP element: *TelemetryProxyName*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="system-turnofffilehistory"></a>**System/TurnOffFileHistory**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn off File History.

If you enable this policy setting, File History can't be activated to create regular, automatic backups.

If you disable or don't configure this policy setting, File History can be activated to create regular, automatic backups.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Turn off File History*
-   GP name: *DisableFileHistory*
-   GP path: *Windows Components/File History*
-   GP ADMX file name: *FileHistory.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   false (default) - allow File History
-   true  - turn off File History
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)