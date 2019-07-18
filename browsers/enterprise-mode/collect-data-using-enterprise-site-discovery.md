---
ms.localizationpriority: low
ms.mktglfcycl: deploy
description: Use Internet Explorer to collect data on computers running Windows Internet Explorer 8 through Internet Explorer 11 on Windows 10, Windows 8.1, or Windows 7.
author: eavena
ms.prod: ie11
ms.assetid: a145e80f-eb62-4116-82c4-3cc35fd064b6
ms.reviewer: 
manager: dansimp
ms.author: eravena
title: Collect data using Enterprise Site Discovery
ms.sitesec: library
ms.date: 07/27/2017
---

# Collect data using Enterprise Site Discovery

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7 with Service Pack 1 (SP1)

Use Internet Explorer to collect data on computers running Windows Internet Explorer 8 through Internet Explorer 11 on Windows 10, Windows 8.1, or Windows 7. This inventory information helps you build a list of websites used by your company so you can make more informed decisions about your IE deployments, including figuring out which sites might be at risk or require overhauls during future upgrades.

>**Upgrade Analytics and Windows upgrades**<br>
>You can use Upgrade Analytics to help manage your Windows 10 upgrades on devices running Windows 8.1 and Windows 7 (SP1). You can also use Upgrade Analytics to review several site discovery reports. Check out Upgrade Analytics from [here](https://technet.microsoft.com/itpro/windows/deploy/upgrade-analytics-get-started).


## Before you begin
Before you start, you need to make sure you have the following:

-   Latest cumulative security update (for all supported versions of Internet Explorer):

    1.  Go to the [Microsoft Security Bulletin](https://go.microsoft.com/fwlink/p/?LinkID=718223) page, and change the filter to **Windows Internet Explorer 11**.

        ![microsoft security bulletin techcenter](images/securitybulletin-filter.png)

    2.  Click the title of the latest cumulative security update, and then scroll down to the **Affected software** table.

        ![affected software section](images/affectedsoftware.png)

    3.  Click the link that represents both your operating system version and Internet Explorer 11, and then follow the instructions in the **How to get this update** section.

-   [Setup and configuration package](https://go.microsoft.com/fwlink/p/?LinkId=517719), including:

    -   Configuration-related PowerShell scripts

    -   IETelemetry.mof file

    -   Sample System Center 2012 report templates

        You must use System Center 2012 R2 Configuration Manager or later for these samples to work.

Both the PowerShell script and the Managed Object Format (.MOF) file need to be copied to the same location on the client device, before you run the scripts.

## What data is collected?
Data is collected on the configuration characteristics of IE and the sites it browses, as shown here.

|Data point              |IE11 |IE10 |IE9  |IE8  |Description                                                             |
|------------------------|-----|-----|-----|-----|------------------------------------------------------------------------|
|URL                     |  X  |  X  |  X  |  X  |URL of the browsed site, including any parameters included in the URL.  |
|Domain                  |  X  |  X  |  X  |  X  |Top-level domain of the browsed site.                                   |
|ActiveX GUID            |  X  |  X  |  X  |  X  |GUID of the ActiveX controls loaded by the site.                        |
|Document mode           |  X  |  X  |  X  |  X  |Document mode used by IE for a site, based on page characteristics.     |
|Document mode reason    |  X  |  X  |     |     |The reason why a document mode was set by IE.                           |
|Browser state reason    |  X  |  X  |     |     |Additional information about why the browser is in its current state. Also called, browser mode.           |
|Hang count              |  X  |  X  |  X  |  X  |Number of visits to the URL when the browser hung.                      |
|Crash count             |  X  |  X  |  X  |  X  |Number of visits to the URL when the browser crashed.                   |
|Most recent navigation failure (and count) |  X  |  X  |  X  |  X  |Description of the most recent navigation failure (like, a 404 bad request or 500 internal server error) and the number of times it happened.  |
|Number of visits        |  X  |  X  |  X  |  X  |Number of times a site has been visited.                                |
|Zone                    |  X  |  X  |  X  |  X  |Zone used by IE to browse sites, based on browser settings.             |


>**Important**<br>By default, IE doesn’t collect this data; you have to turn this feature on if you want to use it. After you turn on this feature, data is collected on all sites visited by IE, except during InPrivate sessions. Additionally, the data collection process is silent, so there’s no notification to the employee. Therefore, you must get consent from the employee before you start collecting info. You must also make sure that using this feature complies with all applicable local laws and regulatory requirements.

### Understanding the returned reason codes
The following tables provide more info about the Document mode reason, Browser state reason, and the Zone codes that are returned as part of your data collection.

#### DocMode reason
The codes in this table can tell you what document mode was set by IE for a webpage.<br>These codes only apply to Internet Explorer 10 and Internet Explorer 11.

|Code |Description |
|-----|------------|
|3 |Page state is set by the `FEATURE_DOCUMENT_COMPATIBLE_MODE` feature control key.|
|4 |Page is using an X-UA-compatible meta tag. |
|5 |Page is using an X-UA-compatible HTTP header. |
|6 |Page appears on an active **Compatibility View** list. |
|7 |Page is using native XML parsing. |
|8 |Page is using a special Quirks Mode Emulation (QME) mode that uses the modern layout engine, but the quirks behavior of Internet Explorer 5. |
|9 |Page state is set by the browser mode and the page's DOCTYPE.|

#### Browser state reason
The codes in this table can tell you why the browser is in its current state. Also called “browser mode”.<br>These codes only apply to Internet Explorer 10 and Internet Explorer 11.

|Code |Description |
|-----|------------|
|1 |Site is on the intranet, with the **Display intranet sites in Compatibility View** box checked. |
|2 |Site appears on an active **Compatibility View** list, created in Group Policy. |
|3 |Site appears on an active **Compatibility View** list, created by the user. |
|4 |Page is using an X-UA-compatible tag. |
|5 |Page state is set by the **Developer** toolbar. |
|6 |Page state is set by the `FEATURE_BROWSER_EMULATION` feature control key. |
|7 |Site appears on the Microsoft **Compatibility View (CV)** list. |
|8 |Site appears on the **Quirks** list, created in Group Policy. |
|11 |Site is using the default browser. |

#### Zone
The codes in this table can tell you what zone is being used by IE to browse sites, based on browser settings.<br>These codes apply to Internet Explorer 8, Internet Explorer 9, Internet Explorer 10, and Internet Explorer 11.

|Code |Description |
|-----|------------|
|-1 |Internet Explorer is using an invalid zone. |
|0 |Internet Explorer is using the Local machine zone. |
|1 |Internet Explorer is using the Local intranet zone. |
|2 |Internet Explorer is using the Trusted sites zone. |
|3 |Internet Explorer is using the Internet zone. |
|4 |Internet Explorer is using the Restricted sites zone. |

## Where is the data stored and how do I collect it?
The data is stored locally, in an industry-standard WMI class, .MOF file or in an XML file, depending on your configuration. This file remains on the client computer until it’s collected. To collect the files, we recommend:

-   **WMI file**. Use Microsoft Configuration Manager or any agent that can read the contents of a WMI class on your computer.

-   **XML file**. Any agent that works with XML can be used.

## WMI Site Discovery suggestions
We recommend that you collect your data for at most a month at a time, to capture a user’s typical workflow. We don’t recommend collecting data longer than that because the data is stored in a WMI provider and can fill up your computer’s hard drive. You may also want to collect data only for pilot users or a representative sample of people, instead of turning this feature on for everyone in your company.

On average, a website generates about 250bytes of data for each visit, causing only a minor impact to Internet Explorer’s performance. Over the course of a month, collecting data from 20 sites per day from 1,000 users, you’ll get about 150MB of data:<p>250 bytes (per site visit) X 20 sites/day X 30 days = (approximately) 150KB X 1000 users = (approximately) 150MB 

>**Important**<br>The data collection process is silent, so there’s no notification to the employee. Therefore, you must get consent from the employee before you start collecting info. You must also make sure that using this feature complies with all applicable local laws and regulatory requirements.

## Getting ready to use Enterprise Site Discovery
Before you can start to collect your data, you must run the provided PowerShell script (IETelemetrySetUp.ps1) on your client devices to start generating the site discovery data and to set up a place to store this data locally. Then, you must start collecting the site discovery data from the client devices, using one of these three options:

- Collect your hardware inventory using the MOF Editor, while connecting to a client device.<p>
-OR-
- Collect your hardware inventory using the MOF Editor with a .MOF import file.<p>
-OR-
- Collect your hardware inventory using the SMS\DEF.MOF file (System Center Configuration Manager 2007 only)

### WMI only: Running the PowerShell script to compile the .MOF file and to update security privileges
You need to set up your computers for data collection by running the provided PowerShell script (IETelemetrySetUp.ps1) to compile the .mof file and to update security privileges for the new WMI classes.

>**Important**<br>You must run this script if you’re using WMI as your data output. It's not necessary if you're using XML as your data output.

**To set up Enterprise Site Discovery**

- Start PowerShell in elevated mode (using admin privileges) and run IETelemetrySetUp.ps1 by by-passing the PowerShell execution policy, using this command: `powershell -ExecutionPolicy Bypass .\IETelemetrySetUp.ps1`. For more info, see [about Execution Policies](https://go.microsoft.com/fwlink/p/?linkid=517460).

### WMI only: Set up your firewall for WMI data
If you choose to use WMI as your data output, you need to make sure that your WMI data can travel through your firewall for the domain. If you’re sure, you can skip this section; otherwise, follow these steps:

**To set up your firewall**

1. In **Control Panel**, click **System and Security**, and then click **Windows Firewall**.

2. In the left pane, click **Allow an app or feature through Windows Firewall** and scroll down to check the box for **Windows Management Instrumentation (WMI)**.

3. Restart your computer to start collecting your WMI data.

## Use PowerShell to finish setting up Enterprise Site Discovery
You can determine which zones or domains are used for data collection, using PowerShell. If you don’t want to use PowerShell, you can do this using Group Policy. For more info, see [Use Group Policy to finish setting up Enterprise Site Discovery](#use-group-policy-to-finish-setting-up-enterprise-site-discovery).

>**Important**<br>The .ps1 file updates turn on Enterprise Site Discovery and WMI collection for all users on a device.

- **Domain allow list.** If you have a domain allow list, a comma-separated list of domains that should have this feature turned on, you should use this process.

- **Zone allow list.** If you have a zone allow list, a comma-separated list of zones that should have this feature turned on, you should use this process.

**To set up data collection using a domain allow list**
 
 - Start PowerShell in elevated mode (using admin privileges) and run IETelemetrySetUp.ps1, using this command: `.\IETelemetrySetUp.ps1 [other args] -SiteAllowList sharepoint.com,outlook.com,onedrive.com`.
 
    >**Important**<br>Wildcards, like \*.microsoft.com, aren’t supported.

**To set up data collection using a zone allow list**
 
 - Start PowerShell in elevated mode (using admin privileges) and run IETelemetrySetUp.ps1, using this command: `.\IETelemetrySetUp.ps1 [other args] -ZoneAllowList Computer,Intranet,TrustedSites,Internet,RestrictedSites`.
 
    >**Important**<br>Only Computer, Intranet, TrustedSites, Internet, and RestrictedSites are supported.

## Use Group Policy to finish setting up Enterprise Site Discovery
You can use Group Policy to finish setting up Enterprise Site Discovery. If you don’t want to use Group Policy, you can do this using PowerShell. For more info, see [Use Powershell to finish setting up Enterprise Site Discovery](#use-powershell-to-finish-setting-up-enterprise-site-discovery).

>**Note**<br> All of the Group Policy settings can be used individually or as a group.

 **To set up Enterprise Site Discovery using Group Policy**

-   Open your Group Policy editor, and go to these new settings:

    |Setting name and location  |Description  |Options  |
    |---------------------------|-------------|---------|
    |Administrative Templates\Windows Components\Internet Explorer\Turn on Site Discovery WMI output |Writes collected data to a WMI class, which can be aggregated using a client-management solution like Configuration Manager. |<ul><li>**On.** Turns on WMI recording.</li><li>**Off.** Turns off WMI recording.</li></ul> |
    |Administrative Templates\Windows Components\Internet Explorer\Turn on Site Discovery XML output |Writes collected data to an XML file, which is stored in your specified location. |<ul><li>**XML file path.** Including this turns on XML recording.</li><li>**Blank.** Turns off XML recording.</li></ul> |
    |Administrative Templates\Windows Components\Internet Explorer\Limit Site Discovery output by Zone |Manages which zone can collect data. |To specify which zones can collect data, you must include a binary number that represents your selected zones, based on this order:<p>0 – Restricted Sites zone<br>0 – Internet zone<br>0 – Trusted Sites zone<br>0 – Local Intranet zone<br>0 – Local Machine zone<p>**Example 1:** Include only the Local Intranet zone<p>Binary representation: *00010*, based on:<p>0 – Restricted Sites zone<br>0 – Internet zone<br>0 – Trusted Sites zone<br>1 – Local Intranet zone<br>0 – Local Machine zone<p>**Example 2:** Include only the Restricted Sites, Trusted Sites, and Local Intranet zones<p>Binary representation: *10110*, based on:<p>1 – Restricted Sites zone<br>0 – Internet zone<br>1 – Trusted Sites zone<br>1 – Local Intranet zone<br>1 – Local Machine zone |
    |Administrative Templates\Windows Components\Internet Explorer\Limit Site Discovery output by domain |Manages which domains can collect data |To specify which domains can collect data, you must include your selected domains, one domain per line, in the provided box. It should look like:<p>microsoft.sharepoint.com<br>outlook.com<br>onedrive.com<br>timecard.contoso.com<br>LOBApp.contoso.com |

### Combining WMI and XML Group Policy settings
You can use both the WMI and XML settings individually or together:

**To turn off Enterprise Site Discovery**
<table>
    <tr>
        <th>Setting name</th>
        <th>Option</th>
    </tr>
    <tr>
        <td>Turn on Site Discovery WMI output</td>
        <td>Off</td>
    </tr>
        <tr>
        <td>Turn on Site Discovery XML output</td>
        <td>Blank</td>
    </tr>
</table>

**Turn on WMI recording only**
<table>
    <tr>
        <th>Setting name</th>
        <th>Option</th>
    </tr>
    <tr>
        <td>Turn on Site Discovery WMI output</td>
        <td>On</td>
    </tr>
        <tr>
        <td>Turn on Site Discovery XML output</td>
        <td>Blank</td>
    </tr>
</table>

**To turn on XML recording only**
<table>
    <tr>
        <th>Setting name</th>
        <th>Option</th>
    </tr>
    <tr>
        <td>Turn on Site Discovery WMI output</td>
        <td>Off</td>
    </tr>
        <tr>
        <td>Turn on Site Discovery XML output</td>
        <td>XML file path</td>
    </tr>
</table>
 
**To turn on both WMI and XML recording**
<table>
    <tr>
        <th>Setting name</th>
        <th>Option</th>
    </tr>
    <tr>
        <td>Turn on Site Discovery WMI output</td>
        <td>On</td>
    </tr>
        <tr>
        <td>Turn on Site Discovery XML output</td>
        <td>XML file path</td>
    </tr>
</table>

## Use Configuration Manager to collect your data
After you’ve collected your data, you’ll need to get the local files off of your employee’s computers. To do this, use the hardware inventory process in Configuration Manager, using one of these options:

- Collect your hardware inventory using the MOF Editor, while connecting to a client device.<p>
-OR-
- Collect your hardware inventory using the MOF Editor with a .MOF import file.<p>
-OR-
- Collect your hardware inventory using the SMS\DEF.MOF file (System Center Configuration Manager 2007 only)

### Collect your hardware inventory using the MOF Editor while connected to a client device
You can collect your hardware inventory using the MOF Editor, while you’re connected to your client devices.

 **To collect your inventory**

1.  From the Configuration Manager, click **Administration**, click **Client Settings**, double-click **Default Client Settings**, click **Hardware Inventory**, and then click **Set Classes**.

    ![Configuration Manager, showing the hardware inventory settings for client computers](images/configmgrhardwareinventory.png)

2.  Click **Add**, click **Connect**, and connect to a computer that has completed the setup process and has already existing classes.

3.  Change the **WMI Namespace** to `root\cimv2\IETelemetry`, and click **Connect**.

    ![Configuration Manager, with the Connect to Windows Management Instrumentation (WMI) box](images/ie11-inventory-addclassconnectscreen.png)

4.  Select the check boxes next to the following classes, and then click **OK**:

    -   IESystemInfo

    -   IEURLInfo

    -   IECountInfo

5.  Click **OK** to close the default windows.<br>
Your environment is now ready to collect your hardware inventory and review the sample reports.

### Collect your hardware inventory using the MOF Editor with a .MOF import file
You can collect your hardware inventory using the MOF Editor and a .MOF import file.

 **To collect your inventory**

1.  From the Configuration Manager, click **Administration**, click **Client Settings**, double-click **Default Client Settings**, click **Hardware Inventory**, and then click **Set Classes**.

2.  Click **Import**, choose the MOF file from the downloaded package we provided, and click **Open**.

3.  Pick the inventory items to install, and then click **Import**.

4.  Click **OK** to close the default windows.<br>
Your environment is now ready to collect your hardware inventory and review the sample reports.

### Collect your hardware inventory using the SMS\DEF.MOF file (System Center Configuration Manager 2007 only)
You can collect your hardware inventory using the using the Systems Management Server (SMS\DEF.MOF) file. Editing this file lets you collect your data for System Center Configuration Manager 2007. If you aren’t using this version of Configuration Manager, you won’t want to use this option.

**To collect your inventory**

1.  Using a text editor like Notepad, open the SMS\DEF.MOF file, located in your `<configmanager_install_location>\inboxes\clifiles.src\hinv` directory.

2.  Add this text to the end of the file:

    ``` 
    [SMS_Report     (TRUE),
     SMS_Group_Name ("IESystemInfo"),
     SMS_Class_ID   ("MICROSOFT|IESystemInfo|1.0"),
     Namespace      ("root\\\\cimv2\\\\IETelemetry")  ]
    Class IESystemInfo: SMS_Class_Template
    {
        [SMS_Report (TRUE), Key  ]
            String SystemKey;
        [SMS_Report (TRUE)       ]
            String IEVer;
    };

    [SMS_Report     (TRUE),
     SMS_Group_Name ("IEURLInfo"),
     SMS_Class_ID   ("MICROSOFT|IEURLInfo|1.0"),
     Namespace      ("root\\\\cimv2\\\\IETelemetry")  ]
    Class IEURLInfo: SMS_Class_Template
    {
        [SMS_Report (TRUE), Key  ]
            String URL;
        [SMS_Report (TRUE)       ]
            String Domain;
        [SMS_Report (TRUE)       ]
            UInt32 DocMode;
        [SMS_Report (TRUE)       ]
            UInt32 DocModeReason;
        [SMS_Report (TRUE)       ]
            UInt32 Zone;
        [SMS_Report (TRUE)       ]
            UInt32 BrowserStateReason;
        [SMS_Report (TRUE)       ]
            String ActiveXGUID[];
        [SMS_Report (TRUE)       ]
            UInt32 CrashCount;
        [SMS_Report (TRUE)       ]
            UInt32 HangCount;
        [SMS_Report (TRUE)       ]
            UInt32 NavigationFailureCount;
        [SMS_Report (TRUE)       ]
            UInt32 NumberOfVisits;
        [SMS_Report (TRUE)       ]
            UInt32 MostRecentNavigationFailure;
    };

    [SMS_Report     (TRUE),
     SMS_Group_Name ("IECountInfo"),
     SMS_Class_ID   ("MICROSOFT|IECountInfo|1.0"),
     Namespace      ("root\\\\cimv2\\\\IETelemetry")  ]
    Class IECountInfo: SMS_Class_Template
    {
        [SMS_Report (TRUE), Key  ]
            String CountKey;
        [SMS_Report (TRUE)       ]
            UInt32 CrashCount;
        [SMS_Report (TRUE)       ]
            UInt32 HangCount;
        [SMS_Report (TRUE)       ]
            UInt32 NavigationFailureCount;
    };
    ```

3.  Save the file and close it to the same location.
    Your environment is now ready to collect your hardware inventory and review the sample reports.

## View the sample reports with your collected data
The sample reports, **SCCM Report Sample – ActiveX.rdl** and **SCCM Report Sample – Site Discovery.rdl**, work with System Center 2012, so you can review your collected data.

### SCCM Report Sample – ActiveX.rdl
Gives you a list of all of the ActiveX-related sites visited by the client computer.

![ActiveX.rdl report, lists all ActiveX-related sites visited by the client computer](images/configmgractivexreport.png)

### SCCM Report Sample – Site Discovery.rdl
Gives you a list of all of the sites visited by the client computer.

![Site Discovery.rdl report, lists all websites visited by the client computer](images/ie-site-discovery-sample-report.png)

## View the collected XML data
After the XML files are created, you can use your own solutions to extract and parse the data. The data will look like:

``` xml
<IETelemetry>
     <IECountInfo>
          <CrashCount>[dword]</CrashCount>
          <HangCount>[dword]</HangCount>
          <NavigationFailureCount>[dword]</NavigationFailureCount>
     </IECountInfo>
     <IEURLInfo>
          <URL>[string]</URL>
          <ActiveXGUID>
               <GUID>[guid]</GUID>
          </ActiveXGUID>
          <DocModeReason>[dword]</DocModeReason>
          <DocMode>[dword]</DocMode>
          <NumberOfVisits>[dword]</NumberOfVisits>
          <BrowserStateReason>[dword]</BrowserStateReason>
          <Zone>[dword]</Zone>
          <CrashCount>[dword]</CrashCount>
          <HangCount>[dword]</HangCount>
          <NavigationFailureCount>[dword]</NavigationFailureCount>
          <Domain>[string]</Domain>
          <MostRecentNavigationFailure>[dword]</MostRecentNavigationFailure>
     </IEURLInfo>
     <IEURLInfo>…</IEURLInfo>
     <IEURLInfo>…</IEURLInfo>
</IETelemetry>
```
You can import this XML data into the correct version of the Enterprise Mode Site List Manager, automatically adding the included sites to your Enterprise Mode site list.

**To add your XML data to your Enterprise Mode site list**

1.  Open the Enterprise Mode Site List Manager, click **File**, and then click **Bulk add from file**.

    ![Enterprise Mode Site List Manager with Bulk add from file option](images/bulkadd-emiesitelistmgr.png)

2.  Go to your XML file to add the included sites to the tool, and then click **Open**.<br>Each site is validated and if successful, added to the global site list when you click **OK** to close the menu. If a site doesn’t pass validation, you can try to fix the issues or pick the site and click **Add to list** to ignore the validation problem. For more information about fixing validation problems, see [Fix validation problems using the Enterprise Mode Site List Manager](fix-validation-problems-using-the-enterprise-mode-site-list-manager.md).

3.  Click **OK** to close the **Bulk add sites to the list** menu.

## Turn off data collection on your client devices
After you’ve collected your data, you’ll need to turn Enterprise Site Discovery off.

**To stop collecting data, using PowerShell**

-   On your client computer, start Windows PowerShell in elevated mode (using admin privileges) and run `IETelemetrySetUp.ps1`, using this command: `powershell -ExecutionPolicy Bypass .\IETelemetrySetUp.ps1 –IEFeatureOff`.

    >**Note**<br>Turning off data collection only disables the Enterprise Site Discovery feature – all data already written to WMI stays on your employee’s computer.


**To stop collecting data, using Group Policy**

1.  Open your Group Policy editor, go to `Administrative Templates\Windows Components\Internet Explorer\Turn on Site Discovery WMI output`, and click **Off**.

2.  Go to `Administrative Templates\Windows Components\Internet Explorer\Turn on Site Discovery XML output`, and clear the file path location.

### Delete already stored data from client computers
You can completely remove the data stored on your employee’s computers.

**To delete all existing data**

-   On the client computer, start PowerShell in elevated mode (using admin privileges) and run these four commands:

    -   `Remove-WmiObject -Namespace root/cimv2/IETelemetry IEURLInfo`

    -   `Remove-WmiObject -Namespace root/cimv2/IETelemetry  IESystemInfo`

    -   `Remove-WmiObject -Namespace root/cimv2/IETelemetry  IECountInfo`

    -   `Remove-Item -Path 'HKCU:\Software\Microsoft\Internet Explorer\WMITelemetry'`

## Related topics
* [Enterprise Mode Site List Manager (schema v.2) download](https://go.microsoft.com/fwlink/?LinkId=746562)
* [Enterprise Mode for Internet Explorer 11 (IE11)](enterprise-mode-overview-for-ie11.md)
 



