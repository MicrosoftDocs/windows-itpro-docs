---
Description: 'Internet Explorer Setup command-line options and return codes'
MS-HAID: 'p\_ieak\_ie11.internet\_explorer\_setup\_command\_line\_options\_and\_return\_codes'
MSHAttr: 'PreferredLib:/library'
title: 'Internet Explorer Setup command-line options and return codes'
---

# Internet Explorer Setup command-line options and return codes


You can package your custom version of Internet Explorer and the appropriate command-line options, using a tool like IExpress, and then perform a batch installation across your company.

## IE Setup command-line options


These command-line options work with IE Setup:

**\[/help\] \[/passive | /quiet\] \[/update-no\] \[/no-default\] \[/nobackup\] \[/ieak-full:*&lt;path&gt;* | /ieak-branding: *&lt;path&gt;*\] \[/norestart | /forcerestart\] \[/log: *&lt;path&gt;***

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter (Setup modes)</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/passive</strong></p></td>
<td align="left"><p>Runs the installation without requiring any input from the employee.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/quiet</strong></p></td>
<td align="left"><p>Identical to <strong>/passive</strong>, but doesn’t show any of the progress or error messages to the employee.</p></td>
</tr>
</tbody>
</table>

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter (Setup options)</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/update-no</strong></p></td>
<td align="left"><p>Doesn’t look for IE updates.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/no-default</strong></p></td>
<td align="left"><p>Doesn’t make IE the default browser.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/no-backup</strong></p></td>
<td align="left"><p>Doesn’t back up the files necessary to uninstall IE.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/ieak-full:</strong><em>&lt;path&gt;</em></p></td>
<td align="left"><p>Reserved for use by IE Administration Kit 11 (IEAK 11).</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/ieak-branding:</strong><em>&lt;path&gt;</em></p></td>
<td align="left"><p>Reserved for use by IEAK 11.</p></td>
</tr>
</tbody>
</table>

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter (restart options)</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/norestart</strong></p></td>
<td align="left"><p>Doesn’t restart after installation.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/forcerestart</strong></p></td>
<td align="left"><p>Restarts after installation.</p></td>
</tr>
</tbody>
</table>

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter (miscellaneous options)</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/help</strong></p></td>
<td align="left"><p>Provides help information. Can’t be used with any other option.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/log:</strong><em>&lt;path&gt;</em></p></td>
<td align="left"><p>Creates a log file about the installation process, at the specified location.</p></td>
</tr>
</tbody>
</table>

 

## Windows Setup return and status codes


Setup needs to tell you whether IE successfully installed. However, because IE11wzd.exe is packaged insider your IE11setup.exe file, the return codes can’t be sent directly back to you. Instead, Setup needs to return the information (both success and failure) to the HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Active Setup\\InstallInfo registry branch.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Subkey</th>
<th align="left">Data type</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Complete</p></td>
<td align="left"><p><em>String</em></p></td>
<td align="left"><p>0 = Success</p></td>
</tr>
<tr class="even">
<td align="left"><p>Complete</p></td>
<td align="left"><p><em>String</em></p></td>
<td align="left"><p>0x80100003 = Files are missing for the requested installation.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Complete</p></td>
<td align="left"><p><em>String</em></p></td>
<td align="left"><p>0x80100001 = Setup partially succeeded. One or more components weren’t downloaded or installed. Check the <strong>FailedComponents</strong> subkey for the list of components.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Complete</p></td>
<td align="left"><p><em>String</em></p></td>
<td align="left"><p>0x80100002 = Setup partially succeeded, but the employee cancelled Setup. One or more components weren’t downloaded or installed. Check the <strong>FailedComponents</strong> subkey for the list of components.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>FailedComponents</p></td>
<td align="left"><p><em>MultiSZ</em></p></td>
<td align="left"><p>&lt;Name of components from CIFID&gt;Null&lt;Name of Component...&gt;</p></td>
</tr>
<tr class="even">
<td align="left"><p>InstallStatus</p></td>
<td align="left"><p><em>binary</em></p></td>
<td align="left"><p>0 = Install completed successfully</p></td>
</tr>
<tr class="odd">
<td align="left"><p>InstallStatus</p></td>
<td align="left"><p><em>binary</em></p></td>
<td align="left"><p>1 = Suspend Setup. The employee cancelled Setup and is then asked to confirm:</p>
<ul>
<li><p>2 = No, don’t cancel. Resume Setup.</p></li>
<li><p>3 = Yes, cancel confirmed. Quit Setup as soon as possible.</p></li>
</ul>
<div class="alert">
<strong>Important</strong>  
<p>If the cancel is confirmed, Setup will quit as soon as all of the in-progress tasks complete, like copying or extracting files.</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

 

 



