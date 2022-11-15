---
title: Policy CSP - ADMX_Printing
description: Learn about Policy CSP - ADMX_Printing.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/15/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Printing

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_Printing policies

<dl>
  <dd>
    <a href="#admx-printing-allowwebprinting">ADMX_Printing/AllowWebPrinting</a>
  </dd>
  <dd>
    <a href="#admx-printing-applicationdriverisolation">ADMX_Printing/ApplicationDriverIsolation</a>
  </dd>
  <dd>
    <a href="#admx-printing-customizedsupporturl">ADMX_Printing/CustomizedSupportUrl</a>
  </dd>
  <dd>
    <a href="#admx-printing-donotinstallcompatibledriverfromwindowsupdate">ADMX_Printing/DoNotInstallCompatibleDriverFromWindowsUpdate</a>
  </dd>
  <dd>
    <a href="#admx-printing-domainprinters">ADMX_Printing/DomainPrinters</a>
  </dd>
  <dd>
    <a href="#admx-printing-downlevelbrowse">ADMX_Printing/DownlevelBrowse</a>
  </dd>
  <dd>
    <a href="#admx-printing-emfdespooling">ADMX_Printing/EMFDespooling</a>
  </dd>
  <dd>
    <a href="#admx-printing-forcesoftwarerasterization">ADMX_Printing/ForceSoftwareRasterization</a>
  </dd>
  <dd>
    <a href="#admx-printing-intranetprintersurl">ADMX_Printing/IntranetPrintersUrl</a>
  </dd>
  <dd>
    <a href="#admx-printing-kmprintersareblocked">ADMX_Printing/KMPrintersAreBlocked</a>
  </dd>
  <dd>
    <a href="#admx-printing-legacydefaultprintermode">ADMX_Printing/LegacyDefaultPrinterMode</a>
  </dd>
  <dd>
    <a href="#admx-printing-mxdwuselegacyoutputformatmsxps">ADMX_Printing/MXDWUseLegacyOutputFormatMSXPS</a>
  </dd>
  <dd>
    <a href="#admx-printing-nodeleteprinter">ADMX_Printing/NoDeletePrinter</a>
  </dd>
  <dd>
    <a href="#admx-printing-nondomainprinters">ADMX_Printing/NonDomainPrinters</a>
  </dd>
  <dd>
    <a href="#admx-printing-packagepointandprintonly">ADMX_Printing/PackagePointAndPrintOnly</a>
  </dd>
  <dd>
    <a href="#admx-printing-packagepointandprintonly-win7">ADMX_Printing/PackagePointAndPrintOnly_Win7</a>
  </dd>
  <dd>
    <a href="#admx-printing-packagepointandprintserverlist">ADMX_Printing/PackagePointAndPrintServerList</a>
  </dd>
  <dd>
    <a href="#admx-printing-packagepointandprintserverlist-win7">ADMX_Printing/PackagePointAndPrintServerList_Win7</a>
  </dd>
  <dd>
    <a href="#admx-printing-physicallocation">ADMX_Printing/PhysicalLocation</a>
  </dd>
  <dd>
    <a href="#admx-printing-physicallocationsupport">ADMX_Printing/PhysicalLocationSupport</a>
  </dd>
  <dd>
    <a href="#admx-printing-printdriverisolationexecutionpolicy
">ADMX_Printing/PrintDriverIsolationExecutionPolicy</a>
  </dd>
  <dd>
    <a href="#admx-printing-printdriverisolationoverridecompat">ADMX_Printing/PrintDriverIsolationOverrideCompat</a>
  </dd>
  <dd>
    <a href="#admx-printing-printerdirectorysearchscope">ADMX_Printing/PrinterDirectorySearchScope</a>
  </dd>
  <dd>
    <a href="#admx-printing-printerserverthread">ADMX_Printing/PrinterServerThread</a>
  </dd>
  <dd>
    <a href="#admx-printing-showjobtitleineventlogs">ADMX_Printing/ShowJobTitleInEventLogs</a>
  </dd>
  <dd>
    <a href="#admx-printing-v4driverdisallowprinterextension">ADMX_Printing/V4DriverDisallowPrinterExtension</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-printing-allowwebprinting"></a>**ADMX_Printing/AllowWebPrinting**

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
Internet printing lets you display printers on Web pages so that printers can be viewed, managed, and used across the Internet or an intranet.

If you enable this policy setting, Internet printing is activated on this server.

If you disable this policy setting or don't configure it, Internet printing isn't activated.

Internet printing is an extension of Internet Information Services (IIS). To use Internet printing, IIS must be installed, and printing support and this setting must be enabled.

> [!NOTE]
> This setting affects the server side of Internet printing only. It doesn't prevent the print client on the computer from printing across the Internet.

Also, see the "Custom support URL in the Printers folder's left pane" setting in this folder and the "Browse a common Web site to find printers" setting in User Configuration\Administrative Templates\Control Panel\Printers.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Activate Internet printing*
-   GP name: *AllowWebPrinting*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-applicationdriverisolation"></a>**ADMX_Printing/ApplicationDriverIsolation**

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
Determines if print driver components are isolated from applications instead of normally loading them into applications. Isolating print drivers greatly reduces the risk of a print driver failure causing an application crash.

Not all applications support driver isolation. By default, Microsoft Excel 2007, Excel 2010, Word 2007, Word 2010 and certain other applications are configured to support it. Other applications may also be capable of isolating print drivers, depending on whether they're configured for it.

If you enable or don't configure this policy setting, then applications that are configured to support driver isolation will be isolated.

If you disable this policy setting, then print drivers will be loaded within all associated application processes.

> [!NOTE]
> - This policy setting applies only to applications opted into isolation.
> - This policy setting applies only to print drivers loaded by applications. Print drivers loaded by the print spooler aren't affected.
> - This policy setting is only checked once during the lifetime of a process. After changing the policy, a running application must be relaunched before settings take effect.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Isolate print drivers from applications*
-   GP name: *ApplicationDriverIsolation*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-customizedsupporturl"></a>**ADMX_Printing/CustomizedSupportUrl**

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
By default, the Printers folder includes a link to the Microsoft Support Web page called "Get help with printing". It can also include a link to a Web page supplied by the vendor of the currently selected printer.

If you enable this policy setting, you replace the "Get help with printing" default link with a link to a Web page customized for your enterprise.

If you disable this setting or don't configure it, or if you don't enter an alternate Internet address, the default link will appear in the Printers folder.

> [!NOTE]
> Web pages links only appear in the Printers folder when Web view is enabled. If Web view is disabled, the setting has no effect.
> To enable Web view, open the Printers folder, and, on the Tools menu, click Folder Options, click the General tab, and then click "Enable Web content in folders."

Also, see the "Activate Internet printing" setting in this setting folder and the "Browse a common web site to find printers" setting in User Configuration\Administrative Templates\Control Panel\Printers.

Web view is affected by the "Turn on Classic Shell" and "Do not allow Folder Options to be opened from the Options button on the View tab of the ribbon" settings in User Configuration\Administrative Templates\Windows Components\Windows Explorer, and by the "Enable Active Desktop" setting in User Configuration\Administrative Templates\Desktop\Active Desktop.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Custom support URL in the Printers folder's left pane*
-   GP name: *CustomizedSupportUrl*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-donotinstallcompatibledriverfromwindowsupdate"></a>**ADMX_Printing/DoNotInstallCompatibleDriverFromWindowsUpdate**

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
This policy setting allows you to manage where client computers search for Point and Printer drivers.

If you enable this policy setting, the client computer will continue to search for compatible Point and Print drivers from Windows Update after it fails to find the compatible driver from the local driver store and the server driver cache.

If you disable this policy setting, the client computer will only search the local driver store and server driver cache for compatible Point and Print drivers. If it's unable to find a compatible driver, then the Point and Print connection will fail.

This policy setting isn't configured by default, and the behavior depends on the version of Windows that you're using.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Extend Point and Print connection to search Windows Update*
-   GP name: *DoNotInstallCompatibleDriverFromWindowsUpdate*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-domainprinters"></a>**ADMX_Printing/DomainPrinters**

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
If you enable this policy setting, it sets the maximum number of printers (of each type) that the Add Printer wizard will display on a computer on a managed network (when the computer is able to reach a domain controller, for example, a domain-joined laptop on a corporate network.)

If this policy setting is disabled, the network scan page won't be displayed.

If this policy setting isn't configured, the Add Printer wizard will display the default number of printers of each type:

- Directory printers: 20
- TCP/IP printers: 0
- Web Services printers: 0
- Bluetooth printers: 10
- Shared printers: 0

In order to view available Web Services printers on your network, ensure that network discovery is turned on. To turn on network discovery, click "Start", click "Control Panel", and then click "Network and Internet". On the "Network and Internet" page, click "Network and Sharing Center". On the Network and Sharing Center page, click "Change advanced sharing settings". On the Advanced sharing settings page, click the arrow next to "Domain" arrow, click "turn on network discovery", and then click "Save changes".

If you would like to not display printers of a certain type, enable this policy and set the number of printers to display to 0.

In Windows 10 and later, only TCP/IP printers can be shown in the wizard. If you enable this policy setting, only TCP/IP printer limits are applicable. On Windows 10 only, if you disable or don't configure this policy setting, the default limit is applied.

In Windows 8 and later, Bluetooth printers aren't shown so its limit doesn't apply to those versions of Windows.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Add Printer wizard - Network scan page (Managed network)*
-   GP name: *DomainPrinters*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-downlevelbrowse"></a>**ADMX_Printing/DownlevelBrowse**

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
Allows users to use the Add Printer Wizard to search the network for shared printers.

If you enable this setting or don't configure it, when users choose to add a network printer by selecting the "A network printer, or a printer attached to another computer" radio button on Add Printer Wizard's page 2, and also check the "Connect to this printer (or to browse for a printer, select this option and click Next)" radio button on Add Printer Wizard's page 3, and don't specify a printer name in the adjacent "Name" edit box, then Add Printer Wizard displays the list of shared printers on the network and invites to choose a printer from the shown list.

If you disable this setting, the network printer browse page is removed from within the Add Printer Wizard, and users can't search the network but must type a printer name.

> [!NOTE]
> This setting affects the Add Printer Wizard only. It doesn't prevent users from using other programs to search for shared printers or to connect to network printers.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Browse the network to find printers*
-   GP name: *DownlevelBrowse*
-   GP path: *Control Panel\Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-emfdespooling"></a>**ADMX_Printing/EMFDespooling**

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
When printing is being done through a print server, determines whether the print spooler on the client will process print jobs itself, or pass them on to the server to do the work.

This policy setting only affects printing to a Windows print server.

If you enable this policy setting on a client machine, the client spooler won't process print jobs before sending them to the print server, thereby decreasing the workload on the client at the expense of increasing the load on the server.

If you disable this policy setting on a client machine, the client itself will process print jobs into printer device commands. These commands will then be sent to the print server, and the server will pass the commands to the printer. This process increases the workload of the client while decreasing the load on the server.

If you don't enable this policy setting, the behavior is the same as disabling it.

> [!NOTE]
> This policy doesn't determine whether offline printing will be available to the client. The client print spooler can always queue print jobs when not connected to the print server. Upon reconnecting to the server, the client will submit any pending print jobs.
>
> Some printer drivers require a custom print processor. In some cases the custom print processor may not be installed on the client machine, such as when the print server doesn't support transferring print processors during point-and-print. In the case of a print processor mismatch, the client spooler will always send jobs to the print server for rendering. Disabling the above policy setting doesn't override this behavior.
>
> In cases where the client print driver doesn't match the server print driver (mismatched connection), the client will always process the print job, regardless of the setting of this policy.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Always render print jobs on the server*
-   GP name: *EMFDespooling*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-forcesoftwarerasterization"></a>**ADMX_Printing/ForceSoftwareRasterization**

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
Determines whether the XPS Rasterization Service or the XPS-to-GDI conversion (XGC) is forced to use a software rasterizer instead of a Graphics Processing Unit (GPU) to rasterize pages.

This setting may improve the performance of the XPS Rasterization Service or the XPS-to-GDI conversion (XGC) on machines that have a relatively powerful CPU as compared to the machine’s GPU.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Always rasterize content to be printed using a software rasterizer*
-   GP name: *ForceSoftwareRasterization*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-intranetprintersurl"></a>**ADMX_Printing/IntranetPrintersUrl**

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
Adds a link to an Internet or intranet Web page to the Add Printer Wizard.

You can use this setting to direct users to a Web page from which they can install printers.

If you enable this setting and type an Internet or intranet address in the text box, the system adds a Browse button to the "Specify a Printer" page in the Add Printer Wizard. The Browse button appears beside the "Connect to a printer on the Internet or on a home or office network" option. When users click Browse, the system opens an Internet browser and navigates to the specified URL address to display the available printers.

This setting makes it easy for users to find the printers you want them to add.

Also, see the "Custom support URL in the Printers folder's left pane" and "Activate Internet printing" settings in "Computer Configuration\Administrative Templates\Printers."

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Browse a common web site to find printers*
-   GP name: *IntranetPrintersUrl*
-   GP path: *Control Panel\Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-kmprintersareblocked"></a>**ADMX_Printing/KMPrintersAreBlocked**

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
Determines whether printers using kernel-mode drivers may be installed on the local computer.  Kernel-mode drivers have access to system-wide memory, and therefore poorly written kernel-mode drivers can cause stop errors.


If you don't configure this setting on Windows Server 2003 family products, the installation of kernel-mode printer drivers will be blocked.

If you enable this setting, installation of a printer using a kernel-mode driver won't be allowed.

> [!NOTE]
> This policy doesn't apply to 64-bit kernel-mode printer drivers as they can't be installed and associated with a print queue.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disallow installation of printers using kernel-mode drivers*
-   GP name: *KMPrintersAreBlocked*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-legacydefaultprintermode"></a>**ADMX_Printing/LegacyDefaultPrinterMode**

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
This preference allows you to change default printer management.

If you enable this setting, Windows won't manage the default printer.

If you disable this setting, Windows will manage the default printer.

If you don't configure this setting, default printer management won't change.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Windows default printer management*
-   GP name: *LegacyDefaultPrinterMode*
-   GP path: *Control Panel\Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-mxdwuselegacyoutputformatmsxps"></a>**ADMX_Printing/MXDWUseLegacyOutputFormatMSXPS**

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
Microsoft XPS Document Writer (MXDW) generates OpenXPS (*.oxps) files by default in Windows 10, Windows 10 and Windows Server 2019.

If you enable this group policy setting, the default MXDW output format is the legacy Microsoft XPS (*.xps).

If you disable or don't configure this policy setting, the default MXDW output format is OpenXPS (*.oxps).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Change Microsoft XPS Document Writer (MXDW) default output format to the legacy Microsoft XPS format (*.xps)*
-   GP name: *MXDWUseLegacyOutputFormatMSXPS*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-nodeleteprinter"></a>**ADMX_Printing/NoDeletePrinter**

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
If this policy setting is enabled, it prevents users from deleting local and network printers.

If a user tries to delete a printer, such as by using the Delete option in Printers in Control Panel, a message appears explaining that a setting prevents the action.

This setting doesn't prevent users from running other programs to delete a printer.

If this policy is disabled, or not configured, users can delete printers using the methods described above.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent deletion of printers*
-   GP name: *NoDeletePrinter*
-   GP path: *Control Panel\Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-nondomainprinters"></a>**ADMX_Printing/NonDomainPrinters**

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
This policy sets the maximum number of printers (of each type) that the Add Printer wizard will display on a computer on an unmanaged network (when the computer isn't able to reach a domain controller, for example, a domain-joined laptop on a home network.)

If this setting is disabled, the network scan page won't be displayed.

If this setting isn't configured, the Add Printer wizard will display the default number of printers of each type:

- TCP/IP printers: 50
- Web Services printers: 50
- Bluetooth printers: 10
- Shared printers: 50

If you would like to not display printers of a certain type, enable this policy and set the number of printers to display to 0.

In Windows 10 and later, only TCP/IP printers can be shown in the wizard. If you enable this policy setting, only TCP/IP printer limits are applicable. On Windows 10 only, if you disable or don't configure this policy setting, the default limit is applied.

In Windows 8 and later, Bluetooth printers aren't shown so its limit doesn't apply to those versions of Windows.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Add Printer wizard - Network scan page (Unmanaged network)*
-   GP name: *NonDomainPrinters*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-packagepointandprintonly"></a>**ADMX_Printing/PackagePointAndPrintOnly**

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
This policy restricts clients computers to use package point and print only.

If this setting is enabled, users will only be able to point and print to printers that use package-aware drivers. When package point and print are being used, client computers will check the driver signature of all drivers that are downloaded from print servers.

If this setting is disabled, or not configured, users won't be restricted to package-aware point and print only.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Only use Package Point and print*
-   GP name: *PackagePointAndPrintOnly*
-   GP path: *Control Panel\Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-packagepointandprintonly-win7"></a>**ADMX_Printing/PackagePointAndPrintOnly_Win7**

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
This policy restricts clients computers to use package point and print only.

If this setting is enabled, users will only be able to point and print to printers that use package-aware drivers. When package point and print are being used, client computers will check the driver signature of all drivers that are downloaded from print servers.

If this setting is disabled, or not configured, users won't be restricted to package-aware point and print only.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Only use Package Point and print*
-   GP name: *PackagePointAndPrintOnly_Win7*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-packagepointandprintserverlist"></a>**ADMX_Printing/PackagePointAndPrintServerList**

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
Restricts package point and print to approved servers.

This policy setting restricts package point and print connections to approved servers. This setting only applies to Package Point and Print connections, and is independent from the "Point and Print Restrictions" policy that governs the behavior of non-package point and print connections.

Windows Vista and later clients will attempt to make a non-package point and print connection anytime a package point and print connection fails, including attempts that are blocked by this policy. Administrators may need to set both policies to block all print connections to a specific print server.

If this setting is enabled, users will only be able to package point and print to print servers approved by the network administrator. When package point and print are being used, client computers will check the driver signature of all drivers that are downloaded from print servers.

If this setting is disabled, or not configured, package point and print won't be restricted to specific print servers.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Package Point and print - Approved servers*
-   GP name: *PackagePointAndPrintServerList*
-   GP path: *Control Panel\Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-packagepointandprintserverlist-win7"></a>**ADMX_Printing/PackagePointAndPrintServerList_Win7**

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
Restricts package point and print to approved servers.

This policy setting restricts package point and print connections to approved servers. This setting only applies to Package Point and Print connections, and is independent from the "Point and Print Restrictions" policy that governs the behavior of non-package point and print connections.

Windows Vista and later clients will attempt to make a non-package point and print connection anytime a package point and print connection fails, including attempts that are blocked by this policy. Administrators may need to set both policies to block all print connections to a specific print server.

If this setting is enabled, users will only be able to package point and print to print servers approved by the network administrator. When package point and print are being used, client computers will check the driver signature of all drivers that are downloaded from print servers.

If this setting is disabled, or not configured, package point and print won't be restricted to specific print servers.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Package Point and print - Approved servers*
-   GP name: *PackagePointAndPrintServerList_Win7*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-physicallocation"></a>**ADMX_Printing/PhysicalLocation**

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
If this policy setting is enabled, it specifies the default location criteria used when searching for printers.

This setting is a component of the Location Tracking feature of Windows printers. To use this setting, enable Location Tracking by enabling the "Pre-populate printer search location text" setting.

When Location Tracking is enabled, the system uses the specified location as a criterion when users search for printers. The value you type here overrides the actual location of the computer conducting the search.

Type the location of the user's computer. When users search for printers, the system uses the specified location (and other search criteria) to find a printer nearby. You can also use this setting to direct users to a particular printer or group of printers that you want them to use.

If you disable this setting or don't configure it, and the user doesn't type a location as a search criterion, the system searches for a nearby printer based on the IP address and subnet mask of the user's computer.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Computer location*
-   GP name: *PhysicalLocation*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-physicallocationsupport"></a>**ADMX_Printing/PhysicalLocationSupport**

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
Enables the physical Location Tracking setting for Windows printers.

Use Location Tracking to design a location scheme for your enterprise and assign computers and printers to locations in the scheme. Location Tracking overrides the standard method used to locate and associate computers and printers. The standard method uses a printer's IP address and subnet mask to estimate its physical location and proximity to computers.

If you enable this setting, users can browse for printers by location without knowing the printer's location or location naming scheme. Enabling Location Tracking adds a Browse button in the Add Printer wizard's Printer Name and Sharing Location screen and to the General tab in the Printer Properties dialog box. If you enable the Group Policy Computer location setting, the default location you entered appears in the Location field by default.

If you disable this setting or don't configure it, Location Tracking is disabled. Printer proximity is estimated using the standard method (that is, based on IP address and subnet mask).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Pre-populate printer search location text*
-   GP name: *PhysicalLocationSupport*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-printdriverisolationexecutionpolicy"></a>**ADMX_Printing/PrintDriverIsolationExecutionPolicy**

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
This policy setting determines whether the print spooler will execute print drivers in an isolated or separate process. When print drivers are loaded in an isolated process (or isolated processes), a print driver failure won't cause the print spooler service to fail.

If you enable or don't configure this policy setting, the print spooler will execute print drivers in an isolated process by default.

If you disable this policy setting, the print spooler will execute print drivers in the print spooler process.

> [!NOTE]
> - Other system or driver policy settings may alter the process in which a print driver is executed.
> - This policy setting applies only to print drivers loaded by the print spooler. Print drivers loaded by applications aren't affected.
> - This policy setting takes effect without restarting the print spooler service.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Execute print drivers in isolated processes*
-   GP name: *PrintDriverIsolationExecutionPolicy*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-printdriverisolationoverridecompat"></a>**ADMX_Printing/PrintDriverIsolationOverrideCompat**

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
This policy setting determines whether the print spooler will override the Driver Isolation compatibility reported by the print driver. This policy setting enables executing print drivers in an isolated process, even if the driver doesn't report compatibility.

If you enable this policy setting, the print spooler isolates all print drivers that don't explicitly opt out of Driver Isolation.

If you disable or don't configure this policy setting, the print spooler uses the Driver Isolation compatibility flag value reported by the print driver.

> [!NOTE]
> - Other system or driver policy settings may alter the process in which a print driver is executed.
> - This policy setting applies only to print drivers loaded by the print spooler. Print drivers loaded by applications aren't affected.
> - This policy setting takes effect without restarting the print spooler service.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Override print driver execution compatibility setting reported by print driver*
-   GP name: *PrintDriverIsolationOverrideCompat*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-printerdirectorysearchscope"></a>**ADMX_Printing/PrinterDirectorySearchScope**

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
Specifies the Active Directory location where searches for printers begin.

The Add Printer Wizard gives users the option of searching Active Directory for a shared printer.

If you enable this policy setting, these searches begin at the location you specify in the "Default Active Directory path" box. Otherwise, searches begin at the root of Active Directory.

This setting only provides a starting point for Active Directory searches for printers. It doesn't restrict user searches through Active Directory.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Default Active Directory path when searching for printers*
-   GP name: *PrinterDirectorySearchScope*
-   GP path: *Control Panel\Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-printerserverthread"></a>**ADMX_Printing/PrinterServerThread**

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
Announces the presence of shared printers to print browse main servers for the domain.

On domains with Active Directory, shared printer resources are available in Active Directory and aren't announced.

If you enable this setting, the print spooler announces shared printers to the print browse main servers.

If you disable this setting, shared printers aren't announced to print browse main servers, even if Active Directory isn't available.

If you don't configure this setting, shared printers are announced to browse main servers only when Active Directory isn't available.

> [!NOTE]
> A client license is used each time a client computer announces a printer to a print browse master on the domain.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Printer browsing*
-   GP name: *PrinterServerThread*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-showjobtitleineventlogs"></a>**ADMX_Printing/ShowJobTitleInEventLogs**

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
This policy controls whether the print job name will be included in print event logs.

If you disable or don't configure this policy setting, the print job name won't be included.

If you enable this policy setting, the print job name will be included in new log entries.

> [!NOTE]
> This setting doesn't apply to Branch Office Direct Printing jobs.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow job name in event logs*
-   GP name: *ShowJobTitleInEventLogs*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing-v4driverdisallowprinterextension"></a>**ADMX_Printing/V4DriverDisallowPrinterExtension**

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
This policy determines if v4 printer drivers are allowed to run printer extensions.

V4 printer drivers may include an optional, customized user interface known as a printer extension. These extensions may provide access to more device features, but these extensions may not be appropriate for all enterprises.

If you enable this policy setting, then all printer extensions won't be allowed to run.

If you disable this policy setting or don't configure it, then all printer extensions that have been installed will be allowed to run.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow v4 printer drivers to show printer extensions*
-   GP name: *V4DriverDisallowPrinterExtension*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)