---
title: Installing the MBAM 2.5 Server Software
description: Installing the MBAM 2.5 Server Software
author: dansimp
ms.assetid: b9dbe697-5400-4bac-acfb-ee6dc6586c30
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Installing the MBAM 2.5 Server Software


This topic describes how to install the Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 Server software by using the Microsoft BitLocker Administration and Monitoring Setup wizard or by using command-line parameters. Repeat the server installation process for each server on which you are configuring MBAM 2.5 Server features. After you finish the installation, see [Configuring the MBAM 2.5 Server Features](configuring-the-mbam-25-server-features.md) for steps about configuring the Server features.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Before you start</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Review the MBAM 2.5 planning information</p></td>
<td align="left"><ul>
<li><p>[MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md)</p></li>
<li><p>[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)</p></li>
<li><p>[High-Level Architecture for MBAM 2.5](high-level-architecture-for-mbam-25.md)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Read how to get log files</p></td>
<td align="left"><p>By default, log files are created in the local computer’s %temp% folder. To write the log files to a specific location rather than to the <strong>%temp</strong>% folder, use the <strong>/log</strong> &lt;<em>location</em>&gt; argument.</p>
<p>Additional events might be logged in Event Viewer in the <strong>MBAM-Setup</strong> or <strong>MBAM-Web</strong> nodes under <strong>Applications and Services Logs &gt; Microsoft &gt; Windows</strong>. For example, if you uninstall MBAM, the uninstaller will also uninstall the MBAM-Setup and MBAM-Web logs in EventViewer.</p></td>
</tr>
</tbody>
</table>

 

## Installing the MBAM 2.5 Server software by using the Microsoft BitLocker Administration and Monitoring Setup wizard


Use these steps to install the MBAM Server software by using the Microsoft BitLocker Administration and Monitoring Setup wizard.

**To install the MBAM 2.5 Server software by using the wizard**

1.  On the server where you want to install MBAM, run **MBAMserversetup.exe** to start the Microsoft BitLocker Administration and Monitoring Setup wizard.

2.  On the **Welcome** page, click **Next**.

3.  Read and accept the Microsoft Software License Agreement, and then click **Next** to continue the installation.

4.  Choose whether to use Microsoft Update when you check for updates, and then click **Next**.

5.  Choose whether to participate in the Customer Experience Improvement Program, and then click **Next**.

6.  To start the installation, click **Install**.

7.  To configure the server features after the MBAM Server software finishes installing, select the **Run MBAM Server Configuration after the wizard closes** check box. Alternatively, you can configure MBAM later by using the **MBAM Server Configuration** shortcut that the server installation creates on your **Start** menu.

8.  Click **Finish**.

## Installing the MBAM 2.5 Server software by using a Command Prompt window


At a command prompt, type a command similar to the following command to install the MBAM Server software.

``` syntax
MbamServerSetup.exe MBAMServerInstall.log
CEIPENABLED=True OPTIN_FOR_MICROFOST_UPDATES=True INSTALLDIR=c:\mbaminstall
```

The following table describes the command-line parameters for installing the MBAM 2.5 Server software.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Parameter value</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>CEIPENABLED</p></td>
<td align="left"><p>True False</p></td>
<td align="left"><p>True - participate in the Customer Improvement Experience Program, which helps Microsoft identify which MBAM features to improve.</p>
<p>False – do not participate in the Customer Improvement Experience Program.</p></td>
</tr>
<tr class="even">
<td align="left"><p>OPTIN_FOR_MICROSOFT_UPDATES</p></td>
<td align="left"><p>True False</p></td>
<td align="left"><p>True - use Microsoft Update to keep your computer secure and up-to-date for Windows and other Microsoft products, including MBAM.</p>
<p>False – do not use Microsoft Update</p></td>
</tr>
<tr class="odd">
<td align="left"><p>INSTALLDIR</p></td>
<td align="left"><p>&lt;Path&gt;</p></td>
<td align="left"><p>Location where you want to install MBAM.</p>
<p>Example:</p>
<p>INSTALLDIR=c:\mbaminstall</p></td>
</tr>
<tr class="even">
<td align="left"><p>FORCE_UNINSTALL</p></td>
<td align="left"><p>True False</p></td>
<td align="left"><p>True - continue the process of uninstalling MBAM, even if any features fail to be removed.</p>
<p>False (default) if the uninstallation custom action fails to remove an added MBAM Server feature, the uninstallation fails, and MBAM remains installed.</p>
<p>In both instances, any features that were successfully removed during the attempt to uninstall MBAM stay removed.</p></td>
</tr>
</tbody>
</table>

 



## Related topics


[Deploying MBAM 2.5](deploying-mbam-25.md)

[Configuring the MBAM 2.5 Server Features](configuring-the-mbam-25-server-features.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





