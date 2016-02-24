---
Description: '\[Branding\]: .INS file setting'
MS-HAID: 'p\_ieak\_ie11.branding\_ins\_file\_setting'
MSHAttr: 'PreferredLib:/library'
title: '\[Branding\]: .INS file setting'
---

# \[Branding\]: .INS file setting


Information about the custom branding and setup information in your browser package.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name</th>
<th align="left">Value</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Add on URL</p></td>
<td align="left"><p><em>http://server/addons/addon.htm</em></p></td>
<td align="left"><p>The add-on URL for the product updates command in the browser.</p></td>
</tr>
<tr class="even">
<td align="left"><p>BrowserDefault</p></td>
<td align="left"><p><em>0</em> | <em>1</em> | <em>2</em></p></td>
<td align="left"><p>Determines the default browser behavior.</p>
<ul>
<li><p><strong>0</strong> – Locks down Internet Explorer as the default browser.</p></li>
<li><p><strong>1</strong> – Preserves the existing default browser.</p></li>
<li><p><strong>2</strong> – Lets the employee decide the default browser.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>CMBitmapName</p></td>
<td align="left"><p><em>file_name</em></p></td>
<td align="left"><p>The file name for the Connection Manager custom bitmap.</p></td>
</tr>
<tr class="even">
<td align="left"><p>CMBitmapPath</p></td>
<td align="left"><p><em>path</em></p></td>
<td align="left"><p>The full path to the Connection Manager custom bitmap file.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>CMProfileName</p></td>
<td align="left"><p><em>file_name</em></p></td>
<td align="left"><p>The name of the Connection Manager profile.</p></td>
</tr>
<tr class="even">
<td align="left"><p>CMProfilePath</p></td>
<td align="left"><p><em>path</em></p></td>
<td align="left"><p>The full path to the Connection Manager profile.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>CMUseCustom</p></td>
<td align="left"><p><em>0</em> | <em>1</em></p></td>
<td align="left"><p>Determines whether to use a custom Connection Manager profile.</p>
<ul>
<li><p><strong>0</strong> – Don’t use a custom Connection Manager profile.</p></li>
<li><p><strong>1</strong> – Use a custom Connection Manager profile.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>CompanyName</p></td>
<td align="left"><p><em>name</em></p></td>
<td align="left"><p>The name of the company with a valid IEAK 11 license, building this .ins file.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>EncodeFavs</p></td>
<td align="left"><p><em>0</em> | <em>1</em></p></td>
<td align="left"><p>Determines whether to encode the <strong>[Favorites]</strong> section for versions of IE earlier than 5.0.</p>
<ul>
<li><p><strong>0</strong> – Don’t encode the section.</p></li>
<li><p><strong>1</strong> – Encode the section.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>FavoritesDelete</p></td>
<td align="left"><p><em>hexadecimal</em></p></td>
<td align="left"><p>Lets you remove all existing Favorites and Quick Links.</p>
<ul>
<li><p><strong>0x89</strong> – Removes all existing Favorites and Quick Links.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>FavoritesOnTop</p></td>
<td align="left"><p><em>0</em> | <em>1</em></p></td>
<td align="left"><p>Determines whether to put new favorite items at the top of the menu.</p>
<ul>
<li><p><strong>0</strong> – Don’t put the new item at the top of the <strong>Favorites</strong> menu.</p></li>
<li><p><strong>1</strong> – Put the new item at the top of the <strong>Favorites</strong> menu.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>IE4 Welcome Msg</p></td>
<td align="left"><p><em>0</em> | <em>1</em></p></td>
<td align="left"><p>Determines whether a <strong>Welcome</strong> page appears.</p>
<ul>
<li><p><strong>0</strong> – Don’t go to a <strong>Welcome</strong> page the first time the browser is opened.</p></li>
<li><p><strong>1</strong> – Go to a <strong>Welcome</strong> page the first time the browser is opened.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Language ID</p></td>
<td align="left"><p><em>number</em></p></td>
<td align="left"><p>Code value for the language used.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Language Locale</p></td>
<td align="left"><p><em>locale</em></p></td>
<td align="left"><p>The locale of the version of IE being customized, as denoted by a four-letter string — for example, EN-us for English.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>NoIELite</p></td>
<td align="left"><p><em>0</em> | <em>1</em></p></td>
<td align="left"><p>Determines whether to optimize the Active Setup Wizard for download.</p>
<ul>
<li><p><strong>0</strong> – Don’t optimize the Active Setup Wizard.</p></li>
<li><p><strong>1</strong> – Optimize the Active Setup Wizard for download, using existing files, as possible.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>SilentInstall</p></td>
<td align="left"><p><em>0</em> | <em>1</em></p></td>
<td align="left"><p>Determines whether Windows Update Setup runs interactively on the employee’s computer.</p>
<ul>
<li><p><strong>0</strong> – Run Windows Update Setup interactively.</p></li>
<li><p><strong>1</strong> – Run Windows Update Setup non-interactively, but show progress and error messages to the employee.</p>
<div class="alert">
<strong>Note</strong>  
<p>This only appears for the <strong>Internal</strong> version of the IEAK 11.</p>
</div>
<div>
 
</div></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>StealthInstall</p></td>
<td align="left"><p><em>0</em> | <em>1</em></p></td>
<td align="left"><p>Determines whether Windows Update Setup shows error messages and dialog boxes.</p>
<ul>
<li><p><strong>0</strong> – Run Windows Update Setup showing progress and error messages to the employee.</p></li>
<li><p><strong>1</strong> – Run Windows Update Setup without showing error messages to the employee.</p>
<div class="alert">
<strong>Note</strong>  
<p>This only appears for the <strong>Internal</strong> version of the IEAK 11.</p>
</div>
<div>
 
</div></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Toolbar Bitmap</p></td>
<td align="left"><p><em>path_and_file_name</em></p></td>
<td align="left"><p>Full path to the icon bitmap that appears on the browser toolbar.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Type</p></td>
<td align="left"><p><em>1</em> | <em>2</em></p></td>
<td align="left"><p>The version of IEAK 11 being used.</p>
<ul>
<li><p><strong>1</strong> – Internal version. For use on a corporate intranet or network.</p></li>
<li><p><strong>2</strong> – External version. For use by ISPs, ICPs, or Developers.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>User Agent</p></td>
<td align="left"><p><em>string</em></p></td>
<td align="left"><p>String to be appended to the default User Agent string.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Version</p></td>
<td align="left"><p><em>string</em></p></td>
<td align="left"><p>Version number of the browser. For example, 6,0,0,1.</p></td>
</tr>
<tr class="even">
<td align="left"><p>WebIntegrated</p></td>
<td align="left"><p><em>0</em> | <em>1</em></p></td>
<td align="left"><p>Determines whether the IE 4.x integrated shell is included in this package.</p>
<ul>
<li><p><strong>0</strong> – Don’t include the 4.x integrated shell in your custom package.</p></li>
<li><p><strong>1</strong> – Include the 4.x integrated shell in your custom package.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Win32DownloadSite</p></td>
<td align="left"><p><em>url</em></p></td>
<td align="left"><p>URL from where your employees will download the IEsetup.exe file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Window_Title</p></td>
<td align="left"><p><em>string</em></p></td>
<td align="left"><p>Customized window title for IE.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Window_Title_CN</p></td>
<td align="left"><p><em>string</em></p></td>
<td align="left"><p>Company name to be appended to the window title.</p></td>
</tr>
<tr class="even">
<td align="left"><p>WizardVersion</p></td>
<td align="left"><p><em>string</em></p></td>
<td align="left"><p>Version of the IEAK that created the .ins file. For example, 6.00.0707.2800.</p></td>
</tr>
</tbody>
</table>

 

 

 



