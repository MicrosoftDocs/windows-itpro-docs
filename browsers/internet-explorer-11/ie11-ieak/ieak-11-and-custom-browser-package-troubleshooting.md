---
Description: IEAK 11 and Custom Browser Package Troubleshooting
MS-HAID: 'p\_ieak\_ie11.ieak\_11\_and\_custom\_browser\_package\_troubleshooting'
MSHAttr: 'PreferredLib:/library'
title: IEAK 11 and Custom Browser Package Troubleshooting
---

# IEAK 11 and Custom Browser Package Troubleshooting


While the Internet Explorer Customization Wizard 11 has been around for quite a while, there are still some known issues that you might encounter while deploying or managing your custom IE install package.

## I can’t locate some of the wizard pages


The most common reasons you won’t see certain pages is because of:

-   **Your licensing agreement with Microsoft.** Your licensing agreement determines whether you install the **Internal** or **External** version of the IE Customization Wizard 11, and there are different features available for each version. For information about which features are available for each version, see [IEAK 11: Determine the licensing version and features to use](ieak_11_determine_the_licensing_version_and_features_to_use.md).

-   **Your choice of operating system.** Depending on the operating system you picked from the **Platform Selection** page of the wizard, you might not see all of the pages. Some features aren’t available for all operating systems. For more information, see [Platform Selection: Internet Explorer Customization Wizard](platform_selection_internet_explorer_customization_wizard.md).

-   **Your choice of features.** Depending on what you selected from the **Feature Selection** page of the wizard, you might not see all of the pages. You need to make sure that the features you want to customize are all checked. For more information, see [Feature Selection: Internet Explorer Customization Wizard](feature_selection_internet_explorer_customization_wizard.md).

## IE Setup fails on employee computers


Various issues can cause problems during Setup, including missing files, trust issues, or URL monikers. You can troubleshoot these issues by reviewing the Setup log file: IE11\_main.log from the **Windows** folder (typically, C:\\Windows). The log file covers the entire Setup process from the moment IE11Setup.exe starts until the last .cab file finishes, providing error codes that you can use to help determine the cause of the failure.

**Log File Codes**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Code</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>Initializing, making a temporary folder, and checking disk space.</p></td>
</tr>
<tr class="even">
<td align="left"><p>1</p></td>
<td align="left"><p>Checking for all dependencies.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>2</p></td>
<td align="left"><p>Downloading files from the server.</p></td>
</tr>
<tr class="even">
<td align="left"><p>3</p></td>
<td align="left"><p>Copying files from download location to the temporary installation folder.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4</p></td>
<td align="left"><p>Restarting download and retrying Setup, because of a time-out error or other download error.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5</p></td>
<td align="left"><p>Checking trust and checking permissions.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>6</p></td>
<td align="left"><p>Extracting files.</p></td>
</tr>
<tr class="even">
<td align="left"><p>7</p></td>
<td align="left"><p>Running Setup program (an .inf or .exe file).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8</p></td>
<td align="left"><p>Installation is finished.</p></td>
</tr>
<tr class="even">
<td align="left"><p>9</p></td>
<td align="left"><p>Download finished, and all files are downloaded.</p></td>
</tr>
</tbody>
</table>

 

**Error Codes**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Code</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>80100003</p></td>
<td align="left"><p>Files are missing from the download folder during installation.</p></td>
</tr>
<tr class="even">
<td align="left"><p>800bxxxx</p></td>
<td align="left"><p>An error code starting with 800b is a trust failure.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>800Cxxxx</p></td>
<td align="left"><p>An error code starting with 800C is a Urlmon.dll failure.</p></td>
</tr>
</tbody>
</table>

 

## IE Setup connection times out


IE Setup can switch servers during the installation process to maintain maximum throughput or to recover from a non-responsive download site (you receive less than 1 byte in 2 minutes). If the connection times out, but Setup is able to connect to the next download site on the list, your download starts over. If however the connection times out and Setup can’t connect to a different server, it’ll ask if you want to stop the installation or try again.

To address connection issues (for example, as a result of server problems) where Setup can’t locate another download site by default, we recommend you overwrite your first download server using this workaround:

``` syntax
<path>\ie11setup.exe /C:"ie11wzd.exe /S:""<path>\ie11setup.exe"" /L:""http://your_Web_server/your_Web_site/ie11sites.dat"""
```

Where *&lt;path&gt;* represents the folder location where you stored IE11setup.exe.

## Employees can’t uninstall IE


If you can’t uninstall IE using **Uninstall or change a program** in the Control Panel, it could be because the uninstall information isn’t on the computer. To fix this issue, you should:

1.  Review the uninstall log file, IE11Uninst.log file, which is located in the C:\\Windows folder. This log file covers the entire uninstallation process, including every file change, every registry change, and any dialog boxes that are shown.

2.  Try to manually uninstall IE. Go to the backup folder, &lt; *systemdrive*&gt;\\Windows\\$ie11$, and run the uninstall file, `Spunist.exe`.

 

 



