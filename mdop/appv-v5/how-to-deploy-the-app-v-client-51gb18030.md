---
title: How to Deploy the App-V Client
description: How to Deploy the App-V Client
author: dansimp
ms.assetid: 981f57c9-56c3-45da-8261-0972bfad3e5b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 11/01/2016
---


# How to Deploy the App-V Client


Use the following procedure to install the Microsoft Application Virtualization (App-V) 5.1 client and Remote Desktop Services client. You must install the version of the client that matches the operating system of the target computer.

<a href="" id="bkmk-clt-install-prereqs"></a>**What to do before you start**

1.  Review and install the software prerequisites:

    Install the prerequisite software that corresponds to the version of App-V that you are installing:

    -   [About App-V 5.1](about-app-v-51.md)

    -   [App-V 5.1 Prerequisites](app-v-51-prerequisites.md)

2.  Review the client coexistence and unsupported scenarios, as applicable to your installation:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Deploying coexisting App-V clients</p></td>
    <td align="left"><p>[Planning for the App-V 5.1 Sequencer and Client Deployment](planning-for-the-app-v-51-sequencer-and-client-deployment.md)</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Unsupported or limited installation scenarios</p></td>
    <td align="left"><p>See the client section in [App-V 5.1 Supported Configurations](app-v-51-supported-configurations.md)</p></td>
    </tr>
    </tbody>
    </table>

     

3.  Review the locations for client registry, log, and troubleshooting information:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>Client registry information</p></td>
<td align="left"><ul>
<li><p>By default, after you install the App-V 5.1 client, the client information is stored in the registry in the following registry key:</p>
<p><strong>HKEY_LOCAL_MACHINE \ SOFTWARE \ MICROSOFT \ APPV \ CLIENT</strong></p></li>
<li><p>When you deploy a virtualized package to a computer that is running the App-V client, the associated package data is stored in the following location:</p>
<p><strong>C: \ ProgramData \ App-V</strong></p>
<p>However, you can reconfigure this location with the following registry key:</p>
<p><strong>HKEY_LOCAL_MACHINE \ SOFTWARE \ MICROSOFT \ SOFTWARE \ MICROSOFT \ APPV \ CLIENT \ STREAMING \ PACKAGEINSTALLATIONROOT</strong></p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Client log files</p></td>
<td align="left"><ul>
<li><p>For log file information that is associated with the App-V 5.1 Client, search in the following log:</p>
<p><strong>Event logs / Applications and Services Logs / Microsoft / AppV</strong></p></li>
<li><p>In App-V 5.0 SP3, some logs were consolidated and moved to the following location:</p>
<p><strong>Event logs/Applications and Services Logs/Microsoft/AppV/ServiceLog</strong></p>
<p>For a list of the moved logs, see [About App-V 5.0 SP3](about-app-v-50-sp3.md#bkmk-event-logs-moved).</p></li>
<li><p>Packages that are currently stored on computers that run the App-V 5.1 Client are saved to the following location:</p>
<p><strong>C:\ProgramData\App-V\&lt;package id&gt;\&lt;version id&gt;</strong></p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Client installation troubleshooting information</p></td>
<td align="left"><p>See the error log in the <strong>%temp%</strong> folder. To review the log files, click <strong>Start</strong>, type <strong>%temp%</strong>, and then look for the <strong>appv_ log</strong>.</p></td>
</tr>
</tbody>
</table>

 

**To install the App-V 5.1 Client**

1.  Copy the App-V 5.1 client installation file to the computer on which it will be installed. Choose from the following client types:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Client type</th>
    <th align="left">File to use</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Standard version of the client</p></td>
    <td align="left"><p><strong>appv_client_setup.exe</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Remote Desktop Services version of the client</p></td>
    <td align="left"><p><strong>appv_client_setup_rds.exe</strong></p></td>
    </tr>
    </tbody>
    </table>

     

2.  Double-click the installation file, and click **Install**. Before the installation begins, the installer checks the computer for any missing [App-V 5.1 Prerequisites](app-v-51-prerequisites.md).

3.  Review and accept the Software License Terms, choose whether to use Microsoft Update and whether to participate in the Microsoft Customer Experience Improvement Program, and click **Install**.

4.  On the **Setup completed successfully** page, click **Close**.

    The installation creates the following entries for the App-V client in **Programs**:

    -   **.exe**

    -   **.msi**

    -   **language pack**

        **Note**  
        After the installation, only the .exe file can be uninstalled.

         

**To install the App-V 5.1 client using a script**

1.  Install all of the required prerequisite software on the target computers. See [What to do before you start](#bkmk-clt-install-prereqs). If you install the client by using an .msi file, the installation will fail if any prerequisites are missing.

2.  To use a script to install the App-V 5.1 client, use the following parameters with **appv\_client\_setup.exe**.

    **Note**  
    The client Windows Installer (.msi) supports the same set of switches, except for the **/LOG** parameter.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><p>/INSTALLDIR</p></td>
    <td align="left"><p>Specifies the installation directory. Example usage: <strong>/INSTALLDIR=C:\Program Files\AppV Client</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/CEIPOPTIN</p></td>
    <td align="left"><p>Enables participation in the Customer Experience Improvement Program. Example usage: <strong>/CEIPOPTIN=[0|1]</strong></p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/MUOPTIN</p></td>
    <td align="left"><p>Enables Microsoft Update. Example usage: <strong>/MUOPTIN=[0|1]</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/PACKAGEINSTALLATIONROOT</p></td>
    <td align="left"><p>Specifies the directory in which to install all new applications and updates. Example usage: <strong>/PACKAGEINSTALLATIONROOT='C:\App-V Packages'</strong></p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/PACKAGESOURCEROOT</p></td>
    <td align="left"><p>Overrides the source location for downloading package content. Example usage: <strong>/PACKAGESOURCEROOT='http://packageStore'</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/AUTOLOAD</p></td>
    <td align="left"><p>Specifies how new packages will be loaded by App-V 5.1 on a specific computer. The following options are enabled: [1]; automatically load all packages [2]; or automatically load no packages [0].<strong>Example usage: /AUTOLOAD=[0|1|2]</strong></p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/SHAREDCONTENTSTOREMODE</p></td>
    <td align="left"><p>Specifies that streamed package contents will be not be saved to the local hard disk. Example usage: <strong>/SHAREDCONTENTSTOREMODE=[0|1]</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/MIGRATIONMODE</p></td>
    <td align="left"><p>Allows the App-V 5.1 client to modify the shortcuts and FTAs that are associated with the packages that are created with a previous version. Example usage: <strong>/MIGRATIONMODE=[0|1]</strong></p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/ENABLEPACKAGESCRIPTS</p></td>
    <td align="left"><p>Enables the scripts that are defined in the package manifest file or configuration files that should run. Example usage: <strong>/ENABLEPACKAGESCRIPTS=[0|1]</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/ROAMINGREGISTRYEXCLUSIONS</p></td>
    <td align="left"><p>Specifies the registry paths that will not roam with a user profile. Example usage: <strong>/ROAMINGREGISTRYEXCLUSIONS=software\classes;software\clients</strong></p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/ROAMINGFILEEXCLUSIONS</p></td>
    <td align="left"><p>Specifies the file paths relative to %userprofile% that do not roam with a user's profile. Example usage: <strong>/ROAMINGFILEEXCLUSIONS 'desktop;my pictures'</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/S[1-5]PUBLISHINGSERVERNAME</p></td>
    <td align="left"><p>Displays the name of the publishing server. Example usage: <strong>/S2PUBLISHINGSERVERNAME=MyPublishingServer</strong></p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/S[1-5]PUBLISHINGSERVERURL</p></td>
    <td align="left"><p>Displays the URL of the publishing server. Example usage: <strong>/S2PUBLISHINGSERVERURL=\\pubserver</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/S[1-5]GLOBALREFRESHENABLED -</p></td>
    <td align="left"><p>Enables a global publishing refresh. Example usage: <strong>/S2GLOBALREFRESHENABLED=[0|1]</strong></p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/S[1-5]GLOBALREFRESHONLOGON</p></td>
    <td align="left"><p>Initiates a global publishing refresh when a user logs on. Example usage: <strong>/S2LOGONREFRESH=[0|1]</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/S[1-5]GLOBALREFRESHINTERVAL -</p></td>
    <td align="left"><p>Specifies the publishing refresh interval, where <strong>0</strong> indicates do not periodically refresh. Example usage: <strong>/S2PERIODICREFRESHINTERVAL=[0-744]</strong></p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/S[1-5]GLOBALREFRESHINTERVALUNIT</p></td>
    <td align="left"><p>Specifies the interval unit (Hours[0], Days[1]). Example usage: <strong>/S2GLOBALREFRESHINTERVALUNIT=[0|1]</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/S[1-5]USERREFRESHENABLED</p></td>
    <td align="left"><p>Enables user publishing refresh. Example usage: <strong>/S2USERREFRESHENABLED=[0|1]</strong></p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/S[1-5]USERREFRESHONLOGON</p></td>
    <td align="left"><p>Initiates a user publishing refresh when a user logs on. Example usage: <strong>/S2LOGONREFRESH=[0|1]</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/S[1-5]USERREFRESHINTERVAL -</p></td>
    <td align="left"><p>Specifies the publishing refresh interval, where <strong>0</strong> indicates do not periodically refresh. Example usage: <strong>/S2PERIODICREFRESHINTERVAL=[0-744]</strong></p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/S[1-5]USERREFRESHINTERVALUNIT</p></td>
    <td align="left"><p>Specifies the interval unit (Hours[0], Days[1]). Example usage: <strong>/S2USERREFRESHINTERVALUNIT=[0|1]</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/Log</p></td>
    <td align="left"><p>Specifies a location where the log information is saved. The default location is %Temp%. Example usage: <strong>/log C:\logs\log.log</strong></p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/q</p></td>
    <td align="left"><p>Specifies an unattended installation.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/REPAIR</p></td>
    <td align="left"><p>Repairs a previous client installation.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/NORESTART</p></td>
    <td align="left"><p>Prevents the computer from rebooting after the client installation.</p>
    <p>The parameter prevents the end-user computer from rebooting after each update is installed and lets you schedule the reboot at your convenience. For example, you can install App-V 5.1 and then install Hotfix Package Y without rebooting after the Service Pack installation. After the installation, you must reboot before you start using App-V.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/UNINSTALL</p></td>
    <td align="left"><p>Uninstalls the client.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/ACCEPTEULA</p></td>
    <td align="left"><p>Accepts the license agreement. This is required for an unattended installation. Example usage: <strong>/ACCEPTEULA</strong> or <strong>/ACCEPTEULA=1</strong>.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/LAYOUT</p></td>
    <td align="left"><p>Specifies the associated layout action. It also extracts the Windows Installer (.msi) and script files to a folder without installing App-V 5.1. No value is expected.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/LAYOUTDIR</p></td>
    <td align="left"><p>Specifies the layout directory. Requires a string value. Example usage: <strong>/LAYOUTDIR=”C:\Application Virtualization Client”</strong>.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/?, /h, /help</p></td>
    <td align="left"><p>Requests help about the previous installation parameters.</p></td>
    </tr>
    </tbody>
    </table>

     

**To install the App-V 5.1 client by using the Windows Installer (.msi) file**

1.  Install the required prerequisites on the target computers. See [What to do before you start](#bkmk-clt-install-prereqs). If any prerequisites are not met, the installation will fail.

2.  Ensure that the target computers do not have any pending restarts before you install the client using the App-V 5.1 Windows Installer (.msi) files. The Windows Installer files do not flag a pending restart.

3.  Deploy one of the following Windows Installer files to the target computer. The file that you specify must match the configuration of the target computer.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Type of deployment</th>
    <th align="left">Deploy this file</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Computer is running a 32-bit Microsoft Windows operating system</p></td>
    <td align="left"><p>appv_client_MSI_x86.msi</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Computer is running a 64-bit Microsoft Windows operating system</p></td>
    <td align="left"><p>appv_client_MSI_x64.msi</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>You are deploying the App-V 5.1 Remote Desktop Services client</p></td>
    <td align="left"><p>appv_client_rds_MSI_x64.msi</p></td>
    </tr>
    </tbody>
    </table>

     

4.  Using the information in the following table, select the appropriate language pack **.msi** to install, based on the desired language for the target computer. The **xxxx** in the table refers to the target locale of the language pack.

    **What to know before you start:**

    -   The language packs are common to both the standard App-V 5.1 client and the Remote Desktop Services version of the App-V 5.1 client.

    -   If you install the App-V 5.1 client using the **.exe**, the installer will deploy only the language pack that matches the operating system running on the target computer.

    -   To deploy additional language packs on a target computer, use the procedure **To install the App-V 5.1 client by using Windows Installer (.msi) file**.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Type of deployment</th>
    <th align="left">Deploy this file</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Computer is running a 32-bit Microsoft Windows operating system</p></td>
    <td align="left"><p>appv_client_LP_xxxx_ x86.msi</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Computer is running a 64-bit Microsoft Windows operating system</p></td>
    <td align="left"><p>appv_client_LP_xxxx_ x64.msi</p></td>
    </tr>
    </tbody>
    </table>

     

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Deploying App-V 5.1](deploying-app-v-51.md)

[About Client Configuration Settings](about-client-configuration-settings51.md)

[How to Uninstall the App-V 5.1 Client](how-to-uninstall-the-app-v-51-client.md)

 

 





