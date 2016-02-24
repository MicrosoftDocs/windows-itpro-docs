---
Description: 'IExpress command-line options'
MS-HAID: 'p\_ieak\_ie11.iexpress\_command\_line\_options'
MSHAttr: 'PreferredLib:/library'
title: 'IExpress command-line options'
---

# IExpress command-line options


The IExpress Wizard (IExpress.exe) lets you use command-line options to control the custom browser package extraction process for Internet Explorer.

These are the available options for IExpress with IE:

**Ie11setup *&lt;IExpress options&gt;* /c:"ie11wzd *&lt;Internet Explorer options&gt;*"**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameters</th>
<th align="left">Action</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/q</strong></p></td>
<td align="left"><p>Specifies quiet mode, hiding all of the prompts, while files are being extracted. This option won’t suppress prompts during Setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/q:u</strong></p></td>
<td align="left"><p>Specifies user-quiet mode, letting some of the progress and error messages appear to the employee.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/q:a</strong></p></td>
<td align="left"><p>Specifies administrator-quiet mode, hiding all of the progress and error messages from the employee.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/t:<em>&lt;path&gt;</em></strong></p></td>
<td align="left"><p>Specifies where to store your extracted files.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/c:</strong></p></td>
<td align="left"><p>Extracts all of the files without installing them. If <strong>t:/<em>&lt;path&gt;</em></strong> isn’t used, you’ll be prompted for a storage folder.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/c:<em>&lt;path&gt;</em></strong></p></td>
<td align="left"><p>Specifies the UNC path and name of the Setup .inf or .exe file.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/r:n</strong></p></td>
<td align="left"><p>Never restarts the computer after installation.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/r:a</strong></p></td>
<td align="left"><p>Always restarts the computer after installation.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/r:s</strong></p></td>
<td align="left"><p>Restarts the computer after installation without prompting the employee.</p></td>
</tr>
</tbody>
</table>

 

For more information, see [Command-line switches for IExpress software update packages](http://go.microsoft.com/fwlink/?LinkId=317973).

 

 



