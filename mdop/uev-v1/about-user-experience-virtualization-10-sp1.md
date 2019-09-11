---
title: About User Experience Virtualization 1.0 SP1
description: About User Experience Virtualization 1.0 SP1
author: dansimp
ms.assetid: 0212d3fb-e882-476c-9496-9eb52301703d
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# About User Experience Virtualization 1.0 SP1


Microsoft User Experience Virtualization (UE-V) 1.0 Service Pack 1 changes the version from 1.0.414 to 1.0.520. When the UE-V Agent setup.exe or UE-V Generator setup.exe is launched it will detect the need for an upgrade and will upgrade the UE-V Agent or Generator.

## Additional Languages Now Supported


UE-V 1.0 Service Pack 1 provides updates for both the UE-V Agent and the UE-V Generator supporting additional languages. All supported languages are installed when the setup program runs. The following languages are included in UE-V 1 SP1:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">UE-V Agent</th>
<th align="left">UE-V Generator</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><ul>
<li><p>Chinese Simplified (PRC) zh-CN</p></li>
</ul>
<ul>
<li><p>Chinese Traditional - Taiwan zh-TW</p></li>
</ul>
<ul>
<li><p>Czech (Czech Republic) cs-CZ</p></li>
</ul>
<ul>
<li><p>Danish (Denmark) da-DK</p></li>
</ul>
<ul>
<li><p>Dutch (Netherlands) nl-NL</p></li>
</ul>
<ul>
<li><p>Finnish (Finland) fi-FI</p></li>
</ul>
<ul>
<li><p>French (France) fr-FR</p></li>
</ul>
<ul>
<li><p>German (Germany) de-DE</p></li>
</ul>
<ul>
<li><p>Greek (Greece) el-GR</p></li>
</ul>
<ul>
<li><p>Hungarian (Hungary) hu-HU</p></li>
</ul>
<ul>
<li><p>Italian (Italy) it-IT</p></li>
</ul>
<ul>
<li><p>Japanese (Japan) ja-JP</p></li>
</ul>
<ul>
<li><p>Korean (Korea) ko-KR</p></li>
</ul>
<ul>
<li><p>Norwegian - Norway Bokmal nb-NO</p></li>
</ul>
<ul>
<li><p>Polish (Poland) pl-PL</p></li>
</ul>
<ul>
<li><p>Portuguese (Brazil) pt-BR</p></li>
</ul>
<ul>
<li><p>Portuguese (Portugal) pt-PT</p></li>
</ul>
<ul>
<li><p>Russian (Russia) ru-RU</p></li>
</ul>
<ul>
<li><p>Slovak (Slovakia) sk-SK</p></li>
</ul>
<ul>
<li><p>Slovenian (Slovenia) sl-SL</p></li>
</ul>
<ul>
<li><p>Spanish, International Sort (Spain) es-ES</p></li>
</ul>
<ul>
<li><p>Swedish (Sweden) sv-SE</p></li>
</ul>
<ul>
<li><p>Turkish (Turkey) tr-TR</p></li>
</ul>
<p></p></td>
<td align="left"><ul>
<li><p>Chinese Simplified (PRC) zh-CN</p></li>
</ul>
<ul>
<li><p>Chinese Traditional - Taiwan zh-TW</p></li>
</ul>
<ul>
<li><p>French (France) fr-FR</p></li>
</ul>
<ul>
<li><p>German (Germany) de-DE</p></li>
</ul>
<ul>
<li><p>Italian (Italy) it-IT</p></li>
</ul>
<ul>
<li><p>Japanese (Japan) ja-JP</p></li>
</ul>
<ul>
<li><p>Korean (Korea) ko-KR</p></li>
</ul>
<ul>
<li><p>Portuguese (Brazil) pt-BR</p></li>
</ul>
<ul>
<li><p>Russian (Russia) ru-RU</p></li>
</ul>
<ul>
<li><p>Spanish, International Sort (Spain) es-ES</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

**Important**  
While the UE-V Agent installation program (AgentSetup.exe) and UE-V Generator installation program (ToolSetup.exe) are translated into the languages above, the Windows Installer (.msi) files are only available in English.

 

## Office 2007 Settings Location Templates


The UE-V Agent installation software installs the agent and registers a default group of settings location templates for common Microsoft applications. Microsoft Office 2007 is now part of these applications. There are two Office 2007 templates: MicrosoftOffice2007.xml and MicrosoftCommunicator2007.xml. These settings location templates capture settings in Microsoft Office 2007 for the following applications:

-   Microsoft Access 2007

-   Microsoft Communicator 2007

-   Microsoft Excel 2007

-   Microsoft InfoPath 2007

-   Microsoft OneNote 2007

-   Microsoft Outlook 2007

-   Microsoft PowerPoint 2007

-   Microsoft Project 2007

-   Microsoft Publisher 2007

-   Microsoft SharePoint Designer 2007

-   Microsoft Visio 2007

-   Microsoft Word 2007

### Office 2010 Settings Location Templates Updates

An update to the Settings Location Templates has also been made. Those changes include:

-   Added support for Microsoft SharePoint Designer 2010 by adding a new template to the Office 2010 templates (MicrosoftOffice2010Win32.xml and MicrosoftOffice2010Win64.xml)

-   Minor bug fixes, including Customize Status Bar – Word, Excel, and PowerPoint

## Scheduled Task for Catalog Updates is now randomized


The Template Auto Update task checks the settings template catalog for new, updated, or removed templates. This task only runs if the SettingsTemplateCatalog is configured. The Template Auto Update task runs the ApplySettingsCatalog.exe file, which is located in the UE-V Agent install directory and with UE-V SP1 has been changed to randomize the update over a one hour period.

## Support for Citrix EdgeSight


There was a conflict discovered with UE-V running on a server with Citrix EdgeSight. UE-V 1.0 SP1 resolves this issue.

## Indexing of Internet Explorer favorites


When UE-V roams Internet Explorer favorites from one computer to another computer, the indexing of favorite addresses in the address bar on the synced computer is now updated. When a user types in the address bar, the roamed favorites now appear as available search result on synced computers.

## New setup.exe command line parameters for UE-V Agent and UE-V Generator


With the release of UE-V 1.0 SP1, the setup.exe for both the UE-V Agent and the UE-V Generator have been updated to allow the following additional command line parameters:

1.  `CEIPENABLED` – Allows setup to accept the option to be included in the Microsoft Customer Experience Improvement Program.

2.  `INSTALLFOLDER` – Allows a different installation folder to be set for the Agent or Generator.

3.  `MUENABLED` – Allows setup to accept the option to be included in the Microsoft Update program.

## New error codes for setup


When running the UE-V setup for UE-V Agent (AgentSetup.exe), the following return codes can be viewed in the install log “/log &lt;log.txt&gt;.”

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>Setup completed successfully.</p></td>
</tr>
<tr class="even">
<td align="left"><p>2</p></td>
<td align="left"><p>An older version of UE-V was used in attempting to uninstall. To uninstall UE-V, use the same version of UE-V that was used to install.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>3</p></td>
<td align="left"><p>A newer version of UE-V was used to uninstall. To uninstall UE-V, use the same version of UE-V that was used to install.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4</p></td>
<td align="left"><p>Unexpected error from the setup program.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5</p></td>
<td align="left"><p>The Full version of UE-V cannot be installed on top of the Trial (Evaluation) version. Uninstall the Trial version and try again.</p></td>
</tr>
<tr class="even">
<td align="left"><p>6</p></td>
<td align="left"><p>Unexpected error during installation.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>7</p></td>
<td align="left"><p>The .NET 3.5 Framework was not found on Windows 7 or Windows Server2008 R2 computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>8</p></td>
<td align="left"><p>The Offline Files feature is not enabled.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>9</p></td>
<td align="left"><p>The UE-V setup program cannot determine whether UE-V is already installed or there was an error in the setup file.</p></td>
</tr>
</tbody>
</table>

 

 

 





