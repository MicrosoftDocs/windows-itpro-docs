---
title: Policy CSP - ADMX_ErrorReporting
description: Policy CSP - ADMX_ErrorReporting
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 11/23/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_ErrorReporting
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_ErrorReporting policies  

<dl>
  <dd>
    <a href="#admx-errorreporting-pch-allornonedef">ADMX_ErrorReporting/PCH_AllOrNoneDef</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-pch-allornoneex">ADMX_ErrorReporting/PCH_AllOrNoneEx</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-pch-allornoneinc">ADMX_ErrorReporting/PCH_AllOrNoneInc</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-pch-configurereport">ADMX_ErrorReporting/PCH_ConfigureReport</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-pch-reportoperatingsystemfaults">ADMX_ErrorReporting/PCH_ReportOperatingSystemFaults</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werarchive-1">ADMX_ErrorReporting/WerArchive_1</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werarchive-2">ADMX_ErrorReporting/WerArchive_2</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werautoapproveosdumps-1">ADMX_ErrorReporting/WerAutoApproveOSDumps_1</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werautoapproveosdumps-2">ADMX_ErrorReporting/WerAutoApproveOSDumps_2</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werbypassdatathrottling-1">ADMX_ErrorReporting/WerBypassDataThrottling_1</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werbypassdatathrottling-2">ADMX_ErrorReporting/WerBypassDataThrottling_2</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werbypassnetworkcostthrottling-1">ADMX_ErrorReporting/WerBypassNetworkCostThrottling_1</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werbypassnetworkcostthrottling-2">ADMX_ErrorReporting/WerBypassNetworkCostThrottling_2</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werbypasspowerthrottling-1">ADMX_ErrorReporting/WerBypassPowerThrottling_1</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werbypasspowerthrottling-2">ADMX_ErrorReporting/WerBypassPowerThrottling_2</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-wercer">ADMX_ErrorReporting/WerCER</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werconsentcustomize-1">ADMX_ErrorReporting/WerConsentCustomize_1</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werconsentoverride-1">ADMX_ErrorReporting/WerConsentOverride_1</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werconsentoverride-2">ADMX_ErrorReporting/WerConsentOverride_2</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werdefaultconsent-1">ADMX_ErrorReporting/WerDefaultConsent_1</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werdefaultconsent-2">ADMX_ErrorReporting/WerDefaultConsent_2</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werdisable-1">ADMX_ErrorReporting/WerDisable_1</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werexlusion-1">ADMX_ErrorReporting/WerExlusion_1</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werexlusion-2">ADMX_ErrorReporting/WerExlusion_2</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-wernologging-1">ADMX_ErrorReporting/WerNoLogging_1</a>
  </dd>
    <dd>
    <a href="#admx-errorreporting-wernologging-2">ADMX_ErrorReporting/WerNoLogging_2</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-wernosecondleveldata-1">ADMX_ErrorReporting/WerNoSecondLevelData_1</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werqueue-1">ADMX_ErrorReporting/WerQueue_1</a>
  </dd>
  <dd>
    <a href="#admx-errorreporting-werqueue-2">ADMX_ErrorReporting/WerQueue_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-pch-allornonedef"></a>**ADMX_ErrorReporting/PCH_AllOrNoneDef**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether errors in general applications are included in reports when Windows Error Reporting is enabled.

If you enable this policy setting, you can instruct Windows Error Reporting in the Default pull-down menu to report either all application errors (the default setting), or no application errors.

If the Report all errors in Microsoft applications check box is filled, all errors in Microsoft applications are reported, regardless of the setting in the Default pull-down menu. When the Report all errors in Windows check box is filled, all errors in Windows applications are reported, regardless of the setting in the Default dropdown list. The Windows applications category is a subset of Microsoft applications.

If you disable or do not configure this policy setting, users can enable or disable Windows Error Reporting in Control Panel. The default setting in Control Panel is Upload all applications.

This policy setting is ignored if the Configure Error Reporting policy setting is disabled or not configured.

For related information, see the Configure Error Reporting and Report Operating System Errors policy settings.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Default application reporting settings*
-   GP name: *PCH_AllOrNoneDef*
-   GP path: *Windows Components\Windows Error Reporting\Advanced Error Reporting Settings*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-pch-allornoneex"></a>**ADMX_ErrorReporting/PCH_AllOrNoneEx**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls Windows Error Reporting behavior for errors in general applications when Windows Error Reporting is turned on.

If you enable this policy setting, you can create a list of applications that are never included in error reports. To create a list of applications for which Windows Error Reporting never reports errors, click Show under the Exclude errors for applications on this list setting, and then add or remove applications from the list of application file names in the Show Contents dialog box (example: notepad.exe). File names must always include the .exe file name extension. Errors that are generated by applications in this list are not reported, even if the Default Application Reporting Settings policy setting is configured to report all application errors.

If this policy setting is enabled, the Exclude errors for applications on this list setting takes precedence. If an application is listed both in the List of applications to always report errors for policy setting, and in the exclusion list in this policy setting, the application is excluded from error reporting. You can also use the exclusion list in this policy setting to exclude specific Microsoft applications or parts of Windows if the check boxes for these categories are filled in the Default application reporting settings policy setting.

If you disable or do not configure this policy setting, the Default application reporting settings policy setting takes precedence.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *List of applications to never report errors for*
-   GP name: *PCH_AllOrNoneEx*
-   GP path: *Windows Components\Windows Error Reporting\Advanced Error Reporting Settings*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-pch-allornoneinc"></a>**ADMX_ErrorReporting/PCH_AllOrNoneInc**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies applications for which Windows Error Reporting should always report errors.

To create a list of applications for which Windows Error Reporting never reports errors, click Show under the Exclude errors for applications on this list setting, and then add or remove applications from the list of application file names in the Show Contents dialog box (example: notepad.exe). Errors that are generated by applications in this list are not reported, even if the Default Application Reporting Settings policy setting is configured to report all application errors.

If you enable this policy setting, you can create a list of applications that are always included in error reporting. To add applications to the list, click Show under the Report errors for applications on this list setting, and edit the list of application file names in the Show Contents dialog box. The file names must include the .exe file name extension (for example, notepad.exe). Errors that are generated by applications on this list are always reported, even if the Default dropdown in the Default application reporting policy setting is set to report no application errors.

If the Report all errors in Microsoft applications or Report all errors in Windows components check boxes in the Default Application Reporting policy setting are filled, Windows Error Reporting reports errors as if all applications in these categories were added to the list in this policy setting. (Note: The Microsoft applications category includes the Windows components category.)

If you disable this policy setting or do not configure it, the Default application reporting settings policy setting takes precedence.

Also see the "Default Application Reporting" and "Application Exclusion List" policies.

This setting will be ignored if the 'Configure Error Reporting' setting is disabled or not configured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *List of applications to always report errors for*
-   GP name: *PCH_AllOrNoneInc*
-   GP path: *Windows Components\Windows Error Reporting\Advanced Error Reporting Settings*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-pch-configurereport"></a>**ADMX_ErrorReporting/PCH_ConfigureReport**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures how errors are reported to Microsoft, and what information is sent when Windows Error Reporting is enabled.

This policy setting does not enable or disable Windows Error Reporting. To turn Windows Error Reporting on or off, see the Turn off Windows Error Reporting policy setting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings.

> [!IMPORTANT]
> If the Turn off Windows Error Reporting policy setting is not configured, then Control Panel settings for Windows Error Reporting override this policy setting.

If you enable this policy setting, the setting overrides any user changes made to Windows Error Reporting settings in Control Panel, and default values are applied for any Windows Error Reporting policy settings that are not configured (even if users have changed settings by using Control Panel). If you enable this policy setting, you can configure the following settings in the policy setting:

- "Do not display links to any Microsoft ‘More information’ websites": Select this option if you do not want error dialog boxes to display links to Microsoft websites.

- "Do not collect additional files": Select this option if you do not want additional files to be collected and included in error reports.

- "Do not collect additional computer data": Select this if you do not want additional information about the computer to be collected and included in error reports.

- "Force queue mode for application errors": Select this option if you do not want users to report errors. When this option is selected, errors are stored in a queue directory, and the next administrator to log on to the computer can send the error reports to Microsoft.

- "Corporate file path": Type a UNC path to enable Corporate Error Reporting.  All errors are stored at the specified location instead of being sent directly to Microsoft, and the next administrator to log onto the computer can send the error reports to Microsoft.

- "Replace instances of the word ‘Microsoft’ with":  You can specify text with which to customize your error report dialog boxes.  The word ""Microsoft"" is replaced with the specified text.

If you do not configure this policy setting, users can change Windows Error Reporting settings in Control Panel. By default, these settings are Enable Reporting on computers that are running Windows XP, and Report to Queue on computers that are running Windows Server 2003.

If you disable this policy setting, configuration settings in the policy setting are left blank.

See related policy settings Display Error Notification (same folder as this policy setting), and Turn off Windows Error Reporting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Error Reporting*
-   GP name: *PCH_ConfigureReport*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-pch-reportoperatingsystemfaults"></a>**ADMX_ErrorReporting/PCH_ReportOperatingSystemFaults**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether errors in the operating system are included Windows Error Reporting is enabled.

If you enable this policy setting, Windows Error Reporting includes operating system errors.

If you disable this policy setting, operating system errors are not included in error reports.

If you do not configure this policy setting, users can change this setting in Control Panel. By default, Windows Error Reporting settings in Control Panel are set to upload operating system errors.

See also the Configure Error Reporting policy setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Report operating system errors*
-   GP name: *PCH_ReportOperatingSystemFaults*
-   GP path: *Windows Components\Windows Error Reporting\Advanced Error Reporting Settings*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werarchive-1"></a>**ADMX_ErrorReporting/WerArchive_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls the behavior of the Windows Error Reporting archive.

If you enable this policy setting, you can configure Windows Error Reporting archiving behavior. If Archive behavior is set to Store all, all data collected for each error report is stored in the appropriate location. If Archive behavior is set to Store parameters only, only the minimum information required to check for an existing solution is stored. The Maximum number of reports to store setting determines how many reports are stored before older reports are automatically deleted.

If you disable or do not configure this policy setting, no Windows Error Reporting information is stored.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Report Archive*
-   GP name: *WerArchive_1*
-   GP path: *Windows Components\Windows Error Reporting\Advanced Error Reporting Settings*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werarchive-2"></a>**ADMX_ErrorReporting/WerArchive_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls the behavior of the Windows Error Reporting archive.

If you enable this policy setting, you can configure Windows Error Reporting archiving behavior. If Archive behavior is set to Store all, all data collected for each error report is stored in the appropriate location. If Archive behavior is set to Store parameters only, only the minimum information required to check for an existing solution is stored. The Maximum number of reports to store setting determines how many reports are stored before older reports are automatically deleted.

If you disable or do not configure this policy setting, no Windows Error Reporting information is stored.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Report Archive*
-   GP name: *WerArchive_2*
-   GP path: *Windows Components\Windows Error Reporting\Advanced Error Reporting Settings*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werautoapproveosdumps-1"></a>**ADMX_ErrorReporting/WerAutoApproveOSDumps_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether memory dumps in support of OS-generated error reports can be sent to Microsoft automatically. This policy does not apply to error reports generated by 3rd-party products, or additional data other than memory dumps.

If you enable or do not configure this policy setting, any memory dumps generated for error reports by Microsoft Windows are automatically uploaded, without notification to the user.

If you disable this policy setting, then all memory dumps are uploaded according to the default consent and notification settings.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Automatically send memory dumps for OS-generated error reports*
-   GP name: *WerAutoApproveOSDumps_1*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werautoapproveosdumps-2"></a>**ADMX_ErrorReporting/WerAutoApproveOSDumps_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether memory dumps in support of OS-generated error reports can be sent to Microsoft automatically. This policy does not apply to error reports generated by 3rd-party products, or additional data other than memory dumps.

If you enable or do not configure this policy setting, any memory dumps generated for error reports by Microsoft Windows are automatically uploaded, without notification to the user.

If you disable this policy setting, then all memory dumps are uploaded according to the default consent and notification settings.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Automatically send memory dumps for OS-generated error reports*
-   GP name: *WerAutoApproveOSDumps_2*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werbypassdatathrottling-1"></a>**ADMX_ErrorReporting/WerBypassDataThrottling_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether Windows Error Reporting (WER) sends additional, second-level report data even if a CAB file containing data about the same event types has already been uploaded to the server.

If you enable this policy setting, WER does not throttle data; that is, WER uploads additional CAB files that can contain data about the same event types as an earlier uploaded report.

If you disable or do not configure this policy setting, WER throttles data by default; that is, WER does not upload more than one CAB file for a report that contains data about the same event types.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not throttle additional data*
-   GP name: *WerBypassDataThrottling_1*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werbypassdatathrottling-2"></a>**ADMX_ErrorReporting/WerBypassDataThrottling_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether Windows Error Reporting (WER) sends additional, second-level report data even if a CAB file containing data about the same event types has already been uploaded to the server.

If you enable this policy setting, WER does not throttle data; that is, WER uploads additional CAB files that can contain data about the same event types as an earlier uploaded report.

If you disable or do not configure this policy setting, WER throttles data by default; that is, WER does not upload more than one CAB file for a report that contains data about the same event types.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not throttle additional data*
-   GP name: *WerBypassDataThrottling_2*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werbypassnetworkcostthrottling-1"></a>**ADMX_ErrorReporting/WerBypassNetworkCostThrottling_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether Windows Error Reporting (WER) checks for a network cost policy that restricts the amount of data that is sent over the network.

If you enable this policy setting, WER does not check for network cost policy restrictions, and transmits data even if network cost is restricted.

If you disable or do not configure this policy setting, WER does not send data, but will check the network cost policy again if the network profile is changed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Send data when on connected to a restricted/costed network*
-   GP name: *WerBypassNetworkCostThrottling_1*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werbypassnetworkcostthrottling-2"></a>**ADMX_ErrorReporting/WerBypassNetworkCostThrottling_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether Windows Error Reporting (WER) checks for a network cost policy that restricts the amount of data that is sent over the network.

If you enable this policy setting, WER does not check for network cost policy restrictions, and transmits data even if network cost is restricted.

If you disable or do not configure this policy setting, WER does not send data, but will check the network cost policy again if the network profile is changed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Send data when on connected to a restricted/costed network*
-   GP name: *WerBypassNetworkCostThrottling_2*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werbypasspowerthrottling-1"></a>**ADMX_ErrorReporting/WerBypassPowerThrottling_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether Windows Error Reporting (WER) checks if the computer is running on battery power. By default, when a computer is running on battery power, WER only checks for solutions, but does not upload additional report data until the computer is connected to a more permanent power source.

If you enable this policy setting, WER does not determine whether the computer is running on battery power, but checks for solutions and uploads report data normally.

If you disable or do not configure this policy setting, WER checks for solutions while a computer is running on battery power, but does not upload report data until the computer is connected to a more permanent power source.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Send additional data when on battery power*
-   GP name: *WerBypassPowerThrottling_1*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werbypasspowerthrottling-2"></a>**ADMX_ErrorReporting/WerBypassPowerThrottling_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether Windows Error Reporting (WER) checks if the computer is running on battery power. By default, when a computer is running on battery power, WER only checks for solutions, but does not upload additional report data until the computer is connected to a more permanent power source.

If you enable this policy setting, WER does not determine whether the computer is running on battery power, but checks for solutions and uploads report data normally.

If you disable or do not configure this policy setting, WER checks for solutions while a computer is running on battery power, but does not upload report data until the computer is connected to a more permanent power source.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Send additional data when on battery power*
-   GP name: *WerBypassPowerThrottling_2*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-wercer"></a>**ADMX_ErrorReporting/WerCER**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies a corporate server to which Windows Error Reporting sends reports (if you do not want to send error reports to Microsoft).

If you enable this policy setting, you can specify the name or IP address of an error report destination server on your organization’s network. You can also select Connect using SSL to transmit error reports over a Secure Sockets Layer (SSL) connection, and specify a port number on the destination server for transmission.

If you disable or do not configure this policy setting, Windows Error Reporting sends error reports to Microsoft.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Corporate Windows Error Reporting*
-   GP name: *WerCER*
-   GP path: *Windows Components\Windows Error Reporting\Advanced Error Reporting Settings*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werconsentcustomize-1"></a>**ADMX_ErrorReporting/WerConsentCustomize_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the consent behavior of Windows Error Reporting for specific event types.

If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.

- 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.

- 1 (Always ask before sending data): Windows prompts the user for consent to send reports.

- 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any additional data requested by Microsoft.

- 3 (Send parameters and safe additional data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, as well as data which Windows has determined (within a high probability) does not contain personally identifiable data, and prompts the user for consent to send any additional data requested by Microsoft.

- 4 (Send all data): Any data requested by Microsoft is sent automatically.

If you disable or do not configure this policy setting, then the default consent settings that are applied are those specified by the user in Control Panel, or in the Configure Default Consent policy setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Customize consent settings*
-   GP name: *WerConsentCustomize_1*
-   GP path: *Windows Components\Windows Error Reporting\Consent*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werconsentoverride-1"></a>**ADMX_ErrorReporting/WerConsentOverride_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the behavior of the Configure Default Consent setting in relation to custom consent settings.

If you enable this policy setting, the default consent levels of Windows Error Reporting always override any other consent policy setting.

If you disable or do not configure this policy setting, custom consent policy settings for error reporting determine the consent level for specified event types, and the default consent setting determines only the consent level of any other error reports.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Ignore custom consent settings*
-   GP name: *WerConsentOverride_1*
-   GP path: *Windows Components\Windows Error Reporting\Consent*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werconsentoverride-2"></a>**ADMX_ErrorReporting/WerConsentOverride_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the behavior of the Configure Default Consent setting in relation to custom consent settings.

If you enable this policy setting, the default consent levels of Windows Error Reporting always override any other consent policy setting.

If you disable or do not configure this policy setting, custom consent policy settings for error reporting determine the consent level for specified event types, and the default consent setting determines only the consent level of any other error reports.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Ignore custom consent settings*
-   GP name: *WerConsentOverride_2*
-   GP path: *Windows Components\Windows Error Reporting\Consent*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werdefaultconsent-1"></a>**ADMX_ErrorReporting/WerDefaultConsent_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the default consent behavior of Windows Error Reporting.

If you enable this policy setting, you can set the default consent handling for error reports. The following list describes the Consent level settings that are available in the pull-down menu in this policy setting:

- Always ask before sending data: Windows prompts users for consent to send reports.

- Send parameters: Only the minimum data that is required to check for an existing solution is sent automatically, and Windows prompts users for consent to send any additional data that is requested by Microsoft.

- Send parameters and safe additional data: the minimum data that is required to check for an existing solution, along with data which Windows has determined (within a high probability) does not contain personally-identifiable information is sent automatically, and Windows prompts the user for consent to send any additional data that is requested by Microsoft.

- Send all data: any error reporting data requested by Microsoft is sent automatically.

If this policy setting is disabled or not configured, then the consent level defaults to the highest-privacy setting: Always ask before sending data.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Default consent*
-   GP name: *WerDefaultConsent_1*
-   GP path: *Windows Components\Windows Error Reporting\Consent*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werdefaultconsent-2"></a>**ADMX_ErrorReporting/WerDefaultConsent_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the default consent behavior of Windows Error Reporting.

If you enable this policy setting, you can set the default consent handling for error reports. The following list describes the Consent level settings that are available in the pull-down menu in this policy setting:

- Always ask before sending data: Windows prompts users for consent to send reports.

- Send parameters: Only the minimum data that is required to check for an existing solution is sent automatically, and Windows prompts users for consent to send any additional data that is requested by Microsoft.

- Send parameters and safe additional data: the minimum data that is required to check for an existing solution, along with data which Windows has determined (within a high probability) does not contain personally-identifiable information is sent automatically, and Windows prompts the user for consent to send any additional data that is requested by Microsoft.

- Send all data: any error reporting data requested by Microsoft is sent automatically.

If this policy setting is disabled or not configured, then the consent level defaults to the highest-privacy setting: Always ask before sending data.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Default consent*
-   GP name: *WerDefaultConsent_2*
-   GP path: *Windows Components\Windows Error Reporting\Consent*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werdisable-1"></a>**ADMX_ErrorReporting/WerDisable_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting turns off Windows Error Reporting, so that reports are not collected or sent to either Microsoft or internal servers within your organization when software unexpectedly stops working or fails.

If you enable this policy setting, Windows Error Reporting does not send any problem information to Microsoft. Additionally, solution information is not available in Security and Maintenance in Control Panel.

If you disable or do not configure this policy setting, the Turn off Windows Error Reporting policy setting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings takes precedence. If Turn off Windows Error Reporting is also either disabled or not configured, user settings in Control Panel for Windows Error Reporting are applied.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Disable Windows Error Reporting*
-   GP name: *WerDisable_1*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werexlusion-1"></a>**ADMX_ErrorReporting/WerExlusion_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting limits Windows Error Reporting behavior for errors in general applications when Windows Error Reporting is turned on.

If you enable this policy setting, you can create a list of applications that are never included in error reports. To create a list of applications for which Windows Error Reporting never reports errors, click Show, and then add or remove applications from the list of application file names in the Show Contents dialog box (example: notepad.exe). File names must always include the .exe file name extension. To remove an application from the list, click the name, and then press DELETE. If this policy setting is enabled, the Exclude errors for applications on this list setting takes precedence.

If you disable or do not configure this policy setting, errors are reported on all Microsoft and Windows applications by default.


<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *List of applications to be excluded*
-   GP name: *WerExlusion_1*
-   GP path: *Windows Components\Windows Error Reporting\Advanced Error Reporting Settings*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werexlusion-2"></a>**ADMX_ErrorReporting/WerExlusion_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting limits Windows Error Reporting behavior for errors in general applications when Windows Error Reporting is turned on.

If you enable this policy setting, you can create a list of applications that are never included in error reports. To create a list of applications for which Windows Error Reporting never reports errors, click Show, and then add or remove applications from the list of application file names in the Show Contents dialog box (example: notepad.exe). File names must always include the .exe file name extension. To remove an application from the list, click the name, and then press DELETE. If this policy setting is enabled, the Exclude errors for applications on this list setting takes precedence.

If you disable or do not configure this policy setting, errors are reported on all Microsoft and Windows applications by default.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *List of applications to be excluded*
-   GP name: *WerExlusion_2*
-   GP path: *Windows Components\Windows Error Reporting\Advanced Error Reporting Settings*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-wernologging-1"></a>**ADMX_ErrorReporting/WerNoLogging_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether Windows Error Reporting saves its own events and error messages to the system event log.

If you enable this policy setting, Windows Error Reporting events are not recorded in the system event log.

If you disable or do not configure this policy setting, Windows Error Reporting events and errors are logged to the system event log, as with other Windows-based programs.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Disable logging*
-   GP name: *WerNoLogging_1*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-wernologging-2"></a>**ADMX_ErrorReporting/WerNoLogging_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether Windows Error Reporting saves its own events and error messages to the system event log.

If you enable this policy setting, Windows Error Reporting events are not recorded in the system event log.

If you disable or do not configure this policy setting, Windows Error Reporting events and errors are logged to the system event log, as with other Windows-based programs.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Disable logging*
-   GP name: *WerNoLogging_2*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-wernosecondleveldata-1"></a>**ADMX_ErrorReporting/WerNoSecondLevelData_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether additional data in support of error reports can be sent to Microsoft automatically.

If you enable this policy setting, any additional data requests from Microsoft in response to a Windows Error Reporting report are automatically declined, without notification to the user.

If you disable or do not configure this policy setting, then consent policy settings in Computer Configuration/Administrative Templates/Windows Components/Windows Error Reporting/Consent take precedence.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not send additional data*
-   GP name: *WerNoSecondLevelData_1*
-   GP path: *Windows Components\Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werqueue-1"></a>**ADMX_ErrorReporting/WerQueue_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the behavior of the Windows Error Reporting report queue.

If you enable this policy setting, you can configure report queue behavior by using the controls in the policy setting. When the Queuing behavior pull-down list is set to Default, Windows determines, when a problem occurs, whether the report should be placed in the reporting queue, or the user should be prompted to send it immediately. When Queuing behavior is set to Always queue, all reports are added to the queue until the user is prompted to send the reports, or until the user sends problem reports by using the Solutions to Problems page in Control Panel.

The Maximum number of reports to queue setting determines how many reports can be queued before older reports are automatically deleted. The setting for Number of days between solution check reminders determines the interval time between the display of system notifications that remind the user to check for solutions to problems. A value of 0 disables the reminder.

If you disable or do not configure this policy setting, Windows Error Reporting reports are not queued, and users can only send reports at the time that a problem occurs.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Report Queue*
-   GP name: *WerQueue_1*
-   GP path: *Windows Components\Windows Error Reporting\Advanced Error Reporting Settings*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-errorreporting-werqueue-2"></a>**ADMX_ErrorReporting/WerQueue_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the behavior of the Windows Error Reporting report queue.

If you enable this policy setting, you can configure report queue behavior by using the controls in the policy setting. When the Queuing behavior pull-down list is set to Default, Windows determines, when a problem occurs, whether the report should be placed in the reporting queue, or the user should be prompted to send it immediately. When Queuing behavior is set to Always queue, all reports are added to the queue until the user is prompted to send the reports, or until the user sends problem reports by using the Solutions to Problems page in Control Panel. If Queuing behavior is set to Always queue for administrator, reports are queued until an administrator is prompted to send them, or until the administrator sends them by using the Solutions to Problems page in Control Panel.

The Maximum number of reports to queue setting determines how many reports can be queued before older reports are automatically deleted. The setting for Number of days between solution check reminders determines the interval time between the display of system notifications that remind the user to check for solutions to problems. A value of 0 disables the reminder.

If you disable or do not configure this policy setting, Windows Error Reporting reports are not queued, and users can only send reports at the time that a problem occurs.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Report Queue*
-   GP name: *WerQueue_2*
-   GP path: *Windows Components\Windows Error Reporting\Advanced Error Reporting Settings*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.
<!--/Policies-->

