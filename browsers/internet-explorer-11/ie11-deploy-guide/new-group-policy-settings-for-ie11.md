---
Description: New group policy settings for Internet Explorer 11
MS-HAID: 'p\_ie11deploy.new\_group\_policy\_settings\_for\_internet\_explorer\_11'
MSHAttr: 'PreferredLib:/library'
title: New group policy settings for Internet Explorer 11 (Internet Explorer 11 for IT Pros)
---

# New group policy settings for Internet Explorer 11


Internet Explorer 11 gives you some new Group Policy settings to help you manage your company's web browser configurations, including:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Policy</th>
<th align="left">Category path</th>
<th align="left">Supported on</th>
<th align="left">Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Turn off loading websites and content in the background to optimize performance</p></td>
<td align="left"><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page</p></td>
<td align="left"><p>IE11</p></td>
<td align="left"><p>This policy setting determines whether Internet Explorer preemptively loads websites and content in the background, speeding up performance such that when the user clicks a hyperlink, the background page seamlessly switches into view.</p>
<p>If you enable this policy setting, IE doesn't load any websites or content in the background.</p>
<p>If you disable this policy setting, IE preemptively loads websites and content in the background.</p>
<p>If you don’t configure this policy setting, users can turn this behavior on or off, using IE settings. This feature is turned on by default.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Allow Microsoft services to provide enhanced suggestions as the user types in the Address bar</p></td>
<td align="left"><p>Administrative Templates\Windows Components\Internet Explorer</p></td>
<td align="left"><p>IE11</p></td>
<td align="left"><p>This policy setting allows IE to provide enhanced suggestions as the user types in the Address bar. To provide enhanced suggestions, the user’s keystrokes are sent to Microsoft through Microsoft services.</p>
<p>If you enable this policy setting, users receive enhanced suggestions while typing in the Address bar. In addition, users won’t be able to change the Suggestions setting on the Settings charm.</p>
<p>If you disable this policy setting, users won’t receive enhanced suggestions while typing in the Address bar. In addition, users won’t be able to change the Suggestions setting on the Settings charm.</p>
<p>If you don’t configure this policy setting, users can change the Suggestions setting on the Settings charm.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Turn off phone number detection</p></td>
<td align="left"><p>Administrative Templates\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Browsing</p></td>
<td align="left"><p>IE11</p></td>
<td align="left"><p>This policy setting determines whether phone numbers are recognized and turned into hyperlinks, which can be used to invoke the default phone application on the system.</p>
<p>If you enable this policy setting, phone number detection is turned off. Users won’t be able to modify this setting.</p>
<p>If you disable this policy setting, phone number detection is turned on. Users won’t be able to modify this setting.</p>
<p>If you don't configure this policy setting, users can turn this behavior on or off, using IE settings. The default is on.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Allow IE to use the HTTP2 network protocol</p></td>
<td align="left"><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page</p></td>
<td align="left"><p>IE11 on Windows 8.1</p></td>
<td align="left"><p>This policy setting determines whether IE uses the HTTP2 network protocol. HTTP2 works with HTTP requests to optimize the latency of network requests through compression, multiplexing, and prioritization.</p>
<p>If you enable this policy setting, IE uses the HTTP2 network protocol.</p>
<p>If you disable this policy setting, IE won't use the HTTP2 network protocol.</p>
<p>If you don't configure this policy setting, users can turn this behavior on or off, using IE Advanced Internet Options settings. The default is on.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Don't run antimalware programs against ActiveX controls</p>
<p>(Internet, Restricted Zones)</p></td>
<td align="left"><ul>
<li><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Internet Zone</p></li>
<li><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Internet Zone</p></li>
<li><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Restricted Sites Zone</p></li>
<li><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Restricted Sites Zone</p></li>
</ul></td>
<td align="left"><p>IE11</p></td>
<td align="left"><p>This policy setting determines whether IE runs antimalware programs against ActiveX controls, to check if they're safe to load on pages.</p>
<p>If you enable this policy setting, IE won't check with your antimalware program to see if it's safe to create an instance of the ActiveX control.</p>
<p>If you disable this policy setting, IE always checks with your antimalware program to see if it's safe to create an instance of the ActiveX control.</p>
<p>If you don't configure this policy setting, IE always checks with your antimalware program to see if it's safe to create an instance of the ActiveX control. Users can turn this behavior on or off, using IE Security settings.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Don't run antimalware programs against ActiveX controls</p>
<p>(Intranet, Trusted, Local Machine Zones)</p></td>
<td align="left"><ul>
<li><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Intranet Zone</p></li>
<li><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Intranet Zone</p></li>
<li><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Trusted Sites Zone</p></li>
<li><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Trusted Sites Zone</p></li>
<li><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Local Machine Zone</p></li>
<li><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Local Machine Zone</p></li>
</ul></td>
<td align="left"><p>IE11</p></td>
<td align="left"><p>This policy setting determines whether IE runs antimalware programs against ActiveX controls, to check if they're safe to load on pages.</p>
<p>If you enable this policy setting, IE won't check with your antimalware program to see if it's safe to create an instance of the ActiveX control.</p>
<p>If you disable this policy setting, IE always checks with your antimalware program to see if it's safe to create an instance of the ActiveX control.</p>
<p>If you don't configure this policy setting, IE won't check with your antimalware program to see if it's safe to create an instance of the ActiveX control. Users can turn this behavior on or off, using IE Security settings.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Turn on 64-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows</p></td>
<td align="left"><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page</p></td>
<td align="left"><p>IE11</p></td>
<td align="left"><p>This policy setting determines whether IE11 uses 64-bit processes (for greater security) or 32-bit processes (for greater compatibility) when running in Enhanced Protected Mode on 64-bit versions of Windows.</p>
<p>Important: Some ActiveX controls and toolbars may not be available when 64-bit processes are used.</p>
<p>If you enable this policy setting, IE11 will use 64-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows.</p>
<p>If you disable this policy setting, IE11 will use 32-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows.</p>
<p>If you don't configure this policy setting, users can turn this feature on or off using IE settings. This feature is turned off by default.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Turn off sending UTF-8 query strings for URLs</p></td>
<td align="left"><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page</p></td>
<td align="left"><p>IE11</p></td>
<td align="left"><p>This policy setting determines whether IE uses 8-bit Unicode Transformation Format (UTF-8) to encode query strings in URLs before sending them to servers or to proxy servers.</p>
<p>If you enable this policy setting, you must specify when to use UTF-8 to encode query strings:</p>
<p><strong>0)</strong> Never encode query strings.</p>
<p><strong>1)</strong> Only encode query strings for URLs that aren't in the Intranet zone.</p>
<p><strong>2)</strong> Only encode query strings for URLs that are in the Intranet zone.</p>
<p><strong>3)</strong> Always encode query strings.</p>
<p>If you disable or don't configure this policy setting, users can turn this behavior on or off, using IE Advanced Options settings. The default is to encode all query strings in UTF-8.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Turn off sending URL path as UTF-8</p></td>
<td align="left"><p>User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Settings\URL Encoding</p></td>
<td align="left"><p>At least Windows Internet Explorer 7</p></td>
<td align="left"><p>This policy setting determines whether to let IE send the path portion of a URL using the UTF-8 standard. This standard defines characters so they're readable in any language and lets you exchange Internet addresses (URLs) with characters included in any language.</p>
<p>If you enable this policy setting, UTF-8 is not allowed. Users won't be able to change this setting.</p>
<p>If you disable this policy setting, UTF-8 is allowed. Users won't be able to change this setting.</p>
<p>If you don't configure this policy setting, users can turn this behavior on or off.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Turn off the flip ahead with page prediction feature</p></td>
<td align="left"><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page</p></td>
<td align="left"><p>At least Internet Explorer 10 on Windows 8</p></td>
<td align="left"><p>This policy setting determines whether a user can swipe across a screen or click Forward to go to the next pre-loaded page of a website.</p>
<p>Microsoft collects your browsing history to improve how flip ahead with page prediction works. This feature isn’t available for Internet Explorer for the desktop.</p>
<p>If you enable this policy setting, flip ahead with page prediction is turned off and the next webpage isn’t loaded into the background.</p>
<p>If you disable this policy setting, flip ahead with page prediction is turned on and the next webpage is loaded into the background.</p>
<p>If you don’t configure this setting, users can turn this behavior on or off, using the Settings charm.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Prevent deleting ActiveX Filtering, Tracking Protection and Do Not Track data</p></td>
<td align="left"><p>Administrative Templates\Windows Components\Internet Explorer\Delete Browsing History</p></td>
<td align="left"><p>At least Windows Internet Explorer 9</p></td>
<td align="left"><p>In Internet Explorer 9 and Internet Explorer 10:</p>
<p>This policy setting prevents users from deleting ActiveX Filtering and Tracking Protection data, which includes the list of websites for which the user has chosen to disable ActiveX Filtering or Tracking Protection. In addition, Tracking Protection data is also collected if users turn on the Personalized Tracking Protection List, which blocks third-party items while the user is browsing.</p>
<p>With IE11:</p>
<p>This policy setting prevents users from deleting ActiveX Filtering, Tracking Protection data, and Do Not Track exceptions stored for visited website.</p>
<p>This feature is available in the Delete Browsing History dialog box.</p>
<p>If you enable this policy setting, ActiveX Filtering, Tracking Protection and Do Not Track data is preserved when the user clicks Delete.</p>
<p>If you disable this policy setting, ActiveX Filtering, Tracking Protection and Do Not Track data is deleted when the user clicks Delete.</p>
<p>If you don’t configure this policy setting, users can turn this feature on and off, determining whether to delete ActiveX Filtering, Tracking Protection, and Do Not Track data when clicking Delete.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Always send Do Not Track header</p></td>
<td align="left"><p>Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page</p></td>
<td align="left"><p>At least Internet Explorer 10</p></td>
<td align="left"><p>This policy setting allows you to configure how IE sends the Do Not Track (DNT) header.</p>
<p>If you enable this policy setting, IE sends a DNT:1 header with all HTTP and HTTPS requests. The DNT:1 header signals to the servers not to track the user.</p>
<p>For Internet Explorer 9 and 10:</p>
<p>If you disable this policy setting, IE only sends the Do Not Track header if a Tracking Protection List is enabled or inPrivate Browsing mode is used.</p>
<p>At least IE11:</p>
<p>If you disable this policy setting, IE only sends the Do Not Track header if inPrivate Browsing mode is used.</p>
<p>If you don't configure the policy setting, users can select the Always send Do Not Track header option on the Advanced tab of the Internet Options dialog box. By selecting this option, IE sends a DNT:1 header with all HTTP and HTTPS requests; unless the user grants a site-specific exception, in which case IE sends a DNT:0 header. By default, this option is enabled.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Let users turn on and use Enterprise Mode from the Tools menu</p></td>
<td align="left"><p>Administrative Templates\Windows Components\Internet Explorer</p></td>
<td align="left"><p>IE11</p></td>
<td align="left"><p>This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>
<p>If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don’t specify a report location, Enterprise Mode will still be available to your users, but you won’t get any reports.</p>
<p>If you disable or don’t configure this policy setting, the menu option won’t appear and users won’t be able to turn on Enterprise Mode locally.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Use the Enterprise Mode IE website list</p></td>
<td align="left"><p>Administrative Templates\Windows Components\Internet Explorer</p></td>
<td align="left"><p>IE11</p></td>
<td align="left"><p>This policy setting lets you specify where to find the list of websites you want opened using Enterprise Mode, instead of Standard mode, because of compatibility issues. Users can’t edit this list.</p>
<p>If you enable this policy setting, IE downloads the website list from HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\Main\EnterpriseMode, opening all included websites using Enterprise Mode. We recommend storing and downloading your list from a secure web server (https://), to help protect against data tampering.</p>
<p>If you disable or don’t configure this policy setting, IE opens all websites using Standard mode.</p></td>
</tr>
</tbody>
</table>

 

## Removed Group Policy settings


IE11 no longer supports these Group Policy settings:

-   Turn on Internet Explorer 7 Standards Mode

-   Turn off Compatibility View button

-   Turn off Quick Tabs functionality

-   Turn off the quick pick menu

-   Use large icons for command buttons

## Viewing your policy settings


After you've finished updating and deploying your Group Policy, you can use the Resultant Set of Policy (RSoP) snap-in to view your settings.

![](../common/wedge.gif)**To use the RSoP snap-in**

1.  Open and run the Resultant Set of Policy (RSoP) wizard, specifying the information you want to see.

2.  Open your wizard results in the Group Policy Management Console (GPMC).

    For complete instructions about how to add, open, and use RSoP, see [Use the RSoP Snap-in](http://go.microsoft.com/fwlink/p/?LinkId=395201)

 

 



