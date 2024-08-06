---
title: ADMX_ICM Policy CSP
description: Learn more about the ADMX_ICM Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_ICM-Begin -->
# Policy CSP - ADMX_ICM

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_ICM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_ICM-Editable-End -->

<!-- CEIPEnable-Begin -->
## CEIPEnable

<!-- CEIPEnable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CEIPEnable-Applicability-End -->

<!-- CEIPEnable-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/CEIPEnable
```
<!-- CEIPEnable-OmaUri-End -->

<!-- CEIPEnable-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the Windows Customer Experience Improvement Program. The Windows Customer Experience Improvement Program collects information about your hardware configuration and how you use our software and services to identify trends and usage patterns. Microsoft won't collect your name, address, or any other personally identifiable information. There are no surveys to complete, no salesperson will call, and you can continue working without interruption. It's simple and user-friendly.

- If you enable this policy setting, all users are opted out of the Windows Customer Experience Improvement Program.

- If you disable this policy setting, all users are opted into the Windows Customer Experience Improvement Program.

- If you don't configure this policy setting, the administrator can use the Problem Reports and Solutions component in Control Panel to enable Windows Customer Experience Improvement Program for all users.
<!-- CEIPEnable-Description-End -->

<!-- CEIPEnable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CEIPEnable-Editable-End -->

<!-- CEIPEnable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CEIPEnable-DFProperties-End -->

<!-- CEIPEnable-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CEIPEnable |
| Friendly Name | Turn off Windows Customer Experience Improvement Program |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\SQMClient\Windows |
| Registry Value Name | CEIPEnable |
| ADMX File Name | ICM.admx |
<!-- CEIPEnable-AdmxBacked-End -->

<!-- CEIPEnable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CEIPEnable-Examples-End -->

<!-- CEIPEnable-End -->

<!-- CertMgr_DisableAutoRootUpdates-Begin -->
## CertMgr_DisableAutoRootUpdates

<!-- CertMgr_DisableAutoRootUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CertMgr_DisableAutoRootUpdates-Applicability-End -->

<!-- CertMgr_DisableAutoRootUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/CertMgr_DisableAutoRootUpdates
```
<!-- CertMgr_DisableAutoRootUpdates-OmaUri-End -->

<!-- CertMgr_DisableAutoRootUpdates-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to automatically update root certificates using the Windows Update website.

Typically, a certificate is used when you use a secure website or when you send and receive secure email. Anyone can issue certificates, but to have transactions that are as secure as possible, certificates must be issued by a trusted certificate authority (CA). Microsoft has included a list in Windows XP and other products of companies and organizations that it considers trusted authorities.

- If you enable this policy setting, when you are presented with a certificate issued by an untrusted root authority, your computer won't contact the Windows Update website to see if Microsoft has added the CA to its list of trusted authorities.

- If you disable or don't configure this policy setting, your computer will contact the Windows Update website.
<!-- CertMgr_DisableAutoRootUpdates-Description-End -->

<!-- CertMgr_DisableAutoRootUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CertMgr_DisableAutoRootUpdates-Editable-End -->

<!-- CertMgr_DisableAutoRootUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CertMgr_DisableAutoRootUpdates-DFProperties-End -->

<!-- CertMgr_DisableAutoRootUpdates-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CertMgr_DisableAutoRootUpdates |
| Friendly Name | Turn off Automatic Root Certificates Update |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\SystemCertificates\AuthRoot |
| Registry Value Name | DisableRootAutoUpdate |
| ADMX File Name | ICM.admx |
<!-- CertMgr_DisableAutoRootUpdates-AdmxBacked-End -->

<!-- CertMgr_DisableAutoRootUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CertMgr_DisableAutoRootUpdates-Examples-End -->

<!-- CertMgr_DisableAutoRootUpdates-End -->

<!-- DisableHTTPPrinting_1-Begin -->
## DisableHTTPPrinting_1

<!-- DisableHTTPPrinting_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableHTTPPrinting_1-Applicability-End -->

<!-- DisableHTTPPrinting_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ICM/DisableHTTPPrinting_1
```
<!-- DisableHTTPPrinting_1-OmaUri-End -->

<!-- DisableHTTPPrinting_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to allow printing over HTTP from this client.

Printing over HTTP allows a client to print to printers on the intranet as well as the Internet.

> [!NOTE]
> This policy setting affects the client side of Internet printing only. It doesn't prevent this computer from acting as an Internet Printing server and making its shared printers available via HTTP.

- If you enable this policy setting, it prevents this client from printing to Internet printers over HTTP.

- If you disable or don't configure this policy setting, users can choose to print to Internet printers over HTTP.

Also, see the "Web-based printing" policy setting in Computer Configuration/Administrative Templates/Printers.
<!-- DisableHTTPPrinting_1-Description-End -->

<!-- DisableHTTPPrinting_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableHTTPPrinting_1-Editable-End -->

<!-- DisableHTTPPrinting_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableHTTPPrinting_1-DFProperties-End -->

<!-- DisableHTTPPrinting_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableHTTPPrinting_1 |
| Friendly Name | Turn off printing over HTTP |
| Location | User Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | DisableHTTPPrinting |
| ADMX File Name | ICM.admx |
<!-- DisableHTTPPrinting_1-AdmxBacked-End -->

<!-- DisableHTTPPrinting_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableHTTPPrinting_1-Examples-End -->

<!-- DisableHTTPPrinting_1-End -->

<!-- DisableWebPnPDownload_1-Begin -->
## DisableWebPnPDownload_1

<!-- DisableWebPnPDownload_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableWebPnPDownload_1-Applicability-End -->

<!-- DisableWebPnPDownload_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ICM/DisableWebPnPDownload_1
```
<!-- DisableWebPnPDownload_1-OmaUri-End -->

<!-- DisableWebPnPDownload_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to allow this client to download print driver packages over HTTP.

To set up HTTP printing, non-inbox drivers need to be downloaded over HTTP.

> [!NOTE]
> This policy setting doesn't prevent the client from printing to printers on the Intranet or the Internet over HTTP. It only prohibits downloading drivers that aren't already installed locally.

- If you enable this policy setting, print drivers can't be downloaded over HTTP.

- If you disable or don't configure this policy setting, users can download print drivers over HTTP.
<!-- DisableWebPnPDownload_1-Description-End -->

<!-- DisableWebPnPDownload_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableWebPnPDownload_1-Editable-End -->

<!-- DisableWebPnPDownload_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableWebPnPDownload_1-DFProperties-End -->

<!-- DisableWebPnPDownload_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWebPnPDownload_1 |
| Friendly Name | Turn off downloading of print drivers over HTTP |
| Location | User Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | DisableWebPnPDownload |
| ADMX File Name | ICM.admx |
<!-- DisableWebPnPDownload_1-AdmxBacked-End -->

<!-- DisableWebPnPDownload_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableWebPnPDownload_1-Examples-End -->

<!-- DisableWebPnPDownload_1-End -->

<!-- DriverSearchPlaces_DontSearchWindowsUpdate-Begin -->
## DriverSearchPlaces_DontSearchWindowsUpdate

<!-- DriverSearchPlaces_DontSearchWindowsUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DriverSearchPlaces_DontSearchWindowsUpdate-Applicability-End -->

<!-- DriverSearchPlaces_DontSearchWindowsUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/DriverSearchPlaces_DontSearchWindowsUpdate
```
<!-- DriverSearchPlaces_DontSearchWindowsUpdate-OmaUri-End -->

<!-- DriverSearchPlaces_DontSearchWindowsUpdate-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows searches Windows Update for device drivers when no local drivers for a device are present.

- If you enable this policy setting, Windows Update isn't searched when a new device is installed.

- If you disable this policy setting, Windows Update is always searched for drivers when no local drivers are present.

- If you don't configure this policy setting, searching Windows Update is optional when installing a device.

Also see "Turn off Windows Update device driver search prompt" in "Administrative Templates/System," which governs whether an administrator is prompted before searching Windows Update for device drivers if a driver isn't found locally.

> [!NOTE]
> This policy setting is replaced by "Specify Driver Source Search Order" in "Administrative Templates/System/Device Installation" on newer versions of Windows.
<!-- DriverSearchPlaces_DontSearchWindowsUpdate-Description-End -->

<!-- DriverSearchPlaces_DontSearchWindowsUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DriverSearchPlaces_DontSearchWindowsUpdate-Editable-End -->

<!-- DriverSearchPlaces_DontSearchWindowsUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DriverSearchPlaces_DontSearchWindowsUpdate-DFProperties-End -->

<!-- DriverSearchPlaces_DontSearchWindowsUpdate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DriverSearchPlaces_DontSearchWindowsUpdate |
| Friendly Name | Turn off Windows Update device driver searching |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\DriverSearching |
| Registry Value Name | DontSearchWindowsUpdate |
| ADMX File Name | ICM.admx |
<!-- DriverSearchPlaces_DontSearchWindowsUpdate-AdmxBacked-End -->

<!-- DriverSearchPlaces_DontSearchWindowsUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DriverSearchPlaces_DontSearchWindowsUpdate-Examples-End -->

<!-- DriverSearchPlaces_DontSearchWindowsUpdate-End -->

<!-- EventViewer_DisableLinks-Begin -->
## EventViewer_DisableLinks

<!-- EventViewer_DisableLinks-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EventViewer_DisableLinks-Applicability-End -->

<!-- EventViewer_DisableLinks-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/EventViewer_DisableLinks
```
<!-- EventViewer_DisableLinks-OmaUri-End -->

<!-- EventViewer_DisableLinks-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether "Events.asp" hyperlinks are available for events within the Event Viewer application.

The Event Viewer normally makes all HTTP(S) URLs into hyperlinks that activate the Internet browser when clicked. In addition, "More Information" is placed at the end of the description text if the event is created by a Microsoft component. This text contains a link (URL) that, if clicked, sends information about the event to Microsoft, and allows users to learn more about why that event occurred.

- If you enable this policy setting, event description hyperlinks aren't activated and the text "More Information" isn't displayed at the end of the description.

- If you disable or don't configure this policy setting, the user can click the hyperlink, which prompts the user and then sends information about the event over the Internet to Microsoft. Also, see "Events.asp URL", "Events.asp program", and "Events.asp Program Command Line Parameters" settings in "Administrative Templates/Windows Components/Event Viewer".
<!-- EventViewer_DisableLinks-Description-End -->

<!-- EventViewer_DisableLinks-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EventViewer_DisableLinks-Editable-End -->

<!-- EventViewer_DisableLinks-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EventViewer_DisableLinks-DFProperties-End -->

<!-- EventViewer_DisableLinks-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EventViewer_DisableLinks |
| Friendly Name | Turn off Event Viewer "Events.asp" links |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\EventViewer |
| Registry Value Name | MicrosoftEventVwrDisableLinks |
| ADMX File Name | ICM.admx |
<!-- EventViewer_DisableLinks-AdmxBacked-End -->

<!-- EventViewer_DisableLinks-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EventViewer_DisableLinks-Examples-End -->

<!-- EventViewer_DisableLinks-End -->

<!-- HSS_HeadlinesPolicy-Begin -->
## HSS_HeadlinesPolicy

<!-- HSS_HeadlinesPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HSS_HeadlinesPolicy-Applicability-End -->

<!-- HSS_HeadlinesPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/HSS_HeadlinesPolicy
```
<!-- HSS_HeadlinesPolicy-OmaUri-End -->

<!-- HSS_HeadlinesPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to show the "Did you know?" section of Help and Support Center.

This content is dynamically updated when users who are connected to the Internet open Help and Support Center, and provides up-to-date information about Windows and the computer.

- If you enable this policy setting, the Help and Support Center no longer retrieves nor displays "Did you know?" content.

- If you disable or don't configure this policy setting, the Help and Support Center retrieves and displays "Did you know?" content.

You might want to enable this policy setting for users who don't have Internet access, because the content in the "Did you know?" section will remain static indefinitely without an Internet connection.
<!-- HSS_HeadlinesPolicy-Description-End -->

<!-- HSS_HeadlinesPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HSS_HeadlinesPolicy-Editable-End -->

<!-- HSS_HeadlinesPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HSS_HeadlinesPolicy-DFProperties-End -->

<!-- HSS_HeadlinesPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HSS_HeadlinesPolicy |
| Friendly Name | Turn off Help and Support Center "Did you know?" content |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\PCHealth\HelpSvc |
| Registry Value Name | Headlines |
| ADMX File Name | ICM.admx |
<!-- HSS_HeadlinesPolicy-AdmxBacked-End -->

<!-- HSS_HeadlinesPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HSS_HeadlinesPolicy-Examples-End -->

<!-- HSS_HeadlinesPolicy-End -->

<!-- HSS_KBSearchPolicy-Begin -->
## HSS_KBSearchPolicy

<!-- HSS_KBSearchPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HSS_KBSearchPolicy-Applicability-End -->

<!-- HSS_KBSearchPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/HSS_KBSearchPolicy
```
<!-- HSS_KBSearchPolicy-OmaUri-End -->

<!-- HSS_KBSearchPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether users can perform a Microsoft Knowledge Base search from the Help and Support Center.

The Knowledge Base is an online source of technical support information and self-help tools for Microsoft products, and is searched as part of all Help and Support Center searches with the default search options.

- If you enable this policy setting, it removes the Knowledge Base section from the Help and Support Center "Set search options" page, and only Help content on the local computer is searched.

- If you disable or don't configure this policy setting, the Knowledge Base is searched if the user has a connection to the Internet and hasn't disabled the Knowledge Base search from the Search Options page.
<!-- HSS_KBSearchPolicy-Description-End -->

<!-- HSS_KBSearchPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HSS_KBSearchPolicy-Editable-End -->

<!-- HSS_KBSearchPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HSS_KBSearchPolicy-DFProperties-End -->

<!-- HSS_KBSearchPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HSS_KBSearchPolicy |
| Friendly Name | Turn off Help and Support Center Microsoft Knowledge Base search |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\PCHealth\HelpSvc |
| Registry Value Name | MicrosoftKBSearch |
| ADMX File Name | ICM.admx |
<!-- HSS_KBSearchPolicy-AdmxBacked-End -->

<!-- HSS_KBSearchPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HSS_KBSearchPolicy-Examples-End -->

<!-- HSS_KBSearchPolicy-End -->

<!-- InternetManagement_RestrictCommunication_1-Begin -->
## InternetManagement_RestrictCommunication_1

<!-- InternetManagement_RestrictCommunication_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- InternetManagement_RestrictCommunication_1-Applicability-End -->

<!-- InternetManagement_RestrictCommunication_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ICM/InternetManagement_RestrictCommunication_1
```
<!-- InternetManagement_RestrictCommunication_1-OmaUri-End -->

<!-- InternetManagement_RestrictCommunication_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows can access the Internet to accomplish tasks that require Internet resources.

- If you enable this setting, all of the policy settings listed in the "Internet Communication settings" section are set such that their respective features can't access the Internet.

- If you disable this policy setting, all of the policy settings listed in the "Internet Communication settings" section are set such that their respective features can access the Internet.

- If you don't configure this policy setting, all of the policy settings in the "Internet Communication settings" section are set to not configured.
<!-- InternetManagement_RestrictCommunication_1-Description-End -->

<!-- InternetManagement_RestrictCommunication_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetManagement_RestrictCommunication_1-Editable-End -->

<!-- InternetManagement_RestrictCommunication_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetManagement_RestrictCommunication_1-DFProperties-End -->

<!-- InternetManagement_RestrictCommunication_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | InternetManagement_RestrictCommunication_1 |
| Friendly Name | Restrict Internet communication |
| Location | User Configuration |
| Path | System > Internet Communication Management |
| Registry Key Name | Software\Policies\Microsoft\InternetManagement |
| Registry Value Name | RestrictCommunication |
| ADMX File Name | ICM.admx |
<!-- InternetManagement_RestrictCommunication_1-AdmxBacked-End -->

<!-- InternetManagement_RestrictCommunication_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetManagement_RestrictCommunication_1-Examples-End -->

<!-- InternetManagement_RestrictCommunication_1-End -->

<!-- InternetManagement_RestrictCommunication_2-Begin -->
## InternetManagement_RestrictCommunication_2

<!-- InternetManagement_RestrictCommunication_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- InternetManagement_RestrictCommunication_2-Applicability-End -->

<!-- InternetManagement_RestrictCommunication_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/InternetManagement_RestrictCommunication_2
```
<!-- InternetManagement_RestrictCommunication_2-OmaUri-End -->

<!-- InternetManagement_RestrictCommunication_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows can access the Internet to accomplish tasks that require Internet resources.

- If you enable this setting, all of the policy settings listed in the "Internet Communication settings" section are set such that their respective features can't access the Internet.

- If you disable this policy setting, all of the policy settings listed in the "Internet Communication settings" section are set such that their respective features can access the Internet.

- If you don't configure this policy setting, all of the policy settings in the "Internet Communication settings" section are set to not configured.
<!-- InternetManagement_RestrictCommunication_2-Description-End -->

<!-- InternetManagement_RestrictCommunication_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetManagement_RestrictCommunication_2-Editable-End -->

<!-- InternetManagement_RestrictCommunication_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetManagement_RestrictCommunication_2-DFProperties-End -->

<!-- InternetManagement_RestrictCommunication_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | InternetManagement_RestrictCommunication_2 |
| Friendly Name | Restrict Internet communication |
| Location | Computer Configuration |
| Path | System > Internet Communication Management |
| Registry Key Name | Software\Policies\Microsoft\InternetManagement |
| Registry Value Name | RestrictCommunication |
| ADMX File Name | ICM.admx |
<!-- InternetManagement_RestrictCommunication_2-AdmxBacked-End -->

<!-- InternetManagement_RestrictCommunication_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetManagement_RestrictCommunication_2-Examples-End -->

<!-- InternetManagement_RestrictCommunication_2-End -->

<!-- NC_ExitOnISP-Begin -->
## NC_ExitOnISP

<!-- NC_ExitOnISP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_ExitOnISP-Applicability-End -->

<!-- NC_ExitOnISP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/NC_ExitOnISP
```
<!-- NC_ExitOnISP-OmaUri-End -->

<!-- NC_ExitOnISP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the Internet Connection Wizard can connect to Microsoft to download a list of Internet Service Providers (ISPs).

- If you enable this policy setting, the "Choose a list of Internet Service Providers" path in the Internet Connection Wizard causes the wizard to exit. This prevents users from retrieving the list of ISPs, which resides on Microsoft servers.

- If you disable or don't configure this policy setting, users can connect to Microsoft to download a list of ISPs for their area.
<!-- NC_ExitOnISP-Description-End -->

<!-- NC_ExitOnISP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_ExitOnISP-Editable-End -->

<!-- NC_ExitOnISP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_ExitOnISP-DFProperties-End -->

<!-- NC_ExitOnISP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_ExitOnISP |
| Friendly Name | Turn off Internet Connection Wizard if URL connection is referring to Microsoft.com |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\Internet Connection Wizard |
| Registry Value Name | ExitOnMSICW |
| ADMX File Name | ICM.admx |
<!-- NC_ExitOnISP-AdmxBacked-End -->

<!-- NC_ExitOnISP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_ExitOnISP-Examples-End -->

<!-- NC_ExitOnISP-End -->

<!-- NC_NoRegistration-Begin -->
## NC_NoRegistration

<!-- NC_NoRegistration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_NoRegistration-Applicability-End -->

<!-- NC_NoRegistration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/NC_NoRegistration
```
<!-- NC_NoRegistration-OmaUri-End -->

<!-- NC_NoRegistration-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the Windows Registration Wizard connects to Microsoft.com for online registration.

- If you enable this policy setting, it blocks users from connecting to Microsoft.com for online registration and users can't register their copy of Windows online.

- If you disable or don't configure this policy setting, users can connect to Microsoft.com to complete the online Windows Registration.

Note that registration is optional and involves submitting some personal information to Microsoft. However, Windows Product Activation is required but doesn't involve submitting any personal information (except the country/region you live in).
<!-- NC_NoRegistration-Description-End -->

<!-- NC_NoRegistration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_NoRegistration-Editable-End -->

<!-- NC_NoRegistration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_NoRegistration-DFProperties-End -->

<!-- NC_NoRegistration-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_NoRegistration |
| Friendly Name | Turn off Registration if URL connection is referring to Microsoft.com |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\Registration Wizard Control |
| Registry Value Name | NoRegistration |
| ADMX File Name | ICM.admx |
<!-- NC_NoRegistration-AdmxBacked-End -->

<!-- NC_NoRegistration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_NoRegistration-Examples-End -->

<!-- NC_NoRegistration-End -->

<!-- PCH_DoNotReport-Begin -->
## PCH_DoNotReport

<!-- PCH_DoNotReport-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PCH_DoNotReport-Applicability-End -->

<!-- PCH_DoNotReport-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/PCH_DoNotReport
```
<!-- PCH_DoNotReport-OmaUri-End -->

<!-- PCH_DoNotReport-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not errors are reported to Microsoft.

Error Reporting is used to report information about a system or application that has failed or has stopped responding and is used to improve the quality of the product.

- If you enable this policy setting, users aren't given the option to report errors.

- If you disable or don't configure this policy setting, the errors may be reported to Microsoft via the Internet or to a corporate file share.

This policy setting overrides any user setting made from the Control Panel for error reporting.

Also see the "Configure Error Reporting", "Display Error Notification" and "Disable Windows Error Reporting" policy settings under Computer Configuration/Administrative Templates/Windows Components/Windows Error Reporting.
<!-- PCH_DoNotReport-Description-End -->

<!-- PCH_DoNotReport-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PCH_DoNotReport-Editable-End -->

<!-- PCH_DoNotReport-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PCH_DoNotReport-DFProperties-End -->

<!-- PCH_DoNotReport-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PCH_DoNotReport |
| Friendly Name | Turn off Windows Error Reporting |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\PCHealth\ErrorReporting |
| ADMX File Name | ICM.admx |
<!-- PCH_DoNotReport-AdmxBacked-End -->

<!-- PCH_DoNotReport-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PCH_DoNotReport-Examples-End -->

<!-- PCH_DoNotReport-End -->

<!-- RemoveWindowsUpdate_ICM-Begin -->
## RemoveWindowsUpdate_ICM

<!-- RemoveWindowsUpdate_ICM-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RemoveWindowsUpdate_ICM-Applicability-End -->

<!-- RemoveWindowsUpdate_ICM-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/RemoveWindowsUpdate_ICM
```
<!-- RemoveWindowsUpdate_ICM-OmaUri-End -->

<!-- RemoveWindowsUpdate_ICM-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove access to Windows Update.

- If you enable this policy setting, all Windows Update features are removed. This includes blocking access to the Windows Update website at `https://windowsupdate.microsoft.com`, from the Windows Update hyperlink on the Start menu, and also on the Tools menu in Internet Explorer. Windows automatic updating is also disabled; you'll neither be notified about nor will you receive critical updates from Windows Update. This policy setting also prevents Device Manager from automatically installing driver updates from the Windows Update website.

- If you disable or don't configure this policy setting, users can access the Windows Update website and enable automatic updating to receive notifications and critical updates from Windows Update.

> [!NOTE]
> This policy applies only when this PC is configured to connect to an intranet update service using the "Specify intranet Microsoft update service location" policy.
<!-- RemoveWindowsUpdate_ICM-Description-End -->

<!-- RemoveWindowsUpdate_ICM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoveWindowsUpdate_ICM-Editable-End -->

<!-- RemoveWindowsUpdate_ICM-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemoveWindowsUpdate_ICM-DFProperties-End -->

<!-- RemoveWindowsUpdate_ICM-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RemoveWindowsUpdate_ICM |
| Friendly Name | Turn off access to all Windows Update features |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| Registry Value Name | DisableWindowsUpdateAccess |
| ADMX File Name | ICM.admx |
<!-- RemoveWindowsUpdate_ICM-AdmxBacked-End -->

<!-- RemoveWindowsUpdate_ICM-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemoveWindowsUpdate_ICM-Examples-End -->

<!-- RemoveWindowsUpdate_ICM-End -->

<!-- SearchCompanion_DisableFileUpdates-Begin -->
## SearchCompanion_DisableFileUpdates

<!-- SearchCompanion_DisableFileUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SearchCompanion_DisableFileUpdates-Applicability-End -->

<!-- SearchCompanion_DisableFileUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/SearchCompanion_DisableFileUpdates
```
<!-- SearchCompanion_DisableFileUpdates-OmaUri-End -->

<!-- SearchCompanion_DisableFileUpdates-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Search Companion should automatically download content updates during local and Internet searches.

When users search the local computer or the Internet, Search Companion occasionally connects to Microsoft to download an updated privacy policy and additional content files used to format and display results.

- If you enable this policy setting, Search Companion doesn't download content updates during searches.

- If you disable or don't configure this policy setting, Search Companion downloads content updates unless the user is using Classic Search.

> [!NOTE]
> Internet searches still send the search text and information about the search to Microsoft and the chosen search provider. Choosing Classic Search turns off the Search Companion feature completely.
<!-- SearchCompanion_DisableFileUpdates-Description-End -->

<!-- SearchCompanion_DisableFileUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SearchCompanion_DisableFileUpdates-Editable-End -->

<!-- SearchCompanion_DisableFileUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SearchCompanion_DisableFileUpdates-DFProperties-End -->

<!-- SearchCompanion_DisableFileUpdates-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SearchCompanion_DisableFileUpdates |
| Friendly Name | Turn off Search Companion content file updates |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\SearchCompanion |
| Registry Value Name | DisableContentFileUpdates |
| ADMX File Name | ICM.admx |
<!-- SearchCompanion_DisableFileUpdates-AdmxBacked-End -->

<!-- SearchCompanion_DisableFileUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SearchCompanion_DisableFileUpdates-Examples-End -->

<!-- SearchCompanion_DisableFileUpdates-End -->

<!-- ShellNoUseInternetOpenWith_1-Begin -->
## ShellNoUseInternetOpenWith_1

<!-- ShellNoUseInternetOpenWith_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShellNoUseInternetOpenWith_1-Applicability-End -->

<!-- ShellNoUseInternetOpenWith_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ICM/ShellNoUseInternetOpenWith_1
```
<!-- ShellNoUseInternetOpenWith_1-OmaUri-End -->

<!-- ShellNoUseInternetOpenWith_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to use the Microsoft Web service for finding an application to open a file with an unhandled file association.

When a user opens a file that has an extension that isn't associated with any applications on the computer, the user is given the choice to select a local application or use the Web service to find an application.

- If you enable this policy setting, the link and the dialog for using the Web service to open an unhandled file association are removed.

- If you disable or don't configure this policy setting, the user is allowed to use the Web service.
<!-- ShellNoUseInternetOpenWith_1-Description-End -->

<!-- ShellNoUseInternetOpenWith_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShellNoUseInternetOpenWith_1-Editable-End -->

<!-- ShellNoUseInternetOpenWith_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShellNoUseInternetOpenWith_1-DFProperties-End -->

<!-- ShellNoUseInternetOpenWith_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellNoUseInternetOpenWith_1 |
| Friendly Name | Turn off Internet File Association service |
| Location | User Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoInternetOpenWith |
| ADMX File Name | ICM.admx |
<!-- ShellNoUseInternetOpenWith_1-AdmxBacked-End -->

<!-- ShellNoUseInternetOpenWith_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShellNoUseInternetOpenWith_1-Examples-End -->

<!-- ShellNoUseInternetOpenWith_1-End -->

<!-- ShellNoUseInternetOpenWith_2-Begin -->
## ShellNoUseInternetOpenWith_2

<!-- ShellNoUseInternetOpenWith_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShellNoUseInternetOpenWith_2-Applicability-End -->

<!-- ShellNoUseInternetOpenWith_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/ShellNoUseInternetOpenWith_2
```
<!-- ShellNoUseInternetOpenWith_2-OmaUri-End -->

<!-- ShellNoUseInternetOpenWith_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to use the Microsoft Web service for finding an application to open a file with an unhandled file association.

When a user opens a file that has an extension that isn't associated with any applications on the computer, the user is given the choice to select a local application or use the Web service to find an application.

- If you enable this policy setting, the link and the dialog for using the Web service to open an unhandled file association are removed.

- If you disable or don't configure this policy setting, the user is allowed to use the Web service.
<!-- ShellNoUseInternetOpenWith_2-Description-End -->

<!-- ShellNoUseInternetOpenWith_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShellNoUseInternetOpenWith_2-Editable-End -->

<!-- ShellNoUseInternetOpenWith_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShellNoUseInternetOpenWith_2-DFProperties-End -->

<!-- ShellNoUseInternetOpenWith_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellNoUseInternetOpenWith_2 |
| Friendly Name | Turn off Internet File Association service |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoInternetOpenWith |
| ADMX File Name | ICM.admx |
<!-- ShellNoUseInternetOpenWith_2-AdmxBacked-End -->

<!-- ShellNoUseInternetOpenWith_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShellNoUseInternetOpenWith_2-Examples-End -->

<!-- ShellNoUseInternetOpenWith_2-End -->

<!-- ShellNoUseStoreOpenWith_1-Begin -->
## ShellNoUseStoreOpenWith_1

<!-- ShellNoUseStoreOpenWith_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShellNoUseStoreOpenWith_1-Applicability-End -->

<!-- ShellNoUseStoreOpenWith_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ICM/ShellNoUseStoreOpenWith_1
```
<!-- ShellNoUseStoreOpenWith_1-OmaUri-End -->

<!-- ShellNoUseStoreOpenWith_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to use the Store service for finding an application to open a file with an unhandled file type or protocol association.

When a user opens a file type or protocol that isn't associated with any applications on the computer, the user is given the choice to select a local application or use the Store service to find an application.

- If you enable this policy setting, the "Look for an app in the Store" item in the Open With dialog is removed.

- If you disable or don't configure this policy setting, the user is allowed to use the Store service and the Store item is available in the Open With dialog.
<!-- ShellNoUseStoreOpenWith_1-Description-End -->

<!-- ShellNoUseStoreOpenWith_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShellNoUseStoreOpenWith_1-Editable-End -->

<!-- ShellNoUseStoreOpenWith_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShellNoUseStoreOpenWith_1-DFProperties-End -->

<!-- ShellNoUseStoreOpenWith_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellNoUseStoreOpenWith_1 |
| Friendly Name | Turn off access to the Store |
| Location | User Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoUseStoreOpenWith |
| ADMX File Name | ICM.admx |
<!-- ShellNoUseStoreOpenWith_1-AdmxBacked-End -->

<!-- ShellNoUseStoreOpenWith_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShellNoUseStoreOpenWith_1-Examples-End -->

<!-- ShellNoUseStoreOpenWith_1-End -->

<!-- ShellNoUseStoreOpenWith_2-Begin -->
## ShellNoUseStoreOpenWith_2

<!-- ShellNoUseStoreOpenWith_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShellNoUseStoreOpenWith_2-Applicability-End -->

<!-- ShellNoUseStoreOpenWith_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/ShellNoUseStoreOpenWith_2
```
<!-- ShellNoUseStoreOpenWith_2-OmaUri-End -->

<!-- ShellNoUseStoreOpenWith_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to use the Store service for finding an application to open a file with an unhandled file type or protocol association.

When a user opens a file type or protocol that isn't associated with any applications on the computer, the user is given the choice to select a local application or use the Store service to find an application.

- If you enable this policy setting, the "Look for an app in the Store" item in the Open With dialog is removed.

- If you disable or don't configure this policy setting, the user is allowed to use the Store service and the Store item is available in the Open With dialog.
<!-- ShellNoUseStoreOpenWith_2-Description-End -->

<!-- ShellNoUseStoreOpenWith_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShellNoUseStoreOpenWith_2-Editable-End -->

<!-- ShellNoUseStoreOpenWith_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShellNoUseStoreOpenWith_2-DFProperties-End -->

<!-- ShellNoUseStoreOpenWith_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellNoUseStoreOpenWith_2 |
| Friendly Name | Turn off access to the Store |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoUseStoreOpenWith |
| ADMX File Name | ICM.admx |
<!-- ShellNoUseStoreOpenWith_2-AdmxBacked-End -->

<!-- ShellNoUseStoreOpenWith_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShellNoUseStoreOpenWith_2-Examples-End -->

<!-- ShellNoUseStoreOpenWith_2-End -->

<!-- ShellPreventWPWDownload_1-Begin -->
## ShellPreventWPWDownload_1

<!-- ShellPreventWPWDownload_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShellPreventWPWDownload_1-Applicability-End -->

<!-- ShellPreventWPWDownload_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ICM/ShellPreventWPWDownload_1
```
<!-- ShellPreventWPWDownload_1-OmaUri-End -->

<!-- ShellPreventWPWDownload_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows should download a list of providers for the web publishing and online ordering wizards.

These wizards allow users to select from a list of companies that provide services such as online storage and photographic printing. By default, Windows displays providers downloaded from a Windows website in addition to providers specified in the registry.

- If you enable this policy setting, Windows doesn't download providers, and only the service providers that are cached in the local registry are displayed.

- If you disable or don't configure this policy setting, a list of providers are downloaded when the user uses the web publishing or online ordering wizards.

See the documentation for the web publishing and online ordering wizards for more information, including details on specifying service providers in the registry.
<!-- ShellPreventWPWDownload_1-Description-End -->

<!-- ShellPreventWPWDownload_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShellPreventWPWDownload_1-Editable-End -->

<!-- ShellPreventWPWDownload_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShellPreventWPWDownload_1-DFProperties-End -->

<!-- ShellPreventWPWDownload_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellPreventWPWDownload_1 |
| Friendly Name | Turn off Internet download for Web publishing and online ordering wizards |
| Location | User Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoWebServices |
| ADMX File Name | ICM.admx |
<!-- ShellPreventWPWDownload_1-AdmxBacked-End -->

<!-- ShellPreventWPWDownload_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShellPreventWPWDownload_1-Examples-End -->

<!-- ShellPreventWPWDownload_1-End -->

<!-- ShellRemoveOrderPrints_1-Begin -->
## ShellRemoveOrderPrints_1

<!-- ShellRemoveOrderPrints_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShellRemoveOrderPrints_1-Applicability-End -->

<!-- ShellRemoveOrderPrints_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ICM/ShellRemoveOrderPrints_1
```
<!-- ShellRemoveOrderPrints_1-OmaUri-End -->

<!-- ShellRemoveOrderPrints_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the "Order Prints Online" task is available from Picture Tasks in Windows folders.

The Order Prints Online Wizard is used to download a list of providers and allow users to order prints online.

- If you enable this policy setting, the task "Order Prints Online" is removed from Picture Tasks in File Explorer folders.

- If you disable or don't configure this policy setting, the task is displayed.
<!-- ShellRemoveOrderPrints_1-Description-End -->

<!-- ShellRemoveOrderPrints_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShellRemoveOrderPrints_1-Editable-End -->

<!-- ShellRemoveOrderPrints_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShellRemoveOrderPrints_1-DFProperties-End -->

<!-- ShellRemoveOrderPrints_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellRemoveOrderPrints_1 |
| Friendly Name | Turn off the "Order Prints" picture task |
| Location | User Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoOnlinePrintsWizard |
| ADMX File Name | ICM.admx |
<!-- ShellRemoveOrderPrints_1-AdmxBacked-End -->

<!-- ShellRemoveOrderPrints_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShellRemoveOrderPrints_1-Examples-End -->

<!-- ShellRemoveOrderPrints_1-End -->

<!-- ShellRemoveOrderPrints_2-Begin -->
## ShellRemoveOrderPrints_2

<!-- ShellRemoveOrderPrints_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShellRemoveOrderPrints_2-Applicability-End -->

<!-- ShellRemoveOrderPrints_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/ShellRemoveOrderPrints_2
```
<!-- ShellRemoveOrderPrints_2-OmaUri-End -->

<!-- ShellRemoveOrderPrints_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the "Order Prints Online" task is available from Picture Tasks in Windows folders.

The Order Prints Online Wizard is used to download a list of providers and allow users to order prints online.

- If you enable this policy setting, the task "Order Prints Online" is removed from Picture Tasks in File Explorer folders.

- If you disable or don't configure this policy setting, the task is displayed.
<!-- ShellRemoveOrderPrints_2-Description-End -->

<!-- ShellRemoveOrderPrints_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShellRemoveOrderPrints_2-Editable-End -->

<!-- ShellRemoveOrderPrints_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShellRemoveOrderPrints_2-DFProperties-End -->

<!-- ShellRemoveOrderPrints_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellRemoveOrderPrints_2 |
| Friendly Name | Turn off the "Order Prints" picture task |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoOnlinePrintsWizard |
| ADMX File Name | ICM.admx |
<!-- ShellRemoveOrderPrints_2-AdmxBacked-End -->

<!-- ShellRemoveOrderPrints_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShellRemoveOrderPrints_2-Examples-End -->

<!-- ShellRemoveOrderPrints_2-End -->

<!-- ShellRemovePublishToWeb_1-Begin -->
## ShellRemovePublishToWeb_1

<!-- ShellRemovePublishToWeb_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShellRemovePublishToWeb_1-Applicability-End -->

<!-- ShellRemovePublishToWeb_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ICM/ShellRemovePublishToWeb_1
```
<!-- ShellRemovePublishToWeb_1-OmaUri-End -->

<!-- ShellRemovePublishToWeb_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the tasks "Publish this file to the Web," "Publish this folder to the Web," and "Publish the selected items to the Web" are available from File and Folder Tasks in Windows folders.

The Web Publishing Wizard is used to download a list of providers and allow users to publish content to the web.

- If you enable this policy setting, these tasks are removed from the File and Folder tasks in Windows folders.

- If you disable or don't configure this policy setting, the tasks are shown.
<!-- ShellRemovePublishToWeb_1-Description-End -->

<!-- ShellRemovePublishToWeb_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShellRemovePublishToWeb_1-Editable-End -->

<!-- ShellRemovePublishToWeb_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShellRemovePublishToWeb_1-DFProperties-End -->

<!-- ShellRemovePublishToWeb_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellRemovePublishToWeb_1 |
| Friendly Name | Turn off the "Publish to Web" task for files and folders |
| Location | User Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoPublishingWizard |
| ADMX File Name | ICM.admx |
<!-- ShellRemovePublishToWeb_1-AdmxBacked-End -->

<!-- ShellRemovePublishToWeb_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShellRemovePublishToWeb_1-Examples-End -->

<!-- ShellRemovePublishToWeb_1-End -->

<!-- ShellRemovePublishToWeb_2-Begin -->
## ShellRemovePublishToWeb_2

<!-- ShellRemovePublishToWeb_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShellRemovePublishToWeb_2-Applicability-End -->

<!-- ShellRemovePublishToWeb_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/ShellRemovePublishToWeb_2
```
<!-- ShellRemovePublishToWeb_2-OmaUri-End -->

<!-- ShellRemovePublishToWeb_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the tasks "Publish this file to the Web," "Publish this folder to the Web," and "Publish the selected items to the Web" are available from File and Folder Tasks in Windows folders.

The Web Publishing Wizard is used to download a list of providers and allow users to publish content to the web.

- If you enable this policy setting, these tasks are removed from the File and Folder tasks in Windows folders.

- If you disable or don't configure this policy setting, the tasks are shown.
<!-- ShellRemovePublishToWeb_2-Description-End -->

<!-- ShellRemovePublishToWeb_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShellRemovePublishToWeb_2-Editable-End -->

<!-- ShellRemovePublishToWeb_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShellRemovePublishToWeb_2-DFProperties-End -->

<!-- ShellRemovePublishToWeb_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellRemovePublishToWeb_2 |
| Friendly Name | Turn off the "Publish to Web" task for files and folders |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoPublishingWizard |
| ADMX File Name | ICM.admx |
<!-- ShellRemovePublishToWeb_2-AdmxBacked-End -->

<!-- ShellRemovePublishToWeb_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShellRemovePublishToWeb_2-Examples-End -->

<!-- ShellRemovePublishToWeb_2-End -->

<!-- WinMSG_NoInstrumentation_1-Begin -->
## WinMSG_NoInstrumentation_1

<!-- WinMSG_NoInstrumentation_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WinMSG_NoInstrumentation_1-Applicability-End -->

<!-- WinMSG_NoInstrumentation_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ICM/WinMSG_NoInstrumentation_1
```
<!-- WinMSG_NoInstrumentation_1-OmaUri-End -->

<!-- WinMSG_NoInstrumentation_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows Messenger collects anonymous information about how Windows Messenger software and service is used.

With the Customer Experience Improvement program, users can allow Microsoft to collect anonymous information about how the product is used. This information is used to improve the product in future releases.

- If you enable this policy setting, Windows Messenger doesn't collect usage information, and the user settings to enable the collection of usage information aren't shown.

- If you disable this policy setting, Windows Messenger collects anonymous usage information, and the setting isn't shown.

- If you don't configure this policy setting, users have the choice to opt in and allow information to be collected.
<!-- WinMSG_NoInstrumentation_1-Description-End -->

<!-- WinMSG_NoInstrumentation_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WinMSG_NoInstrumentation_1-Editable-End -->

<!-- WinMSG_NoInstrumentation_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WinMSG_NoInstrumentation_1-DFProperties-End -->

<!-- WinMSG_NoInstrumentation_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WinMSG_NoInstrumentation_1 |
| Friendly Name | Turn off the Windows Messenger Customer Experience Improvement Program |
| Location | User Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Messenger\Client |
| Registry Value Name | CEIP |
| ADMX File Name | ICM.admx |
<!-- WinMSG_NoInstrumentation_1-AdmxBacked-End -->

<!-- WinMSG_NoInstrumentation_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WinMSG_NoInstrumentation_1-Examples-End -->

<!-- WinMSG_NoInstrumentation_1-End -->

<!-- WinMSG_NoInstrumentation_2-Begin -->
## WinMSG_NoInstrumentation_2

<!-- WinMSG_NoInstrumentation_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WinMSG_NoInstrumentation_2-Applicability-End -->

<!-- WinMSG_NoInstrumentation_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ICM/WinMSG_NoInstrumentation_2
```
<!-- WinMSG_NoInstrumentation_2-OmaUri-End -->

<!-- WinMSG_NoInstrumentation_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows Messenger collects anonymous information about how Windows Messenger software and service is used.

With the Customer Experience Improvement program, users can allow Microsoft to collect anonymous information about how the product is used. This information is used to improve the product in future releases.

- If you enable this policy setting, Windows Messenger doesn't collect usage information, and the user settings to enable the collection of usage information aren't shown.

- If you disable this policy setting, Windows Messenger collects anonymous usage information, and the setting isn't shown.

- If you don't configure this policy setting, users have the choice to opt in and allow information to be collected.
<!-- WinMSG_NoInstrumentation_2-Description-End -->

<!-- WinMSG_NoInstrumentation_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WinMSG_NoInstrumentation_2-Editable-End -->

<!-- WinMSG_NoInstrumentation_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WinMSG_NoInstrumentation_2-DFProperties-End -->

<!-- WinMSG_NoInstrumentation_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WinMSG_NoInstrumentation_2 |
| Friendly Name | Turn off the Windows Messenger Customer Experience Improvement Program |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Messenger\Client |
| Registry Value Name | CEIP |
| ADMX File Name | ICM.admx |
<!-- WinMSG_NoInstrumentation_2-AdmxBacked-End -->

<!-- WinMSG_NoInstrumentation_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WinMSG_NoInstrumentation_2-Examples-End -->

<!-- WinMSG_NoInstrumentation_2-End -->

<!-- ADMX_ICM-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_ICM-CspMoreInfo-End -->

<!-- ADMX_ICM-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
