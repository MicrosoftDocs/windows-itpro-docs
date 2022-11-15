---
title: Policy CSP - ADMX_AppCompat
description: Policy CSP - ADMX_AppCompat
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 08/20/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_AppCompat

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## Policy CSP - ADMX_AppCompat

<dl>
  <dd>
    <a href="#admx-appcompat-appcompatprevent16bitmach">ADMX_AppCompat/AppCompatPrevent16BitMach
    </a>
  </dd>
  <dd>
    <a href="#admx-appcompat-appcompatremoveprogramcompatproppage">ADMX_AppCompat/AppCompatRemoveProgramCompatPropPage
    </a>
  </dd>
  <dd>
    <a href="#admx-appcompat-appcompatturnoffapplicationimpacttelemetry">ADMX_AppCompat/AppCompatTurnOffApplicationImpactTelemetry
    </a>
  </dd>
  <dd>
    <a href="#admx-appcompat-appcompatturnoffswitchback">ADMX_AppCompat/AppCompatTurnOffSwitchBack
    </a>
  </dd>
  <dd>
    <a href="#admx-appcompat-appcompatturnoffengine">ADMX_AppCompat/AppCompatTurnOffEngine
    </a>
  </dd>
  <dd>
    <a href="#admx-appcompat-appcompatturnoffprogramcompatibilityassistant_1">ADMX_AppCompat/AppCompatTurnOffProgramCompatibilityAssistant_1
    </a>
  </dd>
  <dd>
    <a href="#admx-appcompat-appcompatturnoffprogramcompatibilityassistant_2">ADMX_AppCompat/AppCompatTurnOffProgramCompatibilityAssistant_2
    </a>
  </dd>
  <dd>
    <a href="#admx-appcompat-appcompatturnoffuseractionrecord">ADMX_AppCompat/AppCompatTurnOffUserActionRecord
    </a>
  </dd>
  <dd>
    <a href="#admx-appcompat-appcompatturnoffprograminventory">ADMX_AppCompat/AppCompatTurnOffProgramInventory
    </a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-appcompat-appcompatprevent16bitmach"></a>**ADMX_AppCompat/AppCompatPrevent16BitMach**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
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
This policy setting specifies whether to prevent the MS-DOS subsystem (**ntvdm.exe**) from running on this computer. This setting affects the launching of 16-bit applications in the operating system.

You can use this setting to turn off the MS-DOS subsystem, which will reduce resource usage and prevent users from running 16-bit applications. To run any 16-bit application or any application with 16-bit components, **ntvdm.exe** must be allowed to run. The MS-DOS subsystem starts when the first 16-bit application is launched. While the MS-DOS subsystem is running, any subsequent 16-bit applications launch faster, but overall resource usage on the system is increased.

If the status is set to Enabled, the MS-DOS subsystem is prevented from running, which then prevents any 16-bit applications from running. In addition, any 32-bit applications with 16-bit installers or other 16-bit components can't run.

If the status is set to Disabled, the MS-DOS subsystem runs for all users on this computer.

If the status is set to Not Configured, the OS falls back on a local policy set by the registry DWORD value **HKLM\System\CurrentControlSet\Control\WOW\DisallowedPolicyDefault**. If that value is non-0, this setting prevents all 16-bit applications from running. If that value is 0, 16-bit applications are allowed to run. If that value is also not present, on Windows 10 and above, the OS will launch the 16-bit application support control panel to allow an elevated administrator to make the decision; on Windows 7 and down-level, the OS will allow 16-bit applications to run.

> [!NOTE]
> This setting appears only in Computer Configuration.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent access to 16-bit applications*
-   GP name: *AppCompatPrevent16BitMach*
-   GP path: *Windows Components/Application Compatibility*
-   GP ADMX file name: *AppCompat.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-appcompat-appcompatremoveprogramcompatproppage"></a>**ADMX_AppCompat/AppCompatRemoveProgramCompatPropPage**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
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
This policy setting controls the visibility of the Program Compatibility property page shell extension. This shell extension is visible on the property context-menu of any program shortcut or executable file.

The compatibility property page displays a list of options that can be selected and applied to the application to resolve the most common issues affecting legacy applications.

Enabling this policy setting removes the property page from the context-menus, but doesn't affect previous compatibility settings applied to application using this interface.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Program Compatibility Property Page*
-   GP name: *AppCompatRemoveProgramCompatPropPage*
-   GP path: *Windows Components/Application Compatibility*
-   GP ADMX file name: *AppCompat.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-appcompat-appcompatturnoffapplicationimpacttelemetry"></a>**ADMX_AppCompat/AppCompatTurnOffApplicationImpactTelemetry**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
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
The policy setting controls the state of the Application Telemetry engine in the system.

Application Telemetry is a mechanism that tracks anonymous usage of specific Windows system components by applications.

Turning off Application Telemetry by selecting "enable" will stop the collection of usage data.

If the customer Experience Improvement program is turned off, Application Telemetry will be turned off regardless of how this policy is set.

Disabling telemetry will take effect on any newly launched applications. To ensure that telemetry collection has stopped for all applications, reboot your machine.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Application Telemetry*
-   GP name: *AppCompatTurnOffApplicationImpactTelemetry*
-   GP path: *Windows Components/Application Compatibility*
-   GP ADMX file name: *AppCompat.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-appcompat-appcompatturnoffswitchback"></a>**ADMX_AppCompat/AppCompatTurnOffSwitchBack**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
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
The policy setting controls the state of the Switchback compatibility engine in the system.

Switchback is a mechanism that provides generic compatibility mitigation to older applications by providing older behavior to old applications and new behavior to new applications.

Switchback is on by default.

If you enable this policy setting, Switchback will be turned off. Turning off Switchback may degrade the compatibility of older applications. This option is useful for server administrators who require performance and are aware of compatibility of the applications they're using.

If you disable or don't configure this policy setting, the Switchback will be turned on.

Reboot the system after changing the setting to ensure that your system accurately reflects those changes.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off SwitchBack Compatibility Engine*
-   GP name: *AppCompatTurnOffSwitchBack*
-   GP path: *Windows Components/Application Compatibility*
-   GP ADMX file name: *AppCompat.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-appcompat-appcompatturnoffengine"></a>**ADMX_AppCompat/AppCompatTurnOffEngine**

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
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
This policy setting controls the state of the application compatibility engine in the system.

The engine is part of the loader and looks through a compatibility database every time an application is started on the system. If a match for the application is found it provides either run-time solutions or compatibility fixes, or displays an Application Help message if the application has a known problem.

Turning off the application compatibility engine will boost system performance. However, this turn-off will degrade the compatibility of many popular legacy applications, and won't block known incompatible applications from installing. For example, this prevention of blocking may result in a blue screen if an old anti-virus application is installed.

The Windows Resource Protection and User Account Control features of Windows use the application compatibility engine to provide mitigations for application problems. If the engine is turned off, these mitigations won't be applied to applications and their installers and these applications may fail to install or run properly.

This option is useful to server administrators who require faster performance and are aware of the compatibility of the applications they're using. It's useful for a web server where applications may be launched several hundred times a second, and the performance of the loader is essential.

> [!NOTE]
> Many system processes cache the value of this setting for performance reasons. If you make changes to this setting, reboot to ensure that your system accurately reflects those changes.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Application Compatibility Engine*
-   GP name: *AppCompatTurnOffEngine*
-   GP path: *Windows Components/Application Compatibility*
-   GP ADMX file name: *AppCompat.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-appcompat-appcompatturnoffprogramcompatibilityassistant_1"></a>**ADMX_AppCompat/AppCompatTurnOffProgramCompatibilityAssistant_1**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting exists only for backward compatibility, and isn't valid for this version of Windows. To configure the Program Compatibility Assistant, use the 'Turn off Program Compatibility Assistant' setting under Computer Configuration\Administrative Templates\Windows Components\Application Compatibility.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Program Compatibility Assistant*
-   GP name: *AppCompatTurnOffProgramCompatibilityAssistant_1*
-   GP path: *Windows Components/Application Compatibility*
-   GP ADMX file name: *AppCompat.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-appcompat-appcompatturnoffprogramcompatibilityassistant_2"></a>**ADMX_AppCompat/AppCompatTurnOffProgramCompatibilityAssistant_2**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
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
This policy setting controls the state of the Program Compatibility Assistant (PCA). The PCA monitors applications run by the user. When a potential compatibility issue with an application is detected, the PCA will prompt the user with recommended solutions. To configure the diagnostic settings for the PCA, go to System->Troubleshooting and Diagnostics->Application Compatibility Diagnostics.

If you enable this policy setting, the PCA will be turned off. The user won't be presented with solutions to known compatibility issues when running applications. Turning off the PCA can be useful for system administrators who require better performance and are already aware of application compatibility issues.

If you disable or don't configure this policy setting, the PCA will be turned on. To configure the diagnostic settings for the PCA, go to System->Troubleshooting and Diagnostics->Application Compatibility Diagnostics.

> [!NOTE]
> The Diagnostic Policy Service (DPS) and Program Compatibility Assistant Service must be running for the PCA to run. These services can be configured by using the Services snap-in to the Microsoft Management Console.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Program Compatibility Assistant*
-   GP name: *AppCompatTurnOffProgramCompatibilityAssistant_2*
-   GP path: *Windows Components/Application Compatibility*
-   GP ADMX file name: *AppCompat.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-appcompat-appcompatturnoffuseractionrecord"></a>**ADMX_AppCompat/AppCompatTurnOffUserActionRecord**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
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
This policy setting controls the state of Steps Recorder.

Steps Recorder keeps a record of steps taken by the user. The data generated by Steps Recorder can be used in feedback systems such as Windows Error Reporting to help developers understand and fix problems. The data includes user actions such as keyboard input and mouse input, user interface data, and screenshots.  Steps Recorder includes an option to turn on and off data collection.

If you enable this policy setting, Steps Recorder will be disabled.

If you disable or don't configure this policy setting, Steps Recorder will be enabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Steps Recorder*
-   GP name: *AppCompatTurnOffUserActionRecord*
-   GP path: *Windows Components/Application Compatibility*
-   GP ADMX file name: *AppCompat.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-appcompat-appcompatturnoffprograminventory"></a>**ADMX_AppCompat/AppCompatTurnOffProgramInventory**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
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
This policy setting controls the state of the Inventory Collector.

The Inventory Collector inventories applications, files, devices, and drivers on the system and sends the information to Microsoft. This information is used to help diagnose compatibility problems.

If you enable this policy setting, the Inventory Collector will be turned off and data won't be sent to Microsoft. Collection of installation data through the Program Compatibility Assistant is also disabled.

If you disable or don't configure this policy setting, the Inventory Collector will be turned on.

> [!NOTE]
> This policy setting has no effect if the Customer Experience Improvement Program is turned off. The Inventory Collector will be off.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Inventory Collector*
-   GP name: *AppCompatTurnOffProgramInventory*
-   GP path: *Windows Components/Application Compatibility*
-   GP ADMX file name: *AppCompat.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
