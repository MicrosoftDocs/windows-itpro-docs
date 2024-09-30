---
title: ADMX_Printing Policy CSP
description: Learn more about the ADMX_Printing Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Printing-Begin -->
# Policy CSP - ADMX_Printing

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Printing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Printing-Editable-End -->

<!-- AllowWebPrinting-Begin -->
## AllowWebPrinting

<!-- AllowWebPrinting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowWebPrinting-Applicability-End -->

<!-- AllowWebPrinting-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/AllowWebPrinting
```
<!-- AllowWebPrinting-OmaUri-End -->

<!-- AllowWebPrinting-Description-Begin -->
<!-- Description-Source-ADMX -->
Internet printing lets you display printers on Web pages so that printers can be viewed, managed, and used across the Internet or an intranet.

- If you enable this policy setting, Internet printing is activated on this server.

- If you disable this policy setting or don't configure it, Internet printing isn't activated.

Internet printing is an extension of Internet Information Services (IIS). To use Internet printing, IIS must be installed, and printing support and this setting must be enabled.

> [!NOTE]
> This setting affects the server side of Internet printing only. It doesn't prevent the print client on the computer from printing across the Internet.

Also, see the "Custom support URL in the Printers folder's left pane" setting in this folder and the "Browse a common Web site to find printers" setting in User Configuration\Administrative Templates\Control Panel\Printers.
<!-- AllowWebPrinting-Description-End -->

<!-- AllowWebPrinting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWebPrinting-Editable-End -->

<!-- AllowWebPrinting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowWebPrinting-DFProperties-End -->

<!-- AllowWebPrinting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowWebPrinting |
| Friendly Name | Activate Internet printing |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | DisableWebPrinting |
| ADMX File Name | Printing.admx |
<!-- AllowWebPrinting-AdmxBacked-End -->

<!-- AllowWebPrinting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWebPrinting-Examples-End -->

<!-- AllowWebPrinting-End -->

<!-- ApplicationDriverIsolation-Begin -->
## ApplicationDriverIsolation

<!-- ApplicationDriverIsolation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ApplicationDriverIsolation-Applicability-End -->

<!-- ApplicationDriverIsolation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/ApplicationDriverIsolation
```
<!-- ApplicationDriverIsolation-OmaUri-End -->

<!-- ApplicationDriverIsolation-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines if print driver components are isolated from applications instead of normally loading them into applications. Isolating print drivers greatly reduces the risk of a print driver failure causing an application crash.

Not all applications support driver isolation. By default, Microsoft Excel 2007, Excel 2010, Word 2007, Word 2010 and certain other applications are configured to support it. Other applications may also be capable of isolating print drivers, depending on whether they're configured for it.

- If you enable or don't configure this policy setting, then applications that are configured to support driver isolation will be isolated.

- If you disable this policy setting, then print drivers will be loaded within all associated application processes.

Note:

-This policy setting applies only to applications opted into isolation.

-This policy setting applies only to print drivers loaded by applications. Print drivers loaded by the print spooler aren't affected.

-This policy setting is only checked once during the lifetime of a process. After changing the policy, a running application must be relaunched before settings take effect.
<!-- ApplicationDriverIsolation-Description-End -->

<!-- ApplicationDriverIsolation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ApplicationDriverIsolation-Editable-End -->

<!-- ApplicationDriverIsolation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ApplicationDriverIsolation-DFProperties-End -->

<!-- ApplicationDriverIsolation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ApplicationDriverIsolation |
| Friendly Name | Isolate print drivers from applications |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | ApplicationDriverIsolation |
| ADMX File Name | Printing.admx |
<!-- ApplicationDriverIsolation-AdmxBacked-End -->

<!-- ApplicationDriverIsolation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ApplicationDriverIsolation-Examples-End -->

<!-- ApplicationDriverIsolation-End -->

<!-- CustomizedSupportUrl-Begin -->
## CustomizedSupportUrl

<!-- CustomizedSupportUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CustomizedSupportUrl-Applicability-End -->

<!-- CustomizedSupportUrl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/CustomizedSupportUrl
```
<!-- CustomizedSupportUrl-OmaUri-End -->

<!-- CustomizedSupportUrl-Description-Begin -->
<!-- Description-Source-ADMX -->
By default, the Printers folder includes a link to the Microsoft Support Web page called "Get help with printing". It can also include a link to a Web page supplied by the vendor of the currently selected printer.

- If you enable this policy setting, you replace the "Get help with printing" default link with a link to a Web page customized for your enterprise.

- If you disable this setting or don't configure it, or if you don't enter an alternate Internet address, the default link will appear in the Printers folder.

> [!NOTE]
> Web pages links only appear in the Printers folder when Web view is enabled. If Web view is disabled, the setting has no effect. (To enable Web view, open the Printers folder, and, on the Tools menu, click Folder Options, click the General tab, and then click "Enable Web content in folders").

Also, see the "Activate Internet printing" setting in this setting folder and the "Browse a common web site to find printers" setting in User Configuration\Administrative Templates\Control Panel\Printers.

Web view is affected by the "Turn on Classic Shell" and "Do not allow Folder Options to be opened from the Options button on the View tab of the ribbon" settings in User Configuration\Administrative Templates\Windows Components\Windows Explorer, and by the "Enable Active Desktop" setting in User Configuration\Administrative Templates\Desktop\Active Desktop.
<!-- CustomizedSupportUrl-Description-End -->

<!-- CustomizedSupportUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomizedSupportUrl-Editable-End -->

<!-- CustomizedSupportUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomizedSupportUrl-DFProperties-End -->

<!-- CustomizedSupportUrl-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CustomizedSupportUrl |
| Friendly Name | Custom support URL in the Printers folder's left pane |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| ADMX File Name | Printing.admx |
<!-- CustomizedSupportUrl-AdmxBacked-End -->

<!-- CustomizedSupportUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomizedSupportUrl-Examples-End -->

<!-- CustomizedSupportUrl-End -->

<!-- DomainPrinters-Begin -->
## DomainPrinters

<!-- DomainPrinters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DomainPrinters-Applicability-End -->

<!-- DomainPrinters-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/DomainPrinters
```
<!-- DomainPrinters-OmaUri-End -->

<!-- DomainPrinters-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy setting, it sets the maximum number of printers (of each type) that the Add Printer wizard will display on a computer on a managed network (when the computer is able to reach a domain controller, e.g. a domain-joined laptop on a corporate network).

- If this policy setting is disabled, the network scan page won't be displayed.

- If this policy setting isn't configured, the Add Printer wizard will display the default number of printers of each type:

Directory printers: 20
TCP/IP printers: 0
Web Services printers: 0
Bluetooth printers: 10
Shared printers: 0

In order to view available Web Services printers on your network, ensure that network discovery is turned on. To turn on network discovery, click "Start", click "Control Panel", and then click "Network and Internet". On the "Network and Internet" page, click "Network and Sharing Center". On the Network and Sharing Center page, click "Change advanced sharing settings". On the Advanced sharing settings page, click the arrow next to "Domain" arrow, click "turn on network discovery", and then click "Save changes".

If you would like to not display printers of a certain type, enable this policy and set the number of printers to display to 0.

In Windows 10 and later, only TCP/IP printers can be shown in the wizard.

- If you enable this policy setting, only TCP/IP printer limits are applicable. On Windows 10 only, if you disable or don't configure this policy setting, the default limit's applied.

In Windows 8 and later, Bluetooth printers aren't shown so its limit doesn't apply to those versions of Windows.
<!-- DomainPrinters-Description-End -->

<!-- DomainPrinters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DomainPrinters-Editable-End -->

<!-- DomainPrinters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DomainPrinters-DFProperties-End -->

<!-- DomainPrinters-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DomainPrinters |
| Friendly Name | Add Printer wizard - Network scan page (Managed network) |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\Wizard |
| Registry Value Name | DomainDisplayPrinters_State |
| ADMX File Name | Printing.admx |
<!-- DomainPrinters-AdmxBacked-End -->

<!-- DomainPrinters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DomainPrinters-Examples-End -->

<!-- DomainPrinters-End -->

<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-Begin -->
## DoNotInstallCompatibleDriverFromWindowsUpdate

<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-Applicability-End -->

<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/DoNotInstallCompatibleDriverFromWindowsUpdate
```
<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-OmaUri-End -->

<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage where client computers search for Point and Printer drivers.

- If you enable this policy setting, the client computer will continue to search for compatible Point and Print drivers from Windows Update after it fails to find the compatible driver from the local driver store and the server driver cache.

- If you disable this policy setting, the client computer will only search the local driver store and server driver cache for compatible Point and Print drivers. If it's unable to find a compatible driver, then the Point and Print connection will fail.

This policy setting isn't configured by default, and the behavior depends on the version of Windows that you are using.

By default, Windows Ultimate, Professional and Home SKUs will continue to search for compatible Point and Print drivers from Windows Update, if needed. However, you must explicitly enable this policy setting for other versions of Windows (for example Windows Enterprise, and all versions of Windows Server 2008 R2 and later) to have the same behavior.
<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-Description-End -->

<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-Editable-End -->

<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-DFProperties-End -->

<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DoNotInstallCompatibleDriverFromWindowsUpdate |
| Friendly Name | Extend Point and Print connection to search Windows Update |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | DoNotInstallCompatibleDriverFromWindowsUpdate |
| ADMX File Name | Printing.admx |
<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-AdmxBacked-End -->

<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-Examples-End -->

<!-- DoNotInstallCompatibleDriverFromWindowsUpdate-End -->

<!-- DownlevelBrowse-Begin -->
## DownlevelBrowse

<!-- DownlevelBrowse-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DownlevelBrowse-Applicability-End -->

<!-- DownlevelBrowse-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Printing/DownlevelBrowse
```
<!-- DownlevelBrowse-OmaUri-End -->

<!-- DownlevelBrowse-Description-Begin -->
<!-- Description-Source-ADMX -->
Allows users to use the Add Printer Wizard to search the network for shared printers.

- If you enable this setting or don't configure it, when users choose to add a network printer by selecting the "A network printer, or a printer attached to another computer" radio button on Add Printer Wizard's page 2, and also check the "Connect to this printer (or to browse for a printer, select this option and click Next)" radio button on Add Printer Wizard's page 3, and don't specify a printer name in the adjacent "Name" edit box, then Add Printer Wizard displays the list of shared printers on the network and invites to choose a printer from the shown list.

- If you disable this setting, the network printer browse page is removed from within the Add Printer Wizard, and users can't search the network but must type a printer name.

> [!NOTE]
> This setting affects the Add Printer Wizard only. It doesn't prevent users from using other programs to search for shared printers or to connect to network printers.
<!-- DownlevelBrowse-Description-End -->

<!-- DownlevelBrowse-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DownlevelBrowse-Editable-End -->

<!-- DownlevelBrowse-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DownlevelBrowse-DFProperties-End -->

<!-- DownlevelBrowse-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DownlevelBrowse |
| Friendly Name | Browse the network to find printers |
| Location | User Configuration |
| Path | Control Panel > Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\Wizard |
| Registry Value Name | Downlevel Browse |
| ADMX File Name | Printing.admx |
<!-- DownlevelBrowse-AdmxBacked-End -->

<!-- DownlevelBrowse-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DownlevelBrowse-Examples-End -->

<!-- DownlevelBrowse-End -->

<!-- EMFDespooling-Begin -->
## EMFDespooling

<!-- EMFDespooling-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EMFDespooling-Applicability-End -->

<!-- EMFDespooling-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/EMFDespooling
```
<!-- EMFDespooling-OmaUri-End -->

<!-- EMFDespooling-Description-Begin -->
<!-- Description-Source-ADMX -->
When printing through a print server, determines whether the print spooler on the client will process print jobs itself, or pass them on to the server to do the work.

This policy setting only effects printing to a Windows print server.

- If you enable this policy setting on a client machine, the client spooler won't process print jobs before sending them to the print server. This decreases the workload on the client at the expense of increasing the load on the server.

- If you disable this policy setting on a client machine, the client itself will process print jobs into printer device commands. These commands will then be sent to the print server, and the server will simply pass the commands to the printer. This increases the workload of the client while decreasing the load on the server.

If you don't enable this policy setting, the behavior is the same as disabling it.

> [!NOTE]
> This policy doesn't determine whether offline printing will be available to the client. The client print spooler can always queue print jobs when not connected to the print server. Upon reconnecting to the server, the client will submit any pending print jobs.

> [!NOTE]
> Some printer drivers require a custom print processor. In some cases the custom print processor may not be installed on the client machine, such as when the print server doesn't support transferring print processors during point-and-print. In the case of a print processor mismatch, the client spooler will always send jobs to the print server for rendering. Disabling the above policy setting doesn't override this behavior.

> [!NOTE]
> In cases where the client print driver doesn't match the server print driver (mismatched connection), the client will always process the print job, regardless of the setting of this policy.
<!-- EMFDespooling-Description-End -->

<!-- EMFDespooling-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EMFDespooling-Editable-End -->

<!-- EMFDespooling-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EMFDespooling-DFProperties-End -->

<!-- EMFDespooling-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EMFDespooling |
| Friendly Name | Always render print jobs on the server |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | ForceCSREMFDespooling |
| ADMX File Name | Printing.admx |
<!-- EMFDespooling-AdmxBacked-End -->

<!-- EMFDespooling-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EMFDespooling-Examples-End -->

<!-- EMFDespooling-End -->

<!-- ForceSoftwareRasterization-Begin -->
## ForceSoftwareRasterization

<!-- ForceSoftwareRasterization-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ForceSoftwareRasterization-Applicability-End -->

<!-- ForceSoftwareRasterization-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/ForceSoftwareRasterization
```
<!-- ForceSoftwareRasterization-OmaUri-End -->

<!-- ForceSoftwareRasterization-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether the XPS Rasterization Service or the XPS-to-GDI conversion (XGC) is forced to use a software rasterizer instead of a Graphics Processing Unit (GPU) to rasterize pages.

This setting may improve the performance of the XPS Rasterization Service or the XPS-to-GDI conversion (XGC) on machines that have a relatively powerful CPU as compared to the machine's GPU.
<!-- ForceSoftwareRasterization-Description-End -->

<!-- ForceSoftwareRasterization-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ForceSoftwareRasterization-Editable-End -->

<!-- ForceSoftwareRasterization-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ForceSoftwareRasterization-DFProperties-End -->

<!-- ForceSoftwareRasterization-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ForceSoftwareRasterization |
| Friendly Name | Always rasterize content to be printed using a software rasterizer |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | ForceSoftwareRasterization |
| ADMX File Name | Printing.admx |
<!-- ForceSoftwareRasterization-AdmxBacked-End -->

<!-- ForceSoftwareRasterization-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ForceSoftwareRasterization-Examples-End -->

<!-- ForceSoftwareRasterization-End -->

<!-- IntranetPrintersUrl-Begin -->
## IntranetPrintersUrl

<!-- IntranetPrintersUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IntranetPrintersUrl-Applicability-End -->

<!-- IntranetPrintersUrl-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Printing/IntranetPrintersUrl
```
<!-- IntranetPrintersUrl-OmaUri-End -->

<!-- IntranetPrintersUrl-Description-Begin -->
<!-- Description-Source-ADMX -->
Adds a link to an Internet or intranet Web page to the Add Printer Wizard.

You can use this setting to direct users to a Web page from which they can install printers.

If you enable this setting and type an Internet or intranet address in the text box, the system adds a Browse button to the "Specify a Printer" page in the Add Printer Wizard. The Browse button appears beside the "Connect to a printer on the Internet or on a home or office network" option. When users click Browse, the system opens an Internet browser and navigates to the specified URL address to display the available printers.

This setting makes it easy for users to find the printers you want them to add.

Also, see the "Custom support URL in the Printers folder's left pane" and "Activate Internet printing" settings in "Computer Configuration\Administrative Templates\Printers".
<!-- IntranetPrintersUrl-Description-End -->

<!-- IntranetPrintersUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetPrintersUrl-Editable-End -->

<!-- IntranetPrintersUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetPrintersUrl-DFProperties-End -->

<!-- IntranetPrintersUrl-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IntranetPrintersUrl |
| Friendly Name | Browse a common web site to find printers |
| Location | User Configuration |
| Path | Control Panel > Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\Wizard |
| ADMX File Name | Printing.admx |
<!-- IntranetPrintersUrl-AdmxBacked-End -->

<!-- IntranetPrintersUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetPrintersUrl-Examples-End -->

<!-- IntranetPrintersUrl-End -->

<!-- KMPrintersAreBlocked-Begin -->
## KMPrintersAreBlocked

<!-- KMPrintersAreBlocked-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- KMPrintersAreBlocked-Applicability-End -->

<!-- KMPrintersAreBlocked-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/KMPrintersAreBlocked
```
<!-- KMPrintersAreBlocked-OmaUri-End -->

<!-- KMPrintersAreBlocked-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether printers using kernel-mode drivers may be installed on the local computer. Kernel-mode drivers have access to system-wide memory, and therefore poorly-written kernel-mode drivers can cause stop errors.

- If you disable this setting, or don't configure it, then printers using a kernel-mode drivers may be installed on the local computer running Windows XP Home Edition and Windows XP Professional.

- If you don't configure this setting on Windows Server 2003 family products, the installation of kernel-mode printer drivers will be blocked.

- If you enable this setting, installation of a printer using a kernel-mode driver won't be allowed.

> [!NOTE]
> By applying this policy, existing kernel-mode drivers will be disabled upon installation of service packs or reinstallation of the Windows XP operating system. This policy doesn't apply to 64-bit kernel-mode printer drivers as they can't be installed and associated with a print queue.
<!-- KMPrintersAreBlocked-Description-End -->

<!-- KMPrintersAreBlocked-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- KMPrintersAreBlocked-Editable-End -->

<!-- KMPrintersAreBlocked-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- KMPrintersAreBlocked-DFProperties-End -->

<!-- KMPrintersAreBlocked-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | KMPrintersAreBlocked |
| Friendly Name | Disallow installation of printers using kernel-mode drivers |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | KMPrintersAreBlocked |
| ADMX File Name | Printing.admx |
<!-- KMPrintersAreBlocked-AdmxBacked-End -->

<!-- KMPrintersAreBlocked-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- KMPrintersAreBlocked-Examples-End -->

<!-- KMPrintersAreBlocked-End -->

<!-- LegacyDefaultPrinterMode-Begin -->
## LegacyDefaultPrinterMode

<!-- LegacyDefaultPrinterMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LegacyDefaultPrinterMode-Applicability-End -->

<!-- LegacyDefaultPrinterMode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Printing/LegacyDefaultPrinterMode
```
<!-- LegacyDefaultPrinterMode-OmaUri-End -->

<!-- LegacyDefaultPrinterMode-Description-Begin -->
<!-- Description-Source-ADMX -->
This preference allows you to change default printer management.

- If you enable this setting, Windows won't manage the default printer.

- If you disable this setting, Windows will manage the default printer.

- If you don't configure this setting, default printer management won't change.
<!-- LegacyDefaultPrinterMode-Description-End -->

<!-- LegacyDefaultPrinterMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LegacyDefaultPrinterMode-Editable-End -->

<!-- LegacyDefaultPrinterMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LegacyDefaultPrinterMode-DFProperties-End -->

<!-- LegacyDefaultPrinterMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LegacyDefaultPrinterMode |
| Friendly Name | Turn off Windows default printer management |
| Location | User Configuration |
| Path | Control Panel > Printers |
| Registry Key Name | Software\Microsoft\Windows NT\CurrentVersion\Windows |
| Registry Value Name | LegacyDefaultPrinterMode |
| ADMX File Name | Printing.admx |
<!-- LegacyDefaultPrinterMode-AdmxBacked-End -->

<!-- LegacyDefaultPrinterMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LegacyDefaultPrinterMode-Examples-End -->

<!-- LegacyDefaultPrinterMode-End -->

<!-- MXDWUseLegacyOutputFormatMSXPS-Begin -->
## MXDWUseLegacyOutputFormatMSXPS

<!-- MXDWUseLegacyOutputFormatMSXPS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MXDWUseLegacyOutputFormatMSXPS-Applicability-End -->

<!-- MXDWUseLegacyOutputFormatMSXPS-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/MXDWUseLegacyOutputFormatMSXPS
```
<!-- MXDWUseLegacyOutputFormatMSXPS-OmaUri-End -->

<!-- MXDWUseLegacyOutputFormatMSXPS-Description-Begin -->
<!-- Description-Source-ADMX -->
Microsoft XPS Document Writer (MXDW) generates OpenXPS (*.oxps) files by default in Windows 10, Windows 10 and Windows Server 2025.

- If you enable this group policy setting, the default MXDW output format is the legacy Microsoft XPS (*.xps).

- If you disable or don't configure this policy setting, the default MXDW output format is OpenXPS (*.oxps).
<!-- MXDWUseLegacyOutputFormatMSXPS-Description-End -->

<!-- MXDWUseLegacyOutputFormatMSXPS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MXDWUseLegacyOutputFormatMSXPS-Editable-End -->

<!-- MXDWUseLegacyOutputFormatMSXPS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MXDWUseLegacyOutputFormatMSXPS-DFProperties-End -->

<!-- MXDWUseLegacyOutputFormatMSXPS-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MXDWUseLegacyOutputFormatMSXPS |
| Friendly Name | Change Microsoft XPS Document Writer (MXDW) default output format to the legacy Microsoft XPS format (*.xps) |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | MXDWUseLegacyOutputFormatMSXPS |
| ADMX File Name | Printing.admx |
<!-- MXDWUseLegacyOutputFormatMSXPS-AdmxBacked-End -->

<!-- MXDWUseLegacyOutputFormatMSXPS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MXDWUseLegacyOutputFormatMSXPS-Examples-End -->

<!-- MXDWUseLegacyOutputFormatMSXPS-End -->

<!-- NoDeletePrinter-Begin -->
## NoDeletePrinter

<!-- NoDeletePrinter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoDeletePrinter-Applicability-End -->

<!-- NoDeletePrinter-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Printing/NoDeletePrinter
```
<!-- NoDeletePrinter-OmaUri-End -->

<!-- NoDeletePrinter-Description-Begin -->
<!-- Description-Source-ADMX -->

- If this policy setting is enabled, it prevents users from deleting local and network printers.

If a user tries to delete a printer, such as by using the Delete option in Printers in Control Panel, a message appears explaining that a setting prevents the action.

This setting doesn't prevent users from running other programs to delete a printer.

- If this policy is disabled, or not configured, users can delete printers using the methods described above.
<!-- NoDeletePrinter-Description-End -->

<!-- NoDeletePrinter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoDeletePrinter-Editable-End -->

<!-- NoDeletePrinter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoDeletePrinter-DFProperties-End -->

<!-- NoDeletePrinter-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoDeletePrinter |
| Friendly Name | Prevent deletion of printers |
| Location | User Configuration |
| Path | Control Panel > Printers |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoDeletePrinter |
| ADMX File Name | Printing.admx |
<!-- NoDeletePrinter-AdmxBacked-End -->

<!-- NoDeletePrinter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoDeletePrinter-Examples-End -->

<!-- NoDeletePrinter-End -->

<!-- NonDomainPrinters-Begin -->
## NonDomainPrinters

<!-- NonDomainPrinters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NonDomainPrinters-Applicability-End -->

<!-- NonDomainPrinters-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/NonDomainPrinters
```
<!-- NonDomainPrinters-OmaUri-End -->

<!-- NonDomainPrinters-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy sets the maximum number of printers (of each type) that the Add Printer wizard will display on a computer on an unmanaged network (when the computer isn't able to reach a domain controller, e.g. a domain-joined laptop on a home network).

- If this setting is disabled, the network scan page won't be displayed.

If this setting isn't configured, the Add Printer wizard will display the default number of printers of each type:

TCP/IP printers: 50
Web Services printers: 50
Bluetooth printers: 10
Shared printers: 50

If you would like to not display printers of a certain type, enable this policy and set the number of printers to display to 0.

In Windows 10 and later, only TCP/IP printers can be shown in the wizard.

- If you enable this policy setting, only TCP/IP printer limits are applicable. On Windows 10 only, if you disable or don't configure this policy setting, the default limit's applied.

In Windows 8 and later, Bluetooth printers aren't shown so its limit doesn't apply to those versions of Windows.
<!-- NonDomainPrinters-Description-End -->

<!-- NonDomainPrinters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NonDomainPrinters-Editable-End -->

<!-- NonDomainPrinters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NonDomainPrinters-DFProperties-End -->

<!-- NonDomainPrinters-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NonDomainPrinters |
| Friendly Name | Add Printer wizard - Network scan page (Unmanaged network) |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\Wizard |
| Registry Value Name | NonDomainDisplayPrinters_State |
| ADMX File Name | Printing.admx |
<!-- NonDomainPrinters-AdmxBacked-End -->

<!-- NonDomainPrinters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NonDomainPrinters-Examples-End -->

<!-- NonDomainPrinters-End -->

<!-- PackagePointAndPrintOnly-Begin -->
## PackagePointAndPrintOnly

<!-- PackagePointAndPrintOnly-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PackagePointAndPrintOnly-Applicability-End -->

<!-- PackagePointAndPrintOnly-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Printing/PackagePointAndPrintOnly
```
<!-- PackagePointAndPrintOnly-OmaUri-End -->

<!-- PackagePointAndPrintOnly-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy restricts clients computers to use package point and print only.

- If this setting is enabled, users will only be able to point and print to printers that use package-aware drivers. When using package point and print, client computers will check the driver signature of all drivers that are downloaded from print servers.

- If this setting is disabled, or not configured, users won't be restricted to package-aware point and print only.
<!-- PackagePointAndPrintOnly-Description-End -->

<!-- PackagePointAndPrintOnly-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PackagePointAndPrintOnly-Editable-End -->

<!-- PackagePointAndPrintOnly-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PackagePointAndPrintOnly-DFProperties-End -->

<!-- PackagePointAndPrintOnly-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PackagePointAndPrintOnly |
| Friendly Name | Only use Package Point and print |
| Location | User Configuration |
| Path | Control Panel > Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\PackagePointAndPrint |
| Registry Value Name | PackagePointAndPrintOnly |
| ADMX File Name | Printing.admx |
<!-- PackagePointAndPrintOnly-AdmxBacked-End -->

<!-- PackagePointAndPrintOnly-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PackagePointAndPrintOnly-Examples-End -->

<!-- PackagePointAndPrintOnly-End -->

<!-- PackagePointAndPrintOnly_Win7-Begin -->
## PackagePointAndPrintOnly_Win7

<!-- PackagePointAndPrintOnly_Win7-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PackagePointAndPrintOnly_Win7-Applicability-End -->

<!-- PackagePointAndPrintOnly_Win7-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/PackagePointAndPrintOnly_Win7
```
<!-- PackagePointAndPrintOnly_Win7-OmaUri-End -->

<!-- PackagePointAndPrintOnly_Win7-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy restricts clients computers to use package point and print only.

- If this setting is enabled, users will only be able to point and print to printers that use package-aware drivers. When using package point and print, client computers will check the driver signature of all drivers that are downloaded from print servers.

- If this setting is disabled, or not configured, users won't be restricted to package-aware point and print only.
<!-- PackagePointAndPrintOnly_Win7-Description-End -->

<!-- PackagePointAndPrintOnly_Win7-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PackagePointAndPrintOnly_Win7-Editable-End -->

<!-- PackagePointAndPrintOnly_Win7-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PackagePointAndPrintOnly_Win7-DFProperties-End -->

<!-- PackagePointAndPrintOnly_Win7-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PackagePointAndPrintOnly_Win7 |
| Friendly Name | Only use Package Point and print |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\PackagePointAndPrint |
| Registry Value Name | PackagePointAndPrintOnly |
| ADMX File Name | Printing.admx |
<!-- PackagePointAndPrintOnly_Win7-AdmxBacked-End -->

<!-- PackagePointAndPrintOnly_Win7-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PackagePointAndPrintOnly_Win7-Examples-End -->

<!-- PackagePointAndPrintOnly_Win7-End -->

<!-- PackagePointAndPrintServerList-Begin -->
## PackagePointAndPrintServerList

<!-- PackagePointAndPrintServerList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PackagePointAndPrintServerList-Applicability-End -->

<!-- PackagePointAndPrintServerList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Printing/PackagePointAndPrintServerList
```
<!-- PackagePointAndPrintServerList-OmaUri-End -->

<!-- PackagePointAndPrintServerList-Description-Begin -->
<!-- Description-Source-ADMX -->
Restricts package point and print to approved servers.

This policy setting restricts package point and print connections to approved servers. This setting only applies to Package Point and Print connections, and is completely independent from the "Point and Print Restrictions" policy that governs the behavior of non-package point and print connections.

Windows Vista and later clients will attempt to make a non-package point and print connection anytime a package point and print connection fails, including attempts that are blocked by this policy. Administrators may need to set both policies to block all print connections to a specific print server.

- If this setting is enabled, users will only be able to package point and print to print servers approved by the network administrator. When using package point and print, client computers will check the driver signature of all drivers that are downloaded from print servers.

- If this setting is disabled, or not configured, package point and print won't be restricted to specific print servers.
<!-- PackagePointAndPrintServerList-Description-End -->

<!-- PackagePointAndPrintServerList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PackagePointAndPrintServerList-Editable-End -->

<!-- PackagePointAndPrintServerList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PackagePointAndPrintServerList-DFProperties-End -->

<!-- PackagePointAndPrintServerList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PackagePointAndPrintServerList |
| Friendly Name | Package Point and print - Approved servers |
| Location | User Configuration |
| Path | Control Panel > Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\PackagePointAndPrint |
| Registry Value Name | PackagePointAndPrintServerList |
| ADMX File Name | Printing.admx |
<!-- PackagePointAndPrintServerList-AdmxBacked-End -->

<!-- PackagePointAndPrintServerList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PackagePointAndPrintServerList-Examples-End -->

<!-- PackagePointAndPrintServerList-End -->

<!-- PackagePointAndPrintServerList_Win7-Begin -->
## PackagePointAndPrintServerList_Win7

<!-- PackagePointAndPrintServerList_Win7-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PackagePointAndPrintServerList_Win7-Applicability-End -->

<!-- PackagePointAndPrintServerList_Win7-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/PackagePointAndPrintServerList_Win7
```
<!-- PackagePointAndPrintServerList_Win7-OmaUri-End -->

<!-- PackagePointAndPrintServerList_Win7-Description-Begin -->
<!-- Description-Source-ADMX -->
Restricts package point and print to approved servers.

This policy setting restricts package point and print connections to approved servers. This setting only applies to Package Point and Print connections, and is completely independent from the "Point and Print Restrictions" policy that governs the behavior of non-package point and print connections.

Windows Vista and later clients will attempt to make a non-package point and print connection anytime a package point and print connection fails, including attempts that are blocked by this policy. Administrators may need to set both policies to block all print connections to a specific print server.

- If this setting is enabled, users will only be able to package point and print to print servers approved by the network administrator. When using package point and print, client computers will check the driver signature of all drivers that are downloaded from print servers.

- If this setting is disabled, or not configured, package point and print won't be restricted to specific print servers.
<!-- PackagePointAndPrintServerList_Win7-Description-End -->

<!-- PackagePointAndPrintServerList_Win7-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PackagePointAndPrintServerList_Win7-Editable-End -->

<!-- PackagePointAndPrintServerList_Win7-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PackagePointAndPrintServerList_Win7-DFProperties-End -->

<!-- PackagePointAndPrintServerList_Win7-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PackagePointAndPrintServerList_Win7 |
| Friendly Name | Package Point and print - Approved servers |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\PackagePointAndPrint |
| Registry Value Name | PackagePointAndPrintServerList |
| ADMX File Name | Printing.admx |
<!-- PackagePointAndPrintServerList_Win7-AdmxBacked-End -->

<!-- PackagePointAndPrintServerList_Win7-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PackagePointAndPrintServerList_Win7-Examples-End -->

<!-- PackagePointAndPrintServerList_Win7-End -->

<!-- PhysicalLocation-Begin -->
## PhysicalLocation

<!-- PhysicalLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PhysicalLocation-Applicability-End -->

<!-- PhysicalLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/PhysicalLocation
```
<!-- PhysicalLocation-OmaUri-End -->

<!-- PhysicalLocation-Description-Begin -->
<!-- Description-Source-ADMX -->

- If this policy setting is enabled, it specifies the default location criteria used when searching for printers.

This setting is a component of the Location Tracking feature of Windows printers. To use this setting, enable Location Tracking by enabling the "Pre-populate printer search location text" setting.

When Location Tracking is enabled, the system uses the specified location as a criterion when users search for printers. The value you type here overrides the actual location of the computer conducting the search.

Type the location of the user's computer. When users search for printers, the system uses the specified location (and other search criteria) to find a printer nearby. You can also use this setting to direct users to a particular printer or group of printers that you want them to use.

- If you disable this setting or don't configure it, and the user doesn't type a location as a search criterion, the system searches for a nearby printer based on the IP address and subnet mask of the user's computer.
<!-- PhysicalLocation-Description-End -->

<!-- PhysicalLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PhysicalLocation-Editable-End -->

<!-- PhysicalLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PhysicalLocation-DFProperties-End -->

<!-- PhysicalLocation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PhysicalLocation |
| Friendly Name | Computer location |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| ADMX File Name | Printing.admx |
<!-- PhysicalLocation-AdmxBacked-End -->

<!-- PhysicalLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PhysicalLocation-Examples-End -->

<!-- PhysicalLocation-End -->

<!-- PhysicalLocationSupport-Begin -->
## PhysicalLocationSupport

<!-- PhysicalLocationSupport-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PhysicalLocationSupport-Applicability-End -->

<!-- PhysicalLocationSupport-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/PhysicalLocationSupport
```
<!-- PhysicalLocationSupport-OmaUri-End -->

<!-- PhysicalLocationSupport-Description-Begin -->
<!-- Description-Source-ADMX -->
Enables the physical Location Tracking setting for Windows printers.

Use Location Tracking to design a location scheme for your enterprise and assign computers and printers to locations in the scheme. Location Tracking overrides the standard method used to locate and associate computers and printers. The standard method uses a printer's IP address and subnet mask to estimate its physical location and proximity to computers.

- If you enable this setting, users can browse for printers by location without knowing the printer's location or location naming scheme. Enabling Location Tracking adds a Browse button in the Add Printer wizard's Printer Name and Sharing Location screen and to the General tab in the Printer Properties dialog box. If you enable the Group Policy Computer location setting, the default location you entered appears in the Location field by default.

- If you disable this setting or don't configure it, Location Tracking is disabled. Printer proximity is estimated using the standard method (that is, based on IP address and subnet mask).
<!-- PhysicalLocationSupport-Description-End -->

<!-- PhysicalLocationSupport-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PhysicalLocationSupport-Editable-End -->

<!-- PhysicalLocationSupport-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PhysicalLocationSupport-DFProperties-End -->

<!-- PhysicalLocationSupport-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PhysicalLocationSupport |
| Friendly Name | Pre-populate printer search location text |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | PhysicalLocationSupport |
| ADMX File Name | Printing.admx |
<!-- PhysicalLocationSupport-AdmxBacked-End -->

<!-- PhysicalLocationSupport-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PhysicalLocationSupport-Examples-End -->

<!-- PhysicalLocationSupport-End -->

<!-- PrintDriverIsolationExecutionPolicy-Begin -->
## PrintDriverIsolationExecutionPolicy

<!-- PrintDriverIsolationExecutionPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PrintDriverIsolationExecutionPolicy-Applicability-End -->

<!-- PrintDriverIsolationExecutionPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/PrintDriverIsolationExecutionPolicy
```
<!-- PrintDriverIsolationExecutionPolicy-OmaUri-End -->

<!-- PrintDriverIsolationExecutionPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the print spooler will execute print drivers in an isolated or separate process. When print drivers are loaded in an isolated process (or isolated processes), a print driver failure won't cause the print spooler service to fail.

- If you enable or don't configure this policy setting, the print spooler will execute print drivers in an isolated process by default.

- If you disable this policy setting, the print spooler will execute print drivers in the print spooler process.

Note:

-Other system or driver policy settings may alter the process in which a print driver is executed.

-This policy setting applies only to print drivers loaded by the print spooler. Print drivers loaded by applications aren't affected.

-This policy setting takes effect without restarting the print spooler service.
<!-- PrintDriverIsolationExecutionPolicy-Description-End -->

<!-- PrintDriverIsolationExecutionPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PrintDriverIsolationExecutionPolicy-Editable-End -->

<!-- PrintDriverIsolationExecutionPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PrintDriverIsolationExecutionPolicy-DFProperties-End -->

<!-- PrintDriverIsolationExecutionPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PrintDriverIsolationExecutionPolicy |
| Friendly Name | Execute print drivers in isolated processes |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | PrintDriverIsolationExecutionPolicy |
| ADMX File Name | Printing.admx |
<!-- PrintDriverIsolationExecutionPolicy-AdmxBacked-End -->

<!-- PrintDriverIsolationExecutionPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PrintDriverIsolationExecutionPolicy-Examples-End -->

<!-- PrintDriverIsolationExecutionPolicy-End -->

<!-- PrintDriverIsolationOverrideCompat-Begin -->
## PrintDriverIsolationOverrideCompat

<!-- PrintDriverIsolationOverrideCompat-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PrintDriverIsolationOverrideCompat-Applicability-End -->

<!-- PrintDriverIsolationOverrideCompat-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/PrintDriverIsolationOverrideCompat
```
<!-- PrintDriverIsolationOverrideCompat-OmaUri-End -->

<!-- PrintDriverIsolationOverrideCompat-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the print spooler will override the Driver Isolation compatibility reported by the print driver. This enables executing print drivers in an isolated process, even if the driver doesn't report compatibility.

- If you enable this policy setting, the print spooler isolates all print drivers that don't explicitly opt out of Driver Isolation.

- If you disable or don't configure this policy setting, the print spooler uses the Driver Isolation compatibility flag value reported by the print driver.

Note:

-Other system or driver policy settings may alter the process in which a print driver is executed.

-This policy setting applies only to print drivers loaded by the print spooler. Print drivers loaded by applications aren't affected.

-This policy setting takes effect without restarting the print spooler service.
<!-- PrintDriverIsolationOverrideCompat-Description-End -->

<!-- PrintDriverIsolationOverrideCompat-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PrintDriverIsolationOverrideCompat-Editable-End -->

<!-- PrintDriverIsolationOverrideCompat-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PrintDriverIsolationOverrideCompat-DFProperties-End -->

<!-- PrintDriverIsolationOverrideCompat-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PrintDriverIsolationOverrideCompat |
| Friendly Name | Override print driver execution compatibility setting reported by print driver |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | PrintDriverIsolationOverrideCompat |
| ADMX File Name | Printing.admx |
<!-- PrintDriverIsolationOverrideCompat-AdmxBacked-End -->

<!-- PrintDriverIsolationOverrideCompat-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PrintDriverIsolationOverrideCompat-Examples-End -->

<!-- PrintDriverIsolationOverrideCompat-End -->

<!-- PrinterDirectorySearchScope-Begin -->
## PrinterDirectorySearchScope

<!-- PrinterDirectorySearchScope-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PrinterDirectorySearchScope-Applicability-End -->

<!-- PrinterDirectorySearchScope-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Printing/PrinterDirectorySearchScope
```
<!-- PrinterDirectorySearchScope-OmaUri-End -->

<!-- PrinterDirectorySearchScope-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the Active Directory location where searches for printers begin.

The Add Printer Wizard gives users the option of searching Active Directory for a shared printer.

If you enable this policy setting, these searches begin at the location you specify in the "Default Active Directory path" box. Otherwise, searches begin at the root of Active Directory.

This setting only provides a starting point for Active Directory searches for printers. It doesn't restrict user searches through Active Directory.
<!-- PrinterDirectorySearchScope-Description-End -->

<!-- PrinterDirectorySearchScope-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PrinterDirectorySearchScope-Editable-End -->

<!-- PrinterDirectorySearchScope-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PrinterDirectorySearchScope-DFProperties-End -->

<!-- PrinterDirectorySearchScope-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PrinterDirectorySearchScope |
| Friendly Name | Default Active Directory path when searching for printers |
| Location | User Configuration |
| Path | Control Panel > Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\Wizard |
| ADMX File Name | Printing.admx |
<!-- PrinterDirectorySearchScope-AdmxBacked-End -->

<!-- PrinterDirectorySearchScope-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PrinterDirectorySearchScope-Examples-End -->

<!-- PrinterDirectorySearchScope-End -->

<!-- PrinterServerThread-Begin -->
## PrinterServerThread

<!-- PrinterServerThread-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PrinterServerThread-Applicability-End -->

<!-- PrinterServerThread-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/PrinterServerThread
```
<!-- PrinterServerThread-OmaUri-End -->

<!-- PrinterServerThread-Description-Begin -->
<!-- Description-Source-ADMX -->
Announces the presence of shared printers to print servers for the domain.

On domains with Active Directory, shared printer resources are available in Active Directory and aren't announced.

- If you enable this setting, the print spooler announces shared printers to the print servers.

- If you disable this setting, shared printers aren't announced to print servers, even if Active Directory isn't available.

- If you don't configure this setting, shared printers are announced to servers only when Active Directory isn't available.

> [!NOTE]
> A client license is used each time a client computer announces a printer to a print browse master on the domain.
<!-- PrinterServerThread-Description-End -->

<!-- PrinterServerThread-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PrinterServerThread-Editable-End -->

<!-- PrinterServerThread-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PrinterServerThread-DFProperties-End -->

<!-- PrinterServerThread-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PrinterServerThread |
| Friendly Name | Printer browsing |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | ServerThread |
| ADMX File Name | Printing.admx |
<!-- PrinterServerThread-AdmxBacked-End -->

<!-- PrinterServerThread-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PrinterServerThread-Examples-End -->

<!-- PrinterServerThread-End -->

<!-- ShowJobTitleInEventLogs-Begin -->
## ShowJobTitleInEventLogs

<!-- ShowJobTitleInEventLogs-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShowJobTitleInEventLogs-Applicability-End -->

<!-- ShowJobTitleInEventLogs-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/ShowJobTitleInEventLogs
```
<!-- ShowJobTitleInEventLogs-OmaUri-End -->

<!-- ShowJobTitleInEventLogs-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether the print job name will be included in print event logs.

- If you disable or don't configure this policy setting, the print job name won't be included.

- If you enable this policy setting, the print job name will be included in new log entries.

> [!NOTE]
> This setting doesn't apply to Branch Office Direct Printing jobs.
<!-- ShowJobTitleInEventLogs-Description-End -->

<!-- ShowJobTitleInEventLogs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShowJobTitleInEventLogs-Editable-End -->

<!-- ShowJobTitleInEventLogs-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShowJobTitleInEventLogs-DFProperties-End -->

<!-- ShowJobTitleInEventLogs-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShowJobTitleInEventLogs |
| Friendly Name | Allow job name in event logs |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | ShowJobTitleInEventLogs |
| ADMX File Name | Printing.admx |
<!-- ShowJobTitleInEventLogs-AdmxBacked-End -->

<!-- ShowJobTitleInEventLogs-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShowJobTitleInEventLogs-Examples-End -->

<!-- ShowJobTitleInEventLogs-End -->

<!-- V4DriverDisallowPrinterExtension-Begin -->
## V4DriverDisallowPrinterExtension

<!-- V4DriverDisallowPrinterExtension-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- V4DriverDisallowPrinterExtension-Applicability-End -->

<!-- V4DriverDisallowPrinterExtension-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing/V4DriverDisallowPrinterExtension
```
<!-- V4DriverDisallowPrinterExtension-OmaUri-End -->

<!-- V4DriverDisallowPrinterExtension-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy determines if v4 printer drivers are allowed to run printer extensions.

V4 printer drivers may include an optional, customized user interface known as a printer extension. These extensions may provide access to more device features, but this may not be appropriate for all enterprises.

- If you enable this policy setting, then all printer extensions won't be allowed to run.

- If you disable this policy setting or don't configure it, then all printer extensions that have been installed will be allowed to run.
<!-- V4DriverDisallowPrinterExtension-Description-End -->

<!-- V4DriverDisallowPrinterExtension-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- V4DriverDisallowPrinterExtension-Editable-End -->

<!-- V4DriverDisallowPrinterExtension-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- V4DriverDisallowPrinterExtension-DFProperties-End -->

<!-- V4DriverDisallowPrinterExtension-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | V4DriverDisallowPrinterExtension |
| Friendly Name | Do not allow v4 printer drivers to show printer extensions |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | V4DriverDisallowPrinterExtension |
| ADMX File Name | Printing.admx |
<!-- V4DriverDisallowPrinterExtension-AdmxBacked-End -->

<!-- V4DriverDisallowPrinterExtension-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- V4DriverDisallowPrinterExtension-Examples-End -->

<!-- V4DriverDisallowPrinterExtension-End -->

<!-- ADMX_Printing-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Printing-CspMoreInfo-End -->

<!-- ADMX_Printing-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
