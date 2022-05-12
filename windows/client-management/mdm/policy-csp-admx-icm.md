---
title: Policy CSP - ADMX_ICM
description: Policy CSP - ADMX_ICM
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 12/17/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_ICM
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_ICM policies  

<dl>
  <dd>
    <a href="#admx-icm-ceipenable">ADMX_ICM/CEIPEnable</a>
  </dd>
  <dd>
    <a href="#admx-icm-certmgr-disableautorootupdates">ADMX_ICM/CertMgr_DisableAutoRootUpdates</a>
  </dd>
  <dd>
    <a href="#admx-icm-disablehttpprinting-1">ADMX_ICM/DisableHTTPPrinting_1</a>
  </dd>
  <dd>
    <a href="#admx-icm-disablewebpnpdownload-1">ADMX_ICM/DisableWebPnPDownload_1</a>
  </dd>
  <dd>
    <a href="#admx-icm-driversearchplaces-dontsearchwindowsupdate">ADMX_ICM/DriverSearchPlaces_DontSearchWindowsUpdate</a>
  </dd>
  <dd>
    <a href="#admx-icm-eventviewer-disablelinks">ADMX_ICM/EventViewer_DisableLinks</a>
  </dd>
  <dd>
    <a href="#admx-icm-hss-headlinespolicy">ADMX_ICM/HSS_HeadlinesPolicy</a>
  </dd>
  <dd>
    <a href="#admx-icm-hss-kbsearchpolicy">ADMX_ICM/HSS_KBSearchPolicy</a>
  </dd>
  <dd>
    <a href="#admx-icm-internetmanagement-restrictcommunication-1">ADMX_ICM/InternetManagement_RestrictCommunication_1</a>
  </dd>
  <dd>
    <a href="#admx-icm-internetmanagement-restrictcommunication-2">ADMX_ICM/InternetManagement_RestrictCommunication_2</a>
  </dd>
  <dd>
    <a href="#admx-icm-nc-exitonisp">ADMX_ICM/NC_ExitOnISP</a>
  </dd>
  <dd>
    <a href="#admx-icm-nc-noregistration">ADMX_ICM/NC_NoRegistration</a>
  </dd>
  <dd>
    <a href="#admx-icm-pch-donotreport">ADMX_ICM/PCH_DoNotReport</a>
  </dd>
  <dd>
    <a href="#admx-icm-removewindowsupdate-icm">ADMX_ICM/RemoveWindowsUpdate_ICM</a>
  </dd>
  <dd>
    <a href="#admx-icm-searchcompanion-disablefileupdates">ADMX_ICM/SearchCompanion_DisableFileUpdates</a>
  </dd>
  <dd>
    <a href="#admx-icm-shellnouseinternetopenwith-1">ADMX_ICM/ShellNoUseInternetOpenWith_1</a>
  </dd>
  <dd>
    <a href="#admx-icm-shellnouseinternetopenwith-2">ADMX_ICM/ShellNoUseInternetOpenWith_2</a>
  </dd>
  <dd>
    <a href="#admx-icm-shellnousestoreopenwith-1">ADMX_ICM/ShellNoUseStoreOpenWith_1</a>
  </dd>
  <dd>
    <a href="#admx-icm-shellnousestoreopenwith-2">ADMX_ICM/ShellNoUseStoreOpenWith_2</a>
  </dd>
  <dd>
    <a href="#admx-icm-shellpreventwpwdownload-1">ADMX_ICM/ShellPreventWPWDownload_1</a>
  </dd>
  <dd>
    <a href="#admx-icm-shellremoveorderprints-1">ADMX_ICM/ShellRemoveOrderPrints_1</a>
  </dd>
  <dd>
    <a href="#admx-icm-shellremoveorderprints-2">ADMX_ICM/ShellRemoveOrderPrints_2</a>
  </dd>
  <dd>
    <a href="#admx-icm-shellremovepublishtoweb-1">ADMX_ICM/ShellRemovePublishToWeb_1</a>
  </dd>
  <dd>
    <a href="#admx-icm-shellremovepublishtoweb-2">ADMX_ICM/ShellRemovePublishToWeb_2</a>
  </dd>
  <dd>
    <a href="#admx-icm-winmsg_noinstrumentation-1">ADMX_ICM/WinMSG_NoInstrumentation_1</a>
  </dd>
  <dd>
    <a href="#admx-icm-winmsg_noinstrumentation-2">ADMX_ICM/WinMSG_NoInstrumentation_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-icm-ceipenable"></a>**ADMX_ICM/CEIPEnable**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting turns off the Windows Customer Experience Improvement Program. The Windows Customer Experience Improvement Program collects information about your hardware configuration and how you use our software and services to identify trends and usage patterns. Microsoft won't collect your name, address, or any other personally identifiable information. There are no surveys to complete, no salesperson will call, and you can continue working without interruption. It's simple and user-friendly.

If you enable this policy setting, all users are opted out of the Windows Customer Experience Improvement Program.

If you disable this policy setting, all users are opted into the Windows Customer Experience Improvement Program.

If you don't configure this policy setting, the administrator can use the Problem Reports and Solutions component in Control Panel to enable Windows Customer Experience Improvement Program for all users.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Windows Customer Experience Improvement Program*
-   GP name: *CEIPEnable*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-certmgr-disableautorootupdates"></a>**ADMX_ICM/CertMgr_DisableAutoRootUpdates**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether to automatically update root certificates using the Windows Update website. 

Typically, a certificate is used when you use a secure website or when you send and receive secure email. Anyone can issue certificates, but to have transactions that are as secure as possible, certificates must be issued by a trusted certificate authority (CA). Microsoft has included a list in Windows XP and other products of companies and organizations that it considers trusted authorities.

If you enable this policy setting, when you're presented with a certificate issued by an untrusted root authority, your computer won't contact the Windows Update website to see if Microsoft has added the CA to its list of trusted authorities.

If you disable or don't configure this policy setting, your computer will contact the Windows Update website.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Automatic Root Certificates Update*
-   GP name: *CertMgr_DisableAutoRootUpdates*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-disablehttpprinting-1"></a>**ADMX_ICM/DisableHTTPPrinting_1**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether to allow printing over HTTP from this client.

Printing over HTTP allows a client to print to printers on the intranet and the Internet.

> [!NOTE]
> This policy setting affects the client side of Internet printing only. It doesn't prevent this computer from acting as an Internet Printing server and making its shared printers available via HTTP.

If you enable this policy setting, it prevents this client from printing to Internet printers over HTTP.

If you disable or don't configure this policy setting, users can choose to print to Internet printers over HTTP.  Also, see the "Web-based printing" policy setting in Computer Configuration/Administrative Templates/Printers.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP  Friendly name: *Turn off printing over HTTP*
-   GP name: *DisableHTTPPrinting_1*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-disablewebpnpdownload-1"></a>**ADMX_ICM/DisableWebPnPDownload_1**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether to allow this client to download print driver packages over HTTP.

To set up HTTP printing, non-inbox drivers need to be downloaded over HTTP.

> [!NOTE]
> This policy setting doesn't prevent the client from printing to printers on the Intranet or the Internet over HTTP.

It only prohibits downloading drivers that aren't already installed locally.

If you enable this policy setting, print drivers can't be downloaded over HTTP.

If you disable or don't configure this policy setting, users can download print drivers over HTTP.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off downloading of print drivers over HTTP*
-   GP name: *DisableWebPnPDownload_1*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-driversearchplaces-dontsearchwindowsupdate"></a>**ADMX_ICM/DriverSearchPlaces_DontSearchWindowsUpdate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether Windows searches Windows Update for device drivers when no local drivers for a device are present.

If you enable this policy setting, Windows Update isn't searched when a new device is installed.

If you disable this policy setting, Windows Update is always searched for drivers when no local drivers are present.

If you don't configure this policy setting, searching Windows Update is optional when installing a device.

Also see "Turn off Windows Update device driver search prompt" in "Administrative Templates/System," which governs whether an administrator is prompted before searching Windows Update for device drivers if a driver isn't found locally.

> [!NOTE]
> This policy setting is replaced by "Specify Driver Source Search Order" in "Administrative Templates/System/Device Installation" on newer versions of Windows.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Windows Update device driver searching*
-   GP name: *DriverSearchPlaces_DontSearchWindowsUpdate*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-eventviewer-disablelinks"></a>**ADMX_ICM/EventViewer_DisableLinks**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether "Events.asp" hyperlinks are available for events within the Event Viewer application.

The Event Viewer normally makes all HTTP(S) URLs into hyperlinks that activate the Internet browser when clicked. In addition, "More Information" is placed at the end of the description text if the event is created by a Microsoft component. This text contains a link (URL) that, if clicked, sends information about the event to Microsoft, and allows users to learn more about why that event occurred.

If you enable this policy setting, event description hyperlinks aren't activated and the text "More Information" isn't displayed at the end of the description.

If you disable or don't configure this policy setting, the user can click the hyperlink, which prompts the user and then sends information about the event over the Internet to Microsoft.

Also, see "Events.asp URL", "Events.asp program", and "Events.asp Program Command Line Parameters" settings in "Administrative Templates/Windows Components/Event Viewer".

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Event Viewer "Events.asp" links*
-   GP name: *EventViewer_DisableLinks*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-hss-headlinespolicy"></a>**ADMX_ICM/HSS_HeadlinesPolicy**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether to show the "Did you know?" section of Help and Support Center.

This content is dynamically updated when users who are connected to the Internet open Help and Support Center, and provides up-to-date information about Windows and the computer.

If you enable this policy setting, the Help and Support Center no longer retrieves nor displays "Did you know?" content.

If you disable or don't configure this policy setting, the Help and Support Center retrieves and displays "Did you know?" content.

You might want to enable this policy setting for users who don't have Internet access, because the content in the "Did you know?" section will remain static indefinitely without an Internet connection.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Help and Support Center "Did you know?" content*
-   GP name: *HSS_HeadlinesPolicy*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-hss-kbsearchpolicy"></a>**ADMX_ICM/HSS_KBSearchPolicy**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether users can perform a Microsoft Knowledge Base search from the Help and Support Center.

The Knowledge Base is an online source of technical support information and self-help tools for Microsoft products, and is searched as part of all Help and Support Center searches with the default search options.

If you enable this policy setting, it removes the Knowledge Base section from the Help and Support Center "Set search options" page, and only Help content on the local computer is searched.

If you disable or don't configure this policy setting, the Knowledge Base is searched if the user has a connection to the Internet and hasn't disabled the Knowledge Base search from the Search Options page.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Help and Support Center Microsoft Knowledge Base search*
-   GP name: *HSS_KBSearchPolicy*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-internetmanagement-restrictcommunication-1"></a>**ADMX_ICM/InternetManagement_RestrictCommunication_1**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether Windows can access the Internet to accomplish tasks that require Internet resources.

If you enable this setting, all of the policy settings listed in the "Internet Communication settings" section are set such that their respective features can't access the Internet.

If you disable this policy setting, all of the policy settings listed in the "Internet Communication settings" section are set such that their respective features can access the Internet.

If you don't configure this policy setting, all of the policy settings in the "Internet Communication settings" section are set to not configured.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Restrict Internet communication*
-   GP name: *InternetManagement_RestrictCommunication_1*
-   GP path: *System\Internet Communication Management*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-internetmanagement-restrictcommunication-2"></a>**ADMX_ICM/InternetManagement_RestrictCommunication_2**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether Windows can access the Internet to accomplish tasks that require Internet resources.

If you enable this setting, all of the policy settings listed in the "Internet Communication settings" section are set such that their respective features can't access the Internet.

If you disable this policy setting, all of the policy settings listed in the "Internet Communication settings" section are set such that their respective features can access the Internet.

If you don't configure this policy setting, all of the policy settings in the "Internet Communication settings" section are set to not configured.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Restrict Internet communication*
-   GP name: *InternetManagement_RestrictCommunication_2*
-   GP path: *System\Internet Communication Management*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-nc-exitonisp"></a>**ADMX_ICM/NC_ExitOnISP**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether the Internet Connection Wizard can connect to Microsoft to download a list of Internet Service Providers (ISPs).

If you enable this policy setting, the "Choose a list of Internet Service Providers" path in the Internet Connection Wizard causes the wizard to exit. This exit prevents users from retrieving the list of ISPs, which resides on Microsoft servers.

If you disable or don't configure this policy setting, users can connect to Microsoft to download a list of ISPs for their area.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Internet Connection Wizard if URL connection is referring to Microsoft.com*
-   GP name: *NC_ExitOnISP*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-nc-noregistration"></a>**ADMX_ICM/NC_NoRegistration**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether the Windows Registration Wizard connects to Microsoft.com for online registration.

If you enable this policy setting, it blocks users from connecting to Microsoft.com for online registration and users can't register their copy of Windows online.

If you disable or don't configure this policy setting, users can connect to Microsoft.com to complete the online Windows Registration.

Registration is optional and involves submitting some personal information to Microsoft. However, Windows Product Activation is required but doesn't involve submitting any personal information (except the country/region you live in).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Registration if URL connection is referring to Microsoft.com*
-   GP name: *NC_NoRegistration*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-pch-donotreport"></a>**ADMX_ICM/PCH_DoNotReport**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting controls whether or not errors are reported to Microsoft.

Error Reporting is used to report information about a system or application that has failed or has stopped responding and is used to improve the quality of the product.

If you enable this policy setting, users aren't given the option to report errors.

If you disable or don't configure this policy setting, the errors may be reported to Microsoft via the Internet or to a corporate file share.

This policy setting overrides any user setting made from the Control Panel for error reporting.  

Also see the "Configure Error Reporting", "Display Error Notification" and "Disable Windows Error Reporting" policy settings under Computer Configuration/Administrative Templates/Windows Components/Windows Error Reporting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Windows Error Reporting*
-   GP name: *PCH_DoNotReport*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-removewindowsupdate-icm"></a>**ADMX_ICM/RemoveWindowsUpdate_ICM**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting allows you to remove access to Windows Update.

If you enable this policy setting, all Windows Update features are removed. This list of features includes blocking access to the Windows Update website at https://windowsupdate.microsoft.com, from the Windows Update hyperlink on the Start menu, and also on the Tools menu in Internet Explorer. Windows automatic updating is also disabled; you won't get notified or receive critical updates from Windows Update. This policy setting also prevents Device Manager from automatically installing driver updates from the Windows Update website.

If you disable or don't configure this policy setting, users can access the Windows Update website and enable automatic updating to receive notifications and critical updates from Windows Update.

> [!NOTE]
> This policy applies only when this PC is configured to connect to an intranet update service using the "Specify intranet Microsoft update service location" policy.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off access to all Windows Update features*
-   GP name: *RemoveWindowsUpdate_ICM*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-searchcompanion-disablefileupdates"></a>**ADMX_ICM/SearchCompanion_DisableFileUpdates**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether Search Companion should automatically download content updates during local and Internet searches.

When users search the local computer or the Internet, Search Companion occasionally connects to Microsoft to download an updated privacy policy and more content files used to format and display results.

If you enable this policy setting, Search Companion doesn't download content updates during searches.

If you disable or don't configure this policy setting, Search Companion downloads content updates unless the user is using Classic Search.

> [!NOTE]
> Internet searches still send the search text and information about the search to Microsoft and the chosen search provider. Choosing Classic Search turns off the Search Companion feature completely.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Search Companion content file updates*
-   GP name: *SearchCompanion_DisableFileUpdates*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-shellnouseinternetopenwith-1"></a>**ADMX_ICM/ShellNoUseInternetOpenWith_1**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether to use the Microsoft Web service for finding an application to open a file with an unhandled file association.

When a user opens a file that has an extension that isn't associated with any applications on the computer, the user is given the choice to select a local application or use the Web service to find an application.

If you enable this policy setting, the link and the dialog for using the Web service to open an unhandled file association are removed.

If you disable or don't configure this policy setting, the user is allowed to use the Web service.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Internet File Association service*
-   GP name: *ShellNoUseInternetOpenWith_1*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-shellnouseinternetopenwith-2"></a>**ADMX_ICM/ShellNoUseInternetOpenWith_2**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether to use the Microsoft Web service for finding an application to open a file with an unhandled file association.

When a user opens a file that has an extension that isn't associated with any applications on the computer, the user is given the choice to select a local application or use the Web service to find an application.

If you enable this policy setting, the link and the dialog for using the Web service to open an unhandled file association are removed.

If you disable or don't configure this policy setting, the user is allowed to use the Web service.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Internet File Association service*
-   GP name: *ShellNoUseInternetOpenWith_2*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-shellnousestoreopenwith-1"></a>**ADMX_ICM/ShellNoUseStoreOpenWith_1**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether to use the Store service for finding an application to open a file with an unhandled file type or protocol association.

When a user opens a file type or protocol that isn't associated with any applications on the computer, the user is given the choice to select a local application or use the Store service to find an application.

If you enable this policy setting, the "Look for an app in the Store" item in the Open With dialog is removed.

If you disable or don't configure this policy setting, the user is allowed to use the Store service and the Store item is available in the Open With dialog.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off access to the Store*
-   GP name: *ShellNoUseStoreOpenWith_1*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-shellnousestoreopenwith-2"></a>**ADMX_ICM/ShellNoUseStoreOpenWith_2**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether to use the Store service for finding an application to open a file with an unhandled file type or protocol association.

When a user opens a file type or protocol that isn't associated with any applications on the computer, the user is given the choice to select a local application or use the Store service to find an application.

If you enable this policy setting, the "Look for an app in the Store" item in the Open With dialog is removed.

If you disable or don't configure this policy setting, the user is allowed to use the Store service and the Store item is available in the Open With dialog.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off access to the Store*
-   GP name: *ShellNoUseStoreOpenWith_2*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-shellpreventwpwdownload-1"></a>**ADMX_ICM/ShellPreventWPWDownload_1**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether Windows should download a list of providers for the web publishing and online ordering wizards.  These wizards allow users to select from a list of companies that provide services such as online storage and photographic printing. By default, Windows displays providers downloaded from a Windows website in addition to providers specified in the registry.

If you enable this policy setting, Windows doesn't download providers, and only the service providers that are cached in the local registry are displayed.

If you disable or don't configure this policy setting, a list of providers is downloaded when the user uses the web publishing or online ordering wizards.

For more information, including details on specifying service providers in the registry, see the documentation for the web publishing and online ordering wizards.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Internet download for Web publishing and online ordering wizards*
-   GP name: *ShellPreventWPWDownload_1*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-shellremoveorderprints-1"></a>**ADMX_ICM/ShellRemoveOrderPrints_1**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether the "Order Prints Online" task is available from Picture Tasks in Windows folders.

The Order Prints Online Wizard is used to download a list of providers and allow users to order prints online.  If you enable this policy setting, the task "Order Prints Online" is removed from Picture Tasks in File Explorer folders.

If you disable or don't configure this policy setting, the task is displayed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off the "Order Prints" picture task*
-   GP name: *ShellRemoveOrderPrints_1*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-shellremoveorderprints-2"></a>**ADMX_ICM/ShellRemoveOrderPrints_2**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether the "Order Prints Online" task is available from Picture Tasks in Windows folders.

The Order Prints Online Wizard is used to download a list of providers and allow users to order prints online.

If you enable this policy setting, the task "Order Prints Online" is removed from Picture Tasks in File Explorer folders.

If you disable or don't configure this policy setting, the task is displayed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off the "Order Prints" picture task*
-   GP name: *ShellRemoveOrderPrints_2*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-shellremovepublishtoweb-1"></a>**ADMX_ICM/ShellRemovePublishToWeb_1**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether the tasks "Publish this file to the Web," "Publish this folder to the Web," and "Publish the selected items to the Web" are available from File and Folder Tasks in Windows folders.

The Web Publishing Wizard is used to download a list of providers and allow users to publish content to the web.

If you enable this policy setting, these tasks are removed from the File and Folder tasks in Windows folders. If you disable or don't configure this policy setting, the tasks are shown.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off the "Publish to Web" task for files and folders*
-   GP name: *ShellRemovePublishToWeb_1*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-shellremovepublishtoweb-2"></a>**ADMX_ICM/ShellRemovePublishToWeb_2**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether the tasks "Publish this file to the Web," "Publish this folder to the Web," and "Publish the selected items to the Web" are available from File and Folder Tasks in Windows folders.

The Web Publishing Wizard is used to download a list of providers and allow users to publish content to the web.

If you enable this policy setting, these tasks are removed from the File and Folder tasks in Windows folders.

If you disable or don't configure this policy setting, the tasks are shown.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off the "Publish to Web" task for files and folders*
-   GP name: *ShellRemovePublishToWeb_2*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-winmsg_noinstrumentation-1"></a>**ADMX_ICM/WinMSG_NoInstrumentation_1**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether Windows Messenger collects anonymous information about how Windows Messenger software and service are used.

With the Customer Experience Improvement program, users can allow Microsoft to collect anonymous information about how the product is used.

This information is used to improve the product in future releases.

If you enable this policy setting, Windows Messenger doesn't collect usage information, and the user settings to enable the collection of usage information aren't shown.

If you disable this policy setting, Windows Messenger collects anonymous usage information, and the setting isn't shown. If you don't configure this policy setting, users have the choice to opt in and allow information to be collected.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off the Windows Messenger Customer Experience Improvement Program*
-   GP name: *WinMSG_NoInstrumentation_1*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-icm-winmsg_noinstrumentation-2"></a>**ADMX_ICM/WinMSG_NoInstrumentation_2**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies whether Windows Messenger collects anonymous information about how Windows Messenger software and service are used.

With the Customer Experience Improvement program, users can allow Microsoft to collect anonymous information about how the product is used.

This information is used to improve the product in future releases.

If you enable this policy setting, Windows Messenger doesn't collect usage information, and the user settings to enable the collection of usage information aren't shown.

If you disable this policy setting, Windows Messenger collects anonymous usage information, and the setting isn't shown.

If you don't configure this policy setting, users have the choice to opt in and allow information to be collected.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off the Windows Messenger Customer Experience Improvement Program*
-   GP name: *WinMSG_NoInstrumentation_2*
-   GP path: *System\Internet Communication Management\Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

