---
title: LoadState Syntax (Windows 10)
description: LoadState Syntax
ms.assetid: 53d2143b-cbe9-4cfc-8506-36e9d429f6d4
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# LoadState Syntax


This topic discusses the **LoadState** command syntax and options.

## In This Topic


[Before You Begin](#before)

[Syntax](#bkmk-s)

[Storage Options](#bkmk-st)

[Migration Rule Options](#bkmk-mig)

[Monitoring Options](#bkmk-mon)

[User Options](#bkmk-user)

[Incompatible Command-Line Options](#bkmk-cloi)

## <a href="" id="before"></a>Before You Begin


Before you run the **LoadState** command, note the following:

-   To ensure that all operating system settings migrate, we recommend that you run the **LoadState** commands in administrator mode from an account with administrative credentials.

-   For information about software requirements for running the **LoadState** command, see [USMT Requirements](usmt-requirements.md).

-   You should log off after you run the **LoadState** command. Some settings (for example, fonts, wallpaper, and screensaver settings) will not take effect until the next time the user logs in.

-   Unless otherwise specified, you can use each option only once when running a tool on the command line.

-   **LoadState** does not require domain controller access to apply domain profiles. This functionality is available without any additional configuration. It is not necessary for the source computer to have had domain controller access when the user profile was gathered using **ScanState**. However, domain profiles are inaccessible until the destination computer is joined to the domain.

-   The [Incompatible Command-Line Options](#bkmk-cloi) table lists which options you can use together and which command-line options are incompatible.

## <a href="" id="bkmk-s"></a>Syntax


This section explains the syntax and usage of the command-line options available when you use the **LoadState** command. The options can be specified in any order. If the option contains a parameter, you can specify either a colon or space separator.

The **LoadState** command's syntax is:

loadstate *StorePath* \[/i:\[*Path*\\\]*FileName*\] \[/v:*VerbosityLevel*\] \[/nocompress\] \[/decrypt /key:*KeyString*|/keyfile:\[Path\\\]*FileName*\] \[/l:\[*Path*\\\]*FileName*\] \[/progress:\[*Path*\\\]*FileName*\] \[/r:*TimesToRetry*\] \[/w:*SecondsToWait*\] \[/c\] \[/all\] \[/ui:\[*DomainName*|*ComputerName*\\\]*UserName*\] \[/ue:\[\[*DomainName*|*ComputerName*\\\]*UserName*\] \[/uel:*NumberOfDays*|*YYYY/MM/DD*|0\] \[/md:*OldDomain*:*NewDomain*\] \[/mu:*OldDomain*\\*OldUserName*:\[*NewDomain*\\\]*NewUserName*\] \[/lac:\[*Password*\]\] \[/lae\] \[/config:\[*Path*\\\]*FileName*\] \[/?|help\]

For example, to decrypt the store and migrate the files and settings to a computer running Windows 7 type the following on the command line:

`loadstate \\server\share\migration\mystore /i:migapp.xml /i:migdocs.xml /v:13 /decrypt /key:"mykey"`

## <a href="" id="bkmk-st"></a>Storage Options


USMT provides the following options that you can use to specify how and where the migrated data is stored.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-Line Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>StorePath</em></p></td>
<td align="left"><p>Indicates the folder where the files and settings data are stored. You must specify <em>StorePath</em> when using the <strong>LoadState</strong> command. You cannot specify more than one <em>StorePath</em>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/decrypt</strong> <strong>/key</strong>:<em>KeyString</em></p>
<p>or</p>
<p><strong>/decrypt</strong> <strong>/key</strong>:&quot;<em>Key String</em>&quot;</p>
<p>or</p>
<p><strong>/decrypt</strong> <strong>/keyfile</strong>:[<em>Path&lt;/em&gt;]<em>FileName</em></p></td>
<td align="left"><p>Decrypts the store with the specified key. With this option, you will need to specify the encryption key in one of the following ways:</p>
<ul>
<li><p><strong>/key:</strong><em>KeyString</em> specifies the encryption key. If there is a space in <em>KeyString</em>, you must surround the argument with quotation marks.</p></li>
<li><p><strong>/keyfile:</strong><em>FilePathAndName</em> specifies a text (.txt) file that contains the encryption key</p></li>
</ul>
<p><em>KeyString</em> cannot exceed 256 characters.</p>
<p>The <strong>/key</strong> and <strong>/keyfile</strong> options cannot be used on the same command line.</p>
<p>The <strong>/decrypt</strong> and <strong>/nocompress</strong> options cannot be used on the same command line.</p>
<div class="alert">
<strong>Important</strong><br/><p>Use caution with this option, because anyone who has access to the <strong>LoadState</strong> command-line script will also have access to the encryption key.</p>
</div>
<div>

</div>
<p>For example:</p>
<p><code>loadstate /i:migapp.xml /i:migdocs.xml \server\share\migration\mystore /decrypt /key:mykey</code></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/decrypt:</strong><em>&quot;encryption strength&quot;</em></p></td>
<td align="left"><p>The <strong>/decrypt</strong> option accepts a command-line parameter to define the encryption strength specified for the migration store encryption. For more information about supported encryption algorithms, see <a href="usmt-migration-store-encryption.md" data-raw-source="[Migration Store Encryption](usmt-migration-store-encryption.md)">Migration Store Encryption</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/hardlink</strong></p></td>
<td align="left"><p>Enables user-state data to be restored from a hard-link migration store. The <strong>/nocompress</strong> parameter must be specified with <strong>/hardlink</strong> option.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/nocompress</strong></p></td>
<td align="left"><p>Specifies that the store is not compressed. You should only use this option in testing environments. We recommend that you use a compressed store during your actual migration. This option cannot be used with the <strong>/decrypt</strong> option.</p>
<p>For example:</p>
<p><code>loadstate /i:migapp.xml /i:migdocs.xml \server\share\migration\mystore /nocompress</code></p></td>
</tr>
</tbody>
</table>



## <a href="" id="bkmk-mig"></a>Migration Rule Options


USMT provides the following options to specify what files you want to migrate.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-Line Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/i</strong>:[<em>Path</em>]<em>FileName</em></p></td>
<td align="left"><p><strong>(include)</strong></p>
<p>Specifies an .xml file that contains rules that define what state to migrate. You can specify this option multiple times to include all of your .xml files (MigApp.xml, MigSys.xml, MigDocs.xml and any custom .xml files that you create). <em>Path</em> can be either a relative or full path. If you do not specify the <em>Path</em> variable, then <em>FileName</em> must be located in the current directory.</p>
<p>For more information about which files to specify, see the &quot;XML files&quot; section of the <a href="usmt-faq.md" data-raw-source="[Frequently Asked Questions](usmt-faq.md)">Frequently Asked Questions</a> topic.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/config:</strong>[<em>Path</em>]<em>FileName</em></p></td>
<td align="left"><p>Specifies the Config.xml file that the <strong>LoadState</strong> command should use. You cannot specify this option more than once on the command line. <em>Path</em> can be either a relative or full path. If you do not specify the <em>Path</em> variable, then the <em>FileName</em> must be located in the current directory.</p>
<p>This example migrates the files and settings based on the rules in the Config.xml, MigDocs.xml, and MigApp.xml files:</p>
<p><code>loadstate \server\share\migration\mystore /config:config.xml /i:migdocs.xml /i:migapp.xml /v:5 /l:loadstate.log</code></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/auto:</strong><em>&quot;path to script files&quot;</em></p></td>
<td align="left"><p>This option enables you to specify the location of the default .xml files and then launch your migration. If no path is specified, USMT will use the directory where the USMT binaries are located. The <strong>/auto</strong> option has the same effect as using the following options: <strong>/i:MigDocs.xml</strong> <strong>/i:MigApp.xml /v:5</strong>.</p></td>
</tr>
</tbody>
</table>



## <a href="" id="bkmk-mon"></a>Monitoring Options


USMT provides several command-line options that you can use to analyze problems that occur during migration.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-Line Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/l:</strong>[<em>Path</em>]<em>FileName</em></p></td>
<td align="left"><p>Specifies the location and name of the <strong>LoadState</strong> log. You cannot store any of the log files in <em>StorePath</em>. <em>Path</em> can be either a relative or full path. If you do not specify the <em>Path</em> variable, then the log will be created in the current directory. You can specify the <strong>/v</strong> option to adjust the amount of output.</p>
<p>If you run the <strong>LoadState</strong> command from a shared network resource, you must specify this option or USMT will fail with the error: &quot;USMT was unable to create the log file(s)&quot;. To fix this issue, use the <strong>/l:load.log</strong> option.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/v:</strong><em>&lt;VerbosityLevel&gt;</em></p></td>
<td align="left"><p><strong>(Verbosity)</strong></p>
<p>Enables verbose output in the LoadState log file. The default value is 0.</p>
<p>You can set the <em>VerbosityLevel</em> to one of the following levels:</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Level</th>
<th align="left">Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>Only the default errors and warnings are enabled.</p></td>
</tr>
<tr class="even">
<td align="left"><p>1</p></td>
<td align="left"><p>Enables verbose output.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4</p></td>
<td align="left"><p>Enables error and status output.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5</p></td>
<td align="left"><p>Enables verbose and status output.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8</p></td>
<td align="left"><p>Enables error output to a debugger.</p></td>
</tr>
<tr class="even">
<td align="left"><p>9</p></td>
<td align="left"><p>Enables verbose output to a debugger.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>12</p></td>
<td align="left"><p>Enables error and status output to a debugger.</p></td>
</tr>
<tr class="even">
<td align="left"><p>13</p></td>
<td align="left"><p>Enables verbose, status, and debugger output.</p></td>
</tr>
</tbody>
</table>
<p> </p>
<p>For example:</p>
<p><code>loadstate \server\share\migration\mystore /v:5 /i:migdocs.xml /i:migapp.xml</code></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/progress:</strong>[<em>Path&lt;/em&gt;]<em>FileName</em></p></td>
<td align="left"><p>Creates the optional progress log. You cannot store any of the log files in <em>StorePath</em>. <em>Path</em> can be either a relative or full path. If you do not specify the <em>Path</em> variable, then <em>FileName</em> will be created in the current directory.</p>
<p>For example:</p>
<p><code>loadstate /i:migapp.xml /i:migdocs.xml \server\share\migration\mystore /progress:prog.log /l:scanlog.log</code></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/c</strong></p></td>
<td align="left"><p>When this option is specified, the <strong>LoadState</strong> command will continue to run, even if non-fatal errors occur. Any files or settings that cause an error are logged in the progress log. For example, if there is a large file that will not fit on the computer, the <strong>LoadState</strong> command will log an error and continue with the migration. Without the <strong>/c</strong> option, the <strong>LoadState</strong> command will exit on the first error. You can use the new &lt;<strong>ErrorControl</strong>&gt; section in the Config.xml file to specify which file or registry read/write errors can be safely ignored and which might cause the migration to fail. This enables the <strong>/c</strong> command-line option to safely skip all input/output (I/O) errors in your environment. In addition, the <strong>/genconfig</strong> option now generates a sample &lt;<strong>ErrorControl</strong>&gt; section that is enabled by specifying error messages and desired behaviors in the Config.xml file.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/r:</strong><em>&lt;TimesToRetry&gt;</em></p></td>
<td align="left"><p><strong>(Retry)</strong></p>
<p>Specifies the number of times to retry when an error occurs while migrating the user state from a server. The default is three times. This option is useful in environments where network connectivity is not reliable.</p>
<p>While restoring the user state, the <strong>/r</strong> option will not recover data that is lost due to a network-hardware failure, such as a faulty or disconnected network cable, or when a virtual private network (VPN) connection fails. The retry option is intended for large, busy networks where connectivity is satisfactory, but communication latency is a problem.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/w:</strong><em>&lt;SecondsBeforeRetry&gt;</em></p></td>
<td align="left"><p><strong>(Wait)</strong></p>
<p>Specifies the time to wait, in seconds, before retrying a network file operation. The default is 1 second.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/?</strong> or <strong>/help</strong></p></td>
<td align="left"><p>Displays Help on the command line.</p></td>
</tr>
</tbody>
</table>



## <a href="" id="bkmk-user"></a>User Options


By default, all users are migrated. The only way to specify which users to include and exclude is by using the following options. You cannot exclude users in the migration .xml files or by using the Config.xml file. For more information, see [Identify Users](usmt-identify-users.md).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-Line Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/all</strong></p></td>
<td align="left"><p>Migrates all of the users on the computer.</p>
<p>USMT migrates all user accounts on the computer, unless you specifically exclude an account with the <strong>/ue</strong> or <strong>/uel</strong> options. For this reason, you do not need to specify this option on the command line. However, if you choose to use the <strong>/all</strong> option, you cannot also use the <strong>/ui</strong>, <strong>/ue</strong> or <strong>/uel</strong> options.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/ui:</strong><em>DomainName</em>&lt;em&gt;UserName</em></p>
<p>or</p>
<p><strong>/ui:</strong>&quot;<em>DomainName</em>&lt;em&gt;User Name</em>&quot;</p>
<p>or</p>
<p><strong>/ui:</strong><em>ComputerName</em>&lt;em&gt;LocalUserName</em></p></td>
<td align="left"><p><strong>(User include)</strong></p>
<p>Migrates the specified user. By default, all users are included in the migration. Therefore, this option is helpful only when used with the <strong>/ue</strong> option. You can specify multiple <strong>/ui</strong> options, but you cannot use the <strong>/ui</strong> option with the <strong>/all</strong> option. <em>DomainName</em> and <em>UserName</em> can contain the asterisk (<em>) wildcard character. When you specify a user name that contains spaces, you will need to surround it with quotations marks.</p>
<p>For example:</p>
<ul>
<li><p>To include only User2 from the Corporate domain, type:</p>
<p><code>/ue:</em>* /ui:corporate\user2</code></p></li>
</ul>
<div class="alert">
<strong>Note</strong><br/><p>If a user is specified for inclusion with the <strong>/ui</strong> option, and also is specified to be excluded with either the <strong>/ue</strong> or <strong>/uel</strong> options, the user will be included in the migration.</p>
</div>
<div>

</div>
<p>For more examples, see the descriptions of the <strong>/uel</strong>, <strong>/ue</strong>, and <strong>/ui</strong> options in this table.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/uel</strong>:<em>&lt;NumberOfDays&gt;</em></p>
<p>or</p>
<p><strong>/uel</strong>:<em>&lt;YYYY/MM/DD&gt;</em></p>
<p>or</p>
<p><strong>/uel</strong>:0</p></td>
<td align="left"><p><strong>(User exclude based on last logon)</strong></p>
<p>Migrates only the users that logged onto the source computer within the specified time period, based on the <strong>Last Modified</strong> date of the Ntuser.dat file on the source computer. The <strong>/uel</strong> option acts as an include rule. For example, the <strong>/uel:30</strong> option migrates users who logged on, or whose user account was modified, within the last 30 days from the date when the ScanState command is run. You can specify a number of days or you can specify a date. You cannot use this option with the <strong>/all</strong> option. USMT retrieves the last logon information from the local computer, so the computer does not need to be connected to the network when you run this option. In addition, if a domain user has logged onto another computer, that logon instance is not considered by USMT.</p>
<div class="alert">
<strong>Note</strong><br/><p>The <strong>/uel</strong> option is not valid in offline migrations.</p>
</div>
<div>

</div>
<p>Examples:</p>
<ul>
<li><p><code>/uel:0</code> migrates accounts that were logged on to the source computer when the <strong>ScanState</strong> command was run.</p></li>
<li><p><code>/uel:90</code> migrates users who have logged on, or whose accounts have been otherwise modified, within the last 90 days.</p></li>
<li><p><code>/uel:1</code> migrates users whose accounts have been modified within the last 24 hours.</p></li>
<li><p><code>/uel:2002/1/15</code> migrates users who have logged on or whose accounts have been modified since January 15, 2002.</p></li>
</ul>
<p>For example:</p>
<p><code>loadstate /i:migapp.xml /i:migdocs.xml \server\share\migration\mystore /uel:0</code></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/ue</strong>:<em>DomainName</em>&lt;em&gt;UserName</em></p>
<p>or</p>
<p><strong>/ue</strong>:&quot;<em>DomainName</em>&lt;em&gt;User Name</em>&quot;</p>
<p>or</p>
<p><strong>/ue</strong>:<em>ComputerName</em>&lt;em&gt;LocalUserName</em></p></td>
<td align="left"><p><strong>(User exclude)</strong></p>
<p>Excludes the specified users from the migration. You can specify multiple <strong>/ue</strong> options but you cannot use the <strong>/ue</strong> option with the <strong>/all</strong> option. <em>DomainName</em> and <em>UserName</em> can contain the asterisk (<em>) wildcard character. When you specify a user name that contains spaces, you will need to surround it with quotation marks.</p>
<p>For example:</p>
<p><code>loadstate /i:migapp.xml /i:migdocs.xml \server\share\migration\mystore /ue:contoso\user1</code></p>
<p>For more examples, see the descriptions of the <strong>/uel</strong>, <strong>/ue</strong>, and <strong>/ui</strong> options in this table.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/md:</strong><em>OldDomain</em>:<em>NewDomain</em></p>
<p>or</p>
<p><strong>/md:</strong><em>LocalComputerName:NewDomain</em></p></td>
<td align="left"><p><strong>(move domain)</strong></p>
<p>Specifies a new domain for the user. Use this option to change the domain for users on a computer or to migrate a local user to a domain account. <em>OldDomain</em> may contain the asterisk (</em>) wildcard character.</p>
<p>You can specify this option more than once. You may want to specify multiple <strong>/md</strong> options if you are consolidating users across multiple domains to a single domain. For example, you could specify the following to consolidate the users from the Corporate and FarNorth domains into the Fabrikam domain: <code>/md:corporate:fabrikam</code> and <code>/md:farnorth:fabrikam</code>.</p>
<p>If there are conflicts between two <strong>/md</strong> commands, the first rule that you specify is applied. For example, if you specify the <code>/md:corporate:fabrikam</code> and <code>/md:corporate:farnorth</code> commands, then Corporate users would be mapped to the Fabrikam domain.</p>
<div class="alert">
<strong>Note</strong><br/><p>If you specify an <em>OldDomain</em> that did not exist on the source computer, the <strong>LoadState</strong> command will appear to complete successfully, without an error or warning. However, in this case, users will not be moved to <em>NewDomain</em> but will remain in their original domain. For example, if you misspell &quot;contoso&quot; and you specify &quot;/md:contso:fabrikam&quot;, the users will remain in contoso on the destination computer.</p>
</div>
<div>

</div>
<p>For example:</p>
<p><code>loadstate /i:migapp.xml /i:migdocs.xml \server\share\migration\mystore</code></p>
<p><code> /progress:prog.log /l:load.log /md:contoso:fabrikam</code></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/mu:</strong><em>OldDomain</em>&lt;em&gt;OldUserName</em>:[<em>NewDomain</em>]<em>NewUserName</em></p>
<p>or</p>
<p><strong>/mu:</strong><em>OldLocalUserName</em>:<em>NewDomain</em>&lt;em&gt;NewUserName</em></p></td>
<td align="left"><p>Specifies a new user name for the specified user. If the store contains more than one user, you can specify multiple <strong>/mu</strong> options. You cannot use wildcard characters with this option.</p>
<p>For example:</p>
<p><code>loadstate /i:migapp.xml /i:migdocs.xml \server\share\migration\mystore</code></p>
<p><code>/progress:prog.log /l:load.log /mu:contoso\user1:fabrikam\user1</code></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/lac:</strong>[<em>Password</em>]</p></td>
<td align="left"><p><strong>(local account create)</strong></p>
<p>Specifies that if a user account is a local (non-domain) account, and it does not exist on the destination computer, USMT will create the account on the destination computer but it will be disabled. To enable the account, you must also use the <strong>/lae</strong> option.</p>
<p>If the <strong>/lac</strong> option is not specified, any local user accounts that do not already exist on the destination computer will not be migrated.</p>
<p><em>Password</em> is the password for the newly created account. An empty password is used by default.</p>
<div class="alert">
<strong>Caution</strong><br/><p>Use the <em>Password</em> variable with caution because it is provided in plain text and can be obtained by anyone with access to the computer that is running the <strong>LoadState</strong> command.</p>
<p>Also, if the computer has multiple users, all migrated users will have the same password.</p>
</div>
<div>

</div>
<p>For example:</p>
<p><code>loadstate /i:migapp.xml /i:migdocs.xml \server\share\migration\mystore</code></p>
<p>For instructions, see <a href="usmt-migrate-user-accounts.md" data-raw-source="[Migrate User Accounts](usmt-migrate-user-accounts.md)">Migrate User Accounts</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/lae</strong></p></td>
<td align="left"><p><strong>(local account enable)</strong></p>
<p>Enables the account that was created with the <strong>/lac</strong> option. You must specify the <strong>/lac</strong> option with this option.</p>
<p>For example:</p>
<p><code>loadstate /i:migapp.xml /i:migdocs.xml \server\share\migration\mystore</code></p>
<p><code>/progress:prog.log /l:load.log /lac:password /lae</code></p>
<p>For instructions, see <a href="usmt-migrate-user-accounts.md" data-raw-source="[Migrate User Accounts](usmt-migrate-user-accounts.md)">Migrate User Accounts</a>.</p></td>
</tr>
</tbody>
</table>



### Examples for the /ui and /ue options

The following examples apply to both the **/ui** and **/ue** options. You can replace the **/ue** option with the **/ui** option to include, rather than exclude, the specified users.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Behavior</th>
<th align="left">Command</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Exclude the user named User One in the Corporate domain.</p></td>
<td align="left"><p><code>/ue:&quot;corporate\user one&quot;</code></p></td>
</tr>
<tr class="even">
<td align="left"><p>Exclude the user named User1 in the Corporate domain.</p></td>
<td align="left"><p><code>/ue:corporate\user1</code></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Exclude the local user named User1.</p></td>
<td align="left"><p><code>/ue:%computername%\user1</code></p></td>
</tr>
<tr class="even">
<td align="left"><p>Exclude all domain users.</p></td>
<td align="left"><p><code>/ue:Domain<em></code></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Exclude all local users.</p></td>
<td align="left"><p><code>/ue:%computername%</em></code></p></td>
</tr>
<tr class="even">
<td align="left"><p>Exclude users in all domains named User1, User2, and so on.</p></td>
<td align="left"><p><code>/ue:<em>\user</em></code></p></td>
</tr>
</tbody>
</table>



### Using the Options Together

You can use the **/uel**, **/ue** and **/ui** options together to migrate only the users that you want migrated.

**The /ui option has precedence over the /ue and /uel options.** If a user is specified to be included using the **/ui** option, and also specified to be excluded using either the **/ue** or **/uel** options, the user will be included in the migration. For example, if you specify `/ui:contoso\* /ue:contoso\user1`, then User1 will be migrated, because the **/ui** option takes precedence over the **/ue** option.

**The /uel option takes precedence over the /ue option.** If a user has logged on within the specified time period set by the **/uel** option, that user’s profile will be migrated even if they are excluded by using the **/ue** option. For example, if you specify `/ue:contoso\user1 /uel:14`, the User1 will be migrated if they have logged on to the computer within the last 14 days.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Behavior</th>
<th align="left">Command</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Include only User2 from the Fabrikam domain and exclude all other users.</p></td>
<td align="left"><p><code>/ue:<em>* /ui:fabrikam\user2</code></p></td>
</tr>
<tr class="even">
<td align="left"><p>Include only the local user named User1 and exclude all other users.</p></td>
<td align="left"><p><code>/ue:</em>* /ui:user1</code></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Include only the domain users from Contoso, except Contoso\User1.</p></td>
<td align="left"><p>This behavior cannot be completed using a single command. Instead, to migrate this set of users, you will need to specify the following:</p>
<ul>
<li><p>Using the <strong>ScanState</strong> command-line tool, type: <code>/ue:<em>* /ui:contoso<em></code></p></li>
<li><p>Using the <strong>LoadState</strong> command-line tool, type: <code>/ue:contoso\user1</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Include only local (non-domain) users.</p></td>
<td align="left"><p><code>/ue:</em></em> /ui:%computername%*</code></p></td>
</tr>
</tbody>
</table>



## <a href="" id="bkmk-cloi"></a>Incompatible Command-Line Options


The following table indicates which command-line options are not compatible with the **LoadState** command. If the table entry for a particular combination is blank, the options are compatible and you can use them together. The X symbol means that the options are not compatible. For example, you cannot use the **/nocompress** option with the **/encrypt** option.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-Line Option</th>
<th align="left">/keyfile</th>
<th align="left">/nocompress</th>
<th align="left">/genconfig</th>
<th align="left">/all</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/i</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/v</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/nocompress</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/key</strong></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/decrypt</strong></p></td>
<td align="left"><p>Required*</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/keyfile</strong></p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/l</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/progress</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/r</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/w</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/c</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/p</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>N/A</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/all</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/ui</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/ue</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/uel</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/genconfig</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/config</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><em>StorePath</em></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/md</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/mu</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/lae</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/lac</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>



**Note**  
You must specify either the **/key** or **/keyfile** option with the **/encrypt** option.



## Related topics


[XML Elements Library](usmt-xml-elements-library.md)









