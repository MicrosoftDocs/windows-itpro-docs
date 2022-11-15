---
title: Policy CSP - RemoteAssistance
description: Learn how the Policy CSP - RemoteAssistance setting allows you to specify a custom message to display.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - RemoteAssistance

<hr/>

<!--Policies-->
## RemoteAssistance policies

<dl>
  <dd>
    <a href="#remoteassistance-customizewarningmessages">RemoteAssistance/CustomizeWarningMessages</a>
  </dd>
  <dd>
    <a href="#remoteassistance-sessionlogging">RemoteAssistance/SessionLogging</a>
  </dd>
  <dd>
    <a href="#remoteassistance-solicitedremoteassistance">RemoteAssistance/SolicitedRemoteAssistance</a>
  </dd>
  <dd>
    <a href="#remoteassistance-unsolicitedremoteassistance">RemoteAssistance/UnsolicitedRemoteAssistance</a>
  </dd>
</dl>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policy-->
<a href="" id="remoteassistance-customizewarningmessages"></a>**RemoteAssistance/CustomizeWarningMessages**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you customize warning messages.

The "Display warning message before sharing control" policy setting allows you to specify a custom message, to display before users share control of their computers.

The "Display warning message before connecting" policy setting allows you to specify a custom message, to display before users allow a connection to their computers.

If you enable this policy setting, the warning message you specify overrides the default message that is seen by the novice.

If you disable this policy setting, the user sees the default warning message.

If you don't configure this policy setting, the user sees the default warning message.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Customize warning messages*
-   GP name: *RA_Options*
-   GP path: *System/Remote Assistance*
-   GP ADMX file name: *remoteassistance.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remoteassistance-sessionlogging"></a>**RemoteAssistance/SessionLogging**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn logging on or off. Log files are located in the user's Documents folder under Remote Assistance.

If you enable this policy setting, log files are generated.

If you disable this policy setting, log files aren't generated.

If you don't configure this setting, application-based settings are used.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on session logging*
-   GP name: *RA_Logging*
-   GP path: *System/Remote Assistance*
-   GP ADMX file name: *remoteassistance.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remoteassistance-solicitedremoteassistance"></a>**RemoteAssistance/SolicitedRemoteAssistance**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn on or turn off Solicited (Ask for) Remote Assistance on this computer.

If you enable this policy setting, users on this computer can use email or file transfer to ask someone for help. Also, users can use instant messaging programs to allow connections to this computer, and you can configure more Remote Assistance settings.

If you disable this policy setting, users on this computer can't use email or file transfer to ask someone for help. Also, users can't use instant messaging programs to allow connections to this computer.

If you don't configure this policy setting, users can turn on or turn off Solicited (Ask for) Remote Assistance themselves in System Properties in Control Panel. Users can also configure Remote Assistance settings.

If you enable this policy setting, you have two ways to allow helpers to provide Remote Assistance: "Allow helpers to only view the computer" or "Allow helpers to remotely control the computer."

The "Maximum ticket time" policy setting sets a limit on the amount of time that a Remote Assistance invitation created by using email or file transfer can remain open.

The "Select the method for sending email invitations" setting specifies which email standard to use, to send Remote Assistance invitations. Depending on your email program, you can use either the Mailto standard (the invitation recipient connects through an Internet link) or the SMAPI (Simple MAPI) standard (the invitation is attached to your email message). This policy setting isn't available in Windows Vista, since SMAPI is the only method supported.

If you enable this policy setting, you should also enable appropriate firewall exceptions to allow Remote Assistance communications.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Solicited Remote Assistance*
-   GP name: *RA_Solicit*
-   GP path: *System/Remote Assistance*
-   GP ADMX file name: *remoteassistance.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remoteassistance-unsolicitedremoteassistance"></a>**RemoteAssistance/UnsolicitedRemoteAssistance**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn on or turn off Offer (Unsolicited) Remote Assistance on this computer.

If you enable this policy setting, users on this computer can get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.

If you disable this policy setting, users on this computer can't get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.

If you don't configure this policy setting, users on this computer can't get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.

If you enable this policy setting, you have two ways to allow helpers to provide Remote Assistance: "Allow helpers to only view the computer" or "Allow helpers to remotely control the computer." When you configure this policy setting, you also specify the list of users or user groups that are allowed to offer remote assistance.

To configure the list of helpers, click "Show." In the window that opens, you can enter the names of the helpers. Add each user or group one by one. When you enter the name of the helper user or user groups, use the following format:

`<Domain Name>\<User Name>` or

`<Domain Name>\<Group Name>`

If you enable this policy setting, you should also enable firewall exceptions to allow Remote Assistance communications. The firewall exceptions required for Offer (Unsolicited) Remote Assistance depend on the version of Windows you're running.

Windows Vista and later

Enable the Remote Assistance exception for the domain profile. The exception must contain:

- Port 135:TCP
- %WINDIR%\System32\msra.exe
- %WINDIR%\System32\raserver.exe

Windows XP with Service Pack 2 (SP2) and Windows XP Professional x64 Edition with Service Pack 1 (SP1)

- Port 135:TCP
- %WINDIR%\PCHealth\HelpCtr\Binaries\Helpsvc.exe
- %WINDIR%\PCHealth\HelpCtr\Binaries\Helpctr.exe
- %WINDIR%\System32\Sessmgr.exe

For computers running Windows Server 2003 with Service Pack 1 (SP1)

- Port 135:TCP
- %WINDIR%\PCHealth\HelpCtr\Binaries\Helpsvc.exe
- %WINDIR%\PCHealth\HelpCtr\Binaries\Helpctr.exe
- Allow Remote Desktop Exception

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Offer Remote Assistance*
-   GP name: *RA_Unsolicit*
-   GP path: *System/Remote Assistance*
-   GP ADMX file name: *remoteassistance.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)