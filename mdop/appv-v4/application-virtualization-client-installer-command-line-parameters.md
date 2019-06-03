---
title: Application Virtualization Client Installer Command-Line Parameters
description: Application Virtualization Client Installer Command-Line Parameters
author: dansimp
ms.assetid: 508fa404-52a5-4919-8788-2a3dfb00639b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Application Virtualization Client Installer Command-Line Parameters


The following table lists all available Microsoft Application Virtualization Client installer command-line parameters, their values, and a brief description of each parameter. Parameters are case-sensitive and must be entered as all-uppercase letters. All parameter values must be enclosed in double quotes.

**Note**  
-   For App-V version 4.6, command-line parameters cannot be used during a client upgrade.

-   The *SWICACHESIZE* and *MINFREESPACEMB* parameters cannot be combined on the command line. If both are used, the *SWICACHESIZE* parameter will be ignored.

 

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Values</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>ALLOWINDEPENDENTFILESTREAMING</em></p></td>
<td align="left"><p>TRUE</p>
<p>FALSE</p></td>
<td align="left"><p>Indicates whether streaming from file will be enabled regardless of how the client has been configured with the <em>APPLICATIONSOURCEROOT</em> parameter. If set to FALSE, the transport will not enable streaming from files even if the OSD HREF or the <em>APPLICATIONSOURCEROOT</em> parameter contains a file path.</p>
<p>Possible values:</p>
<ul>
<li><p>TRUE—Manually deployed application may be loaded from disk.</p></li>
<li><p>FALSE—All applications must come from source streaming server.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p><em>APPLICATIONSOURCEROOT</em></p></td>
<td align="left"><p>RTSP:// <em>URL</em> (for dynamic package delivery)</p>
<p>File:// <em>URL</em> or <em>UNC</em> (for load from file package delivery)</p></td>
<td align="left"><p>To enable an administrator or an electronic software distribution system to ensure that application loading is performed in compliance with the topology management scheme, allows an override of the OSD CODEBASE for the application HREF element (the source location). If the value is “”, which is the default value, the existing OSD file settings are used.</p>
<p>A URL has several parts:</p>
<p>&lt;protocol&gt;://&lt;server&gt;:&lt;port&gt;/&lt;path&gt;/&lt;?query&gt;&lt;#fragment&gt;</p>
<p>A UNC path has three parts:</p>
<p>\\&lt;computername&gt;\&lt;share folder&gt;\&lt;resource&gt;</p>
<p>If the <em>APPLICATIONSOURCEROOT</em> parameter is specified on a client, the client will break the URL or UNC path from an OSD file into its constituent parts and replace the OSD sections with the corresponding <em>APPLICATIONSOURCEROOT</em> sections.</p>
<div class="alert">
<strong>Important</strong>  
<p>Be sure to use the correct format when using file:// with a UNC path. The correct format is file://\\&lt;server&gt;\&lt;share&gt;.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p><em>ICONSOURCEROOT</em></p></td>
<td align="left"><p><em>UNC</em></p>
<p>HTTP://<em>URL</em> or HTTPS://<em>URL</em></p></td>
<td align="left"><p>Enables an administrator to specify a source location for icon retrieval for a sequenced application package during publication. Icon source roots support UNC paths and URLs (HTTP or HTTPS). If the value is “”, which is the default value, the existing OSD file settings are used.</p>
<p>A URL has several parts:</p>
<p>&lt;protocol&gt;://&lt;server&gt;:&lt;port&gt;/&lt;path&gt;/&lt;?query&gt;&lt;#fragment&gt;</p>
<p>A UNC path has three parts:</p>
<p>\\&lt;computername&gt;\&lt;share folder&gt;\&lt;resource&gt;</p>
<div class="alert">
<strong>Important</strong>  
<p>Be sure to use the correct format when using a UNC path. Acceptable formats are \\&lt;server&gt;\&lt;share&gt; or &lt;drive letter&gt;:\&lt;folder&gt;.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p><em>OSDSOURCEROOT</em></p></td>
<td align="left"><p><em>UNC</em></p>
<p>HTTP://<em>URL</em> or HTTPS://<em>URL</em></p></td>
<td align="left"><p>Enables an administrator to specify a source location for OSD file retrieval for an application package during publication. OSD source roots support UNC paths and URLs (HTTP or HTTPS). If the value is “”, which is the default value, the existing OSD file settings are used.</p>
<p>A URL has several parts:</p>
<p>&lt;protocol&gt;://&lt;server&gt;:&lt;port&gt;/&lt;path&gt;/&lt;?query&gt;&lt;#fragment&gt;</p>
<p>A UNC path has three parts:</p>
<p>\\&lt;computername&gt;\&lt;share folder&gt;\&lt;resource&gt;</p>
<div class="alert">
<strong>Important</strong>  
<p>Be sure to use the correct format when using a UNC path. Acceptable formats are \\&lt;server&gt;\&lt;share&gt; or &lt;drive letter&gt;:\&lt;folder&gt;.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p><em>AUTOLOADONLOGIN</em></p>
<p><em>AUTOLOADONLAUNCH</em></p>
<p><em>AUTOLOADONREFRESH</em></p></td>
<td align="left"><p>[0|1]</p></td>
<td align="left"><p>The AutoLoad triggers that define the events that initiate auto-loading of applications. AutoLoad implicitly uses background streaming to enable the application to be fully loaded into cache.</p>
<p>The primary feature block will be loaded as quickly as possible. Remaining feature blocks will be loaded in the background to enable foreground operations, such as user interaction with applications, to take priority and provide optimal performance.</p>
<div class="alert">
<strong>Note</strong>  
<p>The <em>AUTOLOADTARGET</em> parameter determines which applications are auto-loaded. By default, packages that have been used are auto-loaded unless <em>AUTOLOADTARGET</em> is set.</p>
</div>
<div>
 
</div>
<p>Each parameter affects loading behavior as follows:</p>
<ul>
<li><p><em>AUTOLOADONLOGIN</em>—Loading starts when the user logs in.</p></li>
<li><p><em>AUTOLOADONLAUNCH</em>—Loading starts when the user starts an application.</p></li>
<li><p><em>AUTOLOADONREFRESH</em>—Loading starts when a publishing refresh occurs.</p></li>
</ul>
<p>The three values can be combined. In the following example, AutoLoad triggers are enabled both at user login and when publishing refresh occurs:</p>
<p><em>AUTOLOADONLOGIN AUTOLOADONREFRESH</em></p>
<div class="alert">
<strong>Note</strong>  
<p>If the client is configured with these values at first install, Autoload will not be triggered until the next time the user logs off and logs back on.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p><em>AUTOLOADTARGET</em></p></td>
<td align="left"><p>NONE</p>
<p>ALL</p>
<p>PREVUSED</p></td>
<td align="left"><p>Indicates what will be auto-loaded when any given AutoLoad triggers occur.</p>
<p>Possible values:</p>
<ul>
<li><p>NONE—No auto-loading, regardless of what triggers might be set.</p></li>
<li><p>ALL—If any AutoLoad trigger is enabled, all packages are automatically loaded, whether or not they have ever been launched.</p>
<div class="alert">
<strong>Note</strong>  
<p>This setting is configured for individual packages by using the SFTMIME <strong>ADD PACKAGE</strong> and <strong>CONFIGURE PACKAGE</strong> commands. For more information about these commands, see [SFTMIME Command Reference](sftmime--command-reference.md).</p>
</div>
<div>
 
</div></li>
<li><p>PREVUSED—If any AutoLoad trigger is enabled, load only the packages where at least one application in the package has been previously used (that is, launched or precached).</p></li>
</ul>
<div class="alert">
<strong>Note</strong>  
<p>When you install the App-V client to use a read-only cache, (for example, as a VDI server implementation), you must set the <em>AUTOLOADTARGET</em> parameter to NONE to prevent the client from trying to update applications in the read-only cache.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p><em>DOTIMEOUTMINUTES</em></p></td>
<td align="left"><p>29600 (default)</p>
<p>1–1439998560 minutes (range)</p></td>
<td align="left"><p>Indicates how many minutes an application may be used in disconnected operation.</p></td>
</tr>
<tr class="even">
<td align="left"><p><em>INSTALLDIR</em></p></td>
<td align="left"><p>&lt;pathname&gt;</p></td>
<td align="left"><p>Specifies the installation directory of the App-V Client.</p>
<p>Example: INSTALLDIR=&quot;C:\Program Files\Microsoft Application Virtualization Client&quot;</p></td>
</tr>
<tr class="odd">
<td align="left"><p><em>OPTIN</em></p></td>
<td align="left"><p>“TRUE”</p>
<p>“”</p></td>
<td align="left"><p>Microsoft Application Virtualization Client components will be upgradable through Microsoft Update when updates are made available to the general public. The Microsoft Update Agent installed on Windows operating systems requires a user to explicitly opt-in to use the service. This opt-in is required only one time for all applications on the device. If you have already opted into Microsoft Update, the Microsoft Application Virtualization components on the device will automatically take advantage of the service.</p>
<p>For command-line installation, use of Microsoft Update is by default opt-out (unless a previous application already enabled the device to be opted in) due to the requirement for manually opting into Microsoft Update. Therefore, opting in must be explicit for command-line installations. Setting the command-line parameter <em>OPTIN</em> to TRUE forces the Microsoft Update opt-in to be set.</p></td>
</tr>
<tr class="even">
<td align="left"><p><em>REQUIREAUTHORIZATIONIFCACHED</em></p></td>
<td align="left"><p>TRUE</p>
<p>FALSE</p></td>
<td align="left"><p>Indicates whether authorization is always required, whether or not an application is already in cache.</p>
<p>Possible values:</p>
<ul>
<li><p>TRUE—Application always must be authorized at startup. For RTSP streamed applications, the user authorization token is sent to the server for authorization. For file-based applications, file ACLs dictate whether a user may access the application.</p></li>
<li><p>FALSE—Always try to connect to the server. If a connection to the server cannot be established, the client still allows the user to launch an application that has previously been loaded into cache.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p><em>SWICACHESIZE</em></p></td>
<td align="left"><p>Cache size in MB</p></td>
<td align="left"><p>Specifies the size in megabytes of the client cache. The default size is 4096 MB, and the maximum size is 1,048,576 MB (1 TB). The system checks for the available space at installation time, but the space is not reserved.</p>
<p>Example: <strong>SWICACHESIZE=&quot;1024&quot;</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><em>SWIPUBSVRDISPLAY</em></p></td>
<td align="left"><p>Display name</p></td>
<td align="left"><p>Specifies the displayed name of the publishing server; required when <em>SWIPUBSVRHOST</em> is used.</p>
<p>Example: <strong>SWIPUBSVRDISPLAY=&quot;PRODUCTION ENVIRONMENT&quot;</strong></p></td>
</tr>
<tr class="odd">
<td align="left"><p><em>SWIPUBSVRTYPE</em></p></td>
<td align="left"><p>[HTTP|RTSP]</p></td>
<td align="left"><p>Specifies the publishing server type. The default server type is Application Virtualization Server. The <strong>/secure</strong> switch is not case sensitive.</p>
<ul>
<li><p>HTTP—Standard HTTP Server</p></li>
<li><p>HTTP <strong>/secure</strong>—Enhanced Security HTTP Server</p></li>
<li><p>RTSP—Application Virtualization Server</p></li>
<li><p>RTSP <strong>/secure</strong>—Enhanced Security Application Virtualization Server</p></li>
</ul>
<p>Example: <strong>SWIPUBSVRTYPE=&quot;HTTP /secure&quot;</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><em>SWIPUBSVRHOST</em></p></td>
<td align="left"><p>IP address|host name</p></td>
<td align="left"><p>Specifies either the IP address of the Application Virtualization Server or a host name of the server that resolves into the server's IP address; required when <em>SWIPUBSVRDISPLAY</em> is used.</p>
<p>Example: <strong>SWIPUBSVRHOST=&quot;SERVER01&quot;</strong></p></td>
</tr>
<tr class="odd">
<td align="left"><p><em>SWIPUBSVRPORT</em></p></td>
<td align="left"><p>Port number</p></td>
<td align="left"><p>Specifies the logical port that is used by this Application Virtualization Server to listen for requests from the client (default = 554).</p>
<ul>
<li><p>Standard HTTP server—Default = 80.</p></li>
<li><p>Enhanced Security HTTP Server—Default = 443.</p></li>
<li><p>Application Virtualization Server—Default = 554.</p></li>
<li><p>Enhanced Security Application Virtualization Server—Default = 322.</p></li>
</ul>
<p>Example: <strong>SWIPUBSVRPORT=&quot;443&quot;</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><em>SWIPUBSVRPATH</em></p></td>
<td align="left"><p>Path name</p></td>
<td align="left"><p>Specifies the location on the publishing server of the file that defines file type associations (default = /); required when the <em>SWIPUBSVRTYPE</em> parameter value is HTTP.</p>
<p>Example: <strong>SWIPUBSVRPATH=&quot;/AppVirt/appsntypes.xml&quot;</strong></p></td>
</tr>
<tr class="odd">
<td align="left"><p><em>SWIPUBSVRREFRESH</em></p></td>
<td align="left"><p>[ON|OFF]</p></td>
<td align="left"><p>Specifies whether the client automatically queries the publishing server for file type associations and applications when a user logs in to the client (default = ON).</p>
<p>Example: <strong>SWIPUBSVRREFRESH=&quot;off&quot;</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><em>SWIGLOBALDATA</em></p></td>
<td align="left"><p>Global data directory</p></td>
<td align="left"><p>Specifies the directory where data will be stored that is not specific to particular users (default = C:\Documents and Settings\All Users\Documents).</p>
<p>Example: <strong>SWIGLOBALDATA=&quot;D:\Microsoft Application Virtualization Client\Global&quot;</strong></p></td>
</tr>
<tr class="odd">
<td align="left"><p><em>SWIUSERDATA</em></p></td>
<td align="left"><p>User data directory</p></td>
<td align="left"><p>Specifies the directory where data will be stored that is specific to particular users (default = %APPDATA%).</p>
<p>Example: <strong>SWIUSERDATA=&quot;H:\Windows\Microsoft Application Virtualization Client&quot;</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><em>SWIFSDRIVE</em></p></td>
<td align="left"><p>Preferred drive letter</p></td>
<td align="left"><p>Corresponds to the drive letter that you selected for the virtual drive.</p>
<p>Example: <strong>SWIFSDRIVE=&quot;S&quot;</strong></p></td>
</tr>
<tr class="odd">
<td align="left"><p><em>SYSTEMEVENTLOGLEVEL</em></p></td>
<td align="left"><p>0–4</p></td>
<td align="left"><p>Indicates the logging level at which log messages are written to the NT event Log. The value indicates a threshold of what is logged—that is, everything equal to or less than that value is logged. For example, a value of 0x3 (Warning) indicates that Warnings (0x3), Errors (0x2), and Critical Errors (0x1) are logged.</p>
<p>Possible values:</p>
<ul>
<li><p>0 == None</p></li>
<li><p>1 == Critical</p></li>
<li><p>2 == Error</p></li>
<li><p>3 == Warning</p></li>
<li><p>4 == Information</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p><em>MINFREESPACEMB</em></p></td>
<td align="left"><p>In MB</p></td>
<td align="left"><p>Specifies the amount of free space (in megabytes) that must be available on the host before the cache size can increase. The following example would configure the client to ensure at least 5 GB of free space on the disk before allowing the size of the cache to increase. The default is 5000 MB of free space available on disk at installation time.</p>
<p>Example: <strong>MINFREESPACEMB =&quot;5000&quot; (5 GB)</strong></p></td>
</tr>
<tr class="odd">
<td align="left"><p><em>KEEPCURRENTSETTINGS</em></p></td>
<td align="left"><p>[0|1]</p></td>
<td align="left"><p>Used when you have applied registry settings prior to deploying a client—for example, by using Group Policy. When a client is deployed, set this parameter to a value of 1 so that it will not overwrite the registry settings.</p>
<div class="alert">
<strong>Important</strong>  
<p>If set to a value of 1, the following client installer command-line parameters are ignored:</p>
<p><strong>SWICACHESIZE</strong>, <strong>MINFREESPACEMB</strong>, <strong>ALLOWINDEPENDENTFILESTREAMING</strong>, <strong>APPLICATIONSOURCEROOT</strong>, <strong>ICONSOURCEROOT</strong>, <strong>OSDSOURCEROOT</strong>, <strong>SYSTEMEVENTLOGLEVEL</strong>, <strong>SWIGLOBALDATA</strong>, <strong>DOTIMEOUTMINUTES</strong>, <strong>SWIFSDRIVE</strong>, <strong>AUTOLOADTARGET</strong>, <strong>AUTOLOADTRIGGERS</strong>, and <strong>SWIUSERDATA</strong>.</p>
<p>For further information about setting these values after installation, see “How to Configure the App-V Client Registry Settings by Using the Command Line” in the Application Virtualization (App-V) Operations Guide ([https://go.microsoft.com/fwlink/?LinkId=122939](https://go.microsoft.com/fwlink/?LinkId=122939)).</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

## Related topics


[How to Manually Install the Application Virtualization Client](how-to-manually-install-the-application-virtualization-client.md)

[How to Upgrade the Application Virtualization Client](how-to-upgrade-the-application-virtualization-client.md)

[SFTMIME Command Reference](sftmime--command-reference.md)

 

 





