---
title: Policy CSP - ADMX_Printing2
description: Policy CSP - ADMX_Printing2
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 12/15/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Printing2
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_Printing2 policies  

<dl>
  <dd>
    <a href="#admx-printing2-autopublishing">ADMX_Printing2/AutoPublishing</a>
  </dd>
  <dd>
    <a href="#admx-printing2-immortalprintqueue">ADMX_Printing2/ImmortalPrintQueue</a>
  </dd>
  <dd>
    <a href="#admx-printing2-prunedownlevel">ADMX_Printing2/PruneDownlevel</a>
  </dd>
  <dd>
    <a href="#admx-printing2-pruninginterval">ADMX_Printing2/PruningInterval</a>
  </dd>
  <dd>
    <a href="#admx-printing2-pruningpriority">ADMX_Printing2/PruningPriority</a>
  </dd>
  <dd>
    <a href="#admx-printing2-pruningretries">ADMX_Printing2/PruningRetries</a>
  </dd>
  <dd>
    <a href="#admx-printing2-pruningretrylog">ADMX_Printing2/PruningRetryLog</a>
  </dd>
  <dd>
    <a href="#admx-printing2-registerspoolerremoterpcendpoint">ADMX_Printing2/RegisterSpoolerRemoteRpcEndPoint</a>
  </dd>
  <dd>
    <a href="#admx-printing2-verifypublishedstate">ADMX_Printing2/VerifyPublishedState</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-printing2-autopublishing"></a>**ADMX_Printing2/AutoPublishing**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
Determines whether the Add Printer Wizard automatically publishes the computer's shared printers in Active Directory.

If you enable this setting or don't configure it, the Add Printer Wizard automatically publishes all shared printers.

If you disable this setting, the Add Printer Wizard doesn't automatically publish printers. However, you can publish shared printers manually.

The default behavior is to automatically publish shared printers in Active Directory.

> [!NOTE]
> This setting is ignored if the "Allow printers to be published" setting is disabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatically publish new printers in Active Directory*
-   GP name: *AutoPublishing*
-   GP path: *Printers*
-   GP ADMX file name: *Printing2.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing2-immortalprintqueue"></a>**ADMX_Printing2/ImmortalPrintQueue**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
Determines whether the domain controller can prune (delete from Active Directory) the printers published by this computer.

By default, the pruning service on the domain controller prunes printer objects from Active Directory if the computer that published them doesn't respond to contact requests. When the computer that published the printers restarts, it republishes any deleted printer objects.

If you enable this setting or don't configure it, the domain controller prunes this computer's printers when the computer doesn't respond.

If you disable this setting, the domain controller doesn't prune this computer's printers. This setting is designed to prevent printers from being pruned when the computer is temporarily disconnected from the network.

> [!NOTE]
> You can use the "Directory Pruning Interval" and "Directory Pruning Retry" settings to adjust the contact interval and number of contact attempts.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow pruning of published printers*
-   GP name: *ImmortalPrintQueue*
-   GP path: *Printers*
-   GP ADMX file name: *Printing2.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing2-prunedownlevel"></a>**ADMX_Printing2/PruneDownlevel**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
Determines whether the pruning service on a domain controller prunes printer objects that aren't automatically republished whenever the host computer doesn't respond, just as it does with Windows 2000 printers. This setting applies to printers running operating systems other than Windows 2000 and to Windows 2000 printers published outside their forest.

The Windows pruning service prunes printer objects from Active Directory when the computer that published them doesn't respond to contact requests. Computers running Windows 2000 Professional detect and republish deleted printer objects when they rejoin the network. However, because non-Windows 2000 computers and computers in other domains can't republish printers in Active Directory automatically, by default, the system never prunes their printer objects.

You can enable this setting to change the default behavior. To use this setting, select one of the following options from the "Prune non-republishing printers" box:

- "Never" specifies that printer objects that aren't automatically republished are never pruned. "Never" is the default.

- "Only if Print Server is found" prunes printer objects that aren't automatically republished only when the print server responds, but the printer is unavailable.

- "Whenever printer is not found" prunes printer objects that aren't automatically republished whenever the host computer doesn't respond, just as it does with Windows 2000 printers.

> [!NOTE]
> This setting applies to printers published by using Active Directory Users and Computers or Pubprn.vbs. It doesn't apply to printers published by using Printers in Control Panel.

> [!TIP]
> If you disable automatic pruning, remember to delete printer objects manually whenever you remove a printer or print server.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prune printers that are not automatically republished*
-   GP name: *PruneDownlevel*
-   GP path: *Printers*
-   GP ADMX file name: *Printing2.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing2-pruninginterval"></a>**ADMX_Printing2/PruningInterval**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
Specifies how often the pruning service on a domain controller contacts computers to verify that their printers are operational.

The pruning service periodically contacts computers that have published printers. If a computer doesn't respond to the contact message (optionally, after repeated attempts), the pruning service "prunes" (deletes from Active Directory) printer objects the computer has published.

By default, the pruning service contacts computers every eight hours and allows two repeated contact attempts before deleting printers from Active Directory.

If you enable this setting, you can change the interval between contact attempts.

If you don't configure or disable this setting, the default values will be used.

> [!NOTE]
> This setting is used only on domain controllers.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Directory pruning interval*
-   GP name: *PruningInterval*
-   GP path: *Printers*
-   GP ADMX file name: *Printing2.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing2-pruningpriority"></a>**ADMX_Printing2/PruningPriority**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
Sets the priority of the pruning thread.

The pruning thread, which runs only on domain controllers, deletes printer objects from Active Directory if the printer that published the object doesn't respond to contact attempts. This process keeps printer information in Active Directory current.

The thread priority influences the order in which the thread receives processor time and determines how likely it's to be preempted by higher priority threads.

By default, the pruning thread runs at normal priority. However, you can adjust the priority to improve the performance of this service.

> [!NOTE]
> This setting is used only on domain controllers.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Directory pruning priority*
-   GP name: *PruningPriority*
-   GP path: *Printers*
-   GP ADMX file name: *Printing2.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing2-pruningretries"></a>**ADMX_Printing2/PruningRetries**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
Specifies how many times the pruning service on a domain controller repeats its attempt to contact a computer before pruning the computer's printers.

The pruning service periodically contacts computers that have published printers to verify that the printers are still available for use. If a computer doesn't respond to the contact message, the message is repeated for the specified number of times. If the computer still fails to respond, then the pruning service "prunes" (deletes from Active Directory) printer objects the computer has published.

By default, the pruning service contacts computers every eight hours and allows two retries before deleting printers from Active Directory. You can use this setting to change the number of retries.

If you enable this setting, you can change the interval between attempts.

If you don't configure or disable this setting, the default values are used.

> [!NOTE]
> This setting is used only on domain controllers.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Directory pruning retry*
-   GP name: *PruningRetries*
-   GP path: *Printers*
-   GP ADMX file name: *Printing2.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing2-pruningretrylog"></a>**ADMX_Printing2/PruningRetryLog**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
Specifies whether or not to log events when the pruning service on a domain controller attempts to contact a computer before pruning the computer's printers.

The pruning service periodically contacts computers that have published printers to verify that the printers are still available for use. If a computer doesn't respond to the contact attempt, the attempt is retried a specified number of times, at a specified interval. The "Directory pruning retry" setting determines the number of times the attempt is retried; the default value is two retries. The "Directory Pruning Interval" setting determines the time interval between retries; the default value is every eight hours. If the computer hasn't responded by the last contact attempt, its printers are pruned from the directory.

If you enable this policy setting, the contact events are recorded in the event log.

If you disable or don't configure this policy setting, the contact events aren't recorded in the event log.

Note: This setting doesn't affect the logging of pruning events; the actual pruning of a printer is always logged.

> [!NOTE]
> This setting is used only on domain controllers.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Log directory pruning retry events*
-   GP name: *PruningRetryLog*
-   GP path: *Printers*
-   GP ADMX file name: *Printing2.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing2-registerspoolerremoterpcendpoint"></a>**ADMX_Printing2/RegisterSpoolerRemoteRpcEndPoint**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy controls whether the print spooler will accept client connections.

When the policy isn't configured or enabled, the spooler will always accept client connections.

When the policy is disabled, the spooler won't accept client connections nor allow users to share printers. All printers currently shared will continue to be shared.

The spooler must be restarted for changes to this policy to take effect.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow Print Spooler to accept client connections*
-   GP name: *RegisterSpoolerRemoteRpcEndPoint*
-   GP path: *Printers*
-   GP ADMX file name: *Printing2.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-printing2-verifypublishedstate"></a>**ADMX_Printing2/VerifyPublishedState**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
Directs the system to periodically verify that the printers published by this computer still appear in Active Directory. This setting also specifies how often the system repeats the verification.

By default, the system only verifies published printers at startup. This setting allows for periodic verification while the computer is operating.

To enable this extra verification, enable this setting, and then select a verification interval.

To disable verification, disable this setting, or enable this setting and select "Never" for the verification interval.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Check published state*
-   GP name: *VerifyPublishedState*
-   GP path: *Printers*
-   GP ADMX file name: *Printing2.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->