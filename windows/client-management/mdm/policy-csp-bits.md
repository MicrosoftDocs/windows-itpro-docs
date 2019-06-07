---
title: Policy CSP - BITS
description: Policy CSP - BITS
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/29/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - BITS

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The following bandwidth policies are used together to define the bandwidth-throttling schedule and transfer rate. 

- BITS/BandwidthThrottlingEndTime  
- BITS/BandwidthThrottlingStartTime  
- BITS/BandwidthThrottlingTransferRate

If BITS/BandwidthThrottlingStartTime or BITS/BandwidthThrottlingEndTime are NOT defined, but BITS/BandwidthThrottlingTransferRate IS defined, then default values will be used for StartTime and EndTime (8am and 5pm respectively). The time policies are based on the 24-hour clock.

<hr/>

<!--Policies-->
## BITS policies  

<dl>
  <dd>
    <a href="#bits-bandwidththrottlingendtime">BITS/BandwidthThrottlingEndTime</a>
  </dd>
  <dd>
    <a href="#bits-bandwidththrottlingstarttime">BITS/BandwidthThrottlingStartTime</a>
  </dd>
  <dd>
    <a href="#bits-bandwidththrottlingtransferrate">BITS/BandwidthThrottlingTransferRate</a>
  </dd>
  <dd>
    <a href="#bits-costednetworkbehaviorbackgroundpriority">BITS/CostedNetworkBehaviorBackgroundPriority</a>
  </dd>
  <dd>
    <a href="#bits-costednetworkbehaviorforegroundpriority">BITS/CostedNetworkBehaviorForegroundPriority</a>
  </dd>
  <dd>
    <a href="#bits-jobinactivitytimeout">BITS/JobInactivityTimeout</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="bits-bandwidththrottlingendtime"></a>**BITS/BandwidthThrottlingEndTime**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies the bandwidth throttling **end time** that Background Intelligent Transfer Service (BITS) uses for background transfers. This policy setting does not affect foreground transfers. This policy is based on the 24-hour clock.

Value type is integer. Default value is 17 (5 pm).

Supported value range: 0 - 23

You can specify a limit to use during a specific time interval and at all other times. For example, limit the use of network bandwidth to 10 Kbps from 8:00 A.M. to 5:00 P.M., and use all available unused bandwidth the rest of the day's hours.

Using the three policies together (BandwidthThrottlingStartTime, BandwidthThrottlingEndTime, BandwidthThrottlingTransferRate), BITS will limit its bandwidth usage to the specified values. You can specify the limit in kilobits per second (Kbps). If you specify a value less than 2 kilobits, BITS will continue to use approximately 2 kilobits. To prevent BITS transfers from occurring, specify a limit of 0.

If you disable or do not configure this policy setting, BITS uses all available unused bandwidth.

Note: You should base the limit on the speed of the network link, not the computer's network interface card (NIC). This policy setting does not affect Peercaching transfers between peer computers (it does affect transfers from the origin server); the "Limit the maximum network bandwidth used for Peercaching" policy setting should be used for that purpose.

Consider using this setting to prevent BITS transfers from competing for network bandwidth when the client computer has a fast network card (10Mbs), but is connected to the network via a slow link (56Kbs).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Limit the maximum network bandwidth for BITS background transfers*
-   GP name: *BITS_MaxBandwidth*
-   GP element: *BITS_BandwidthLimitSchedTo*
-   GP path: *Network/Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="bits-bandwidththrottlingstarttime"></a>**BITS/BandwidthThrottlingStartTime**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies the bandwidth throttling **start time** that Background Intelligent Transfer Service (BITS) uses for background transfers. This policy setting does not affect foreground transfers. This policy is based on the 24-hour clock.

Value type is integer. Default value is 8 (8 am).

Supported value range: 0 - 23

You can specify a limit to use during a specific time interval and at all other times. For example, limit the use of network bandwidth to 10 Kbps from 8:00 A.M. to 5:00 P.M., and use all available unused bandwidth the rest of the day's hours.

Using the three policies together (BandwidthThrottlingStartTime, BandwidthThrottlingEndTime, BandwidthThrottlingTransferRate), BITS will limit its bandwidth usage to the specified values. You can specify the limit in kilobits per second (Kbps). If you specify a value less than 2 kilobits, BITS will continue to use approximately 2 kilobits. To prevent BITS transfers from occurring, specify a limit of 0.

If you disable or do not configure this policy setting, BITS uses all available unused bandwidth.

Note: You should base the limit on the speed of the network link, not the computer's network interface card (NIC). This policy setting does not affect Peercaching transfers between peer computers (it does affect transfers from the origin server); the "Limit the maximum network bandwidth used for Peercaching" policy setting should be used for that purpose.

Consider using this setting to prevent BITS transfers from competing for network bandwidth when the client computer has a fast network card (10Mbs), but is connected to the network via a slow link (56Kbs).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Limit the maximum network bandwidth for BITS background transfers*
-   GP name: *BITS_MaxBandwidth*
-   GP element: *BITS_BandwidthLimitSchedFrom*
-   GP path: *Network/Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="bits-bandwidththrottlingtransferrate"></a>**BITS/BandwidthThrottlingTransferRate**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies the bandwidth throttling **transfer rate** in kilobits per second (Kbps) that Background Intelligent Transfer Service (BITS) uses for background transfers. This policy setting does not affect foreground transfers.

Value type is integer. Default value is 1000.

Supported value range: 0 - 4294967200

You can specify a limit to use during a specific time interval and at all other times. For example, limit the use of network bandwidth to 10 Kbps from 8:00 A.M. to 5:00 P.M., and use all available unused bandwidth the rest of the day's hours.

Using the three policies together (BandwidthThrottlingStartTime, BandwidthThrottlingEndTime, BandwidthThrottlingTransferRate), BITS will limit its bandwidth usage to the specified values. You can specify the limit in kilobits per second (Kbps). If you specify a value less than 2 kilobits, BITS will continue to use approximately 2 kilobits. To prevent BITS transfers from occurring, specify a limit of 0.

If you disable or do not configure this policy setting, BITS uses all available unused bandwidth.

Note: You should base the limit on the speed of the network link, not the computer's network interface card (NIC). This policy setting does not affect Peercaching transfers between peer computers (it does affect transfers from the origin server); the "Limit the maximum network bandwidth used for Peercaching" policy setting should be used for that purpose.

Consider using this setting to prevent BITS transfers from competing for network bandwidth when the client computer has a fast network card (10Mbs), but is connected to the network via a slow link (56Kbs).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Limit the maximum network bandwidth for BITS background transfers*
-   GP name: *BITS_MaxBandwidth*
-   GP element: *BITS_MaxTransferRateText*
-   GP path: *Network/Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="bits-costednetworkbehaviorbackgroundpriority"></a>**BITS/CostedNetworkBehaviorBackgroundPriority**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting defines the default behavior that the Background Intelligent Transfer Service (BITS) uses for background transfers when the system is connected to a costed network (3G, etc.). Download behavior policies further limit the network usage of background transfers.

If you enable this policy setting, you can define a default download policy for each BITS job priority. This setting does not override a download policy explicitly configured by the application that created the BITS job, but does apply to jobs that are created by specifying only a priority.

For example, you can specify that background jobs are by default to transfer only when on uncosted network connections, but foreground jobs should proceed only when not roaming. The values that can be assigned are:
-  1 -    Always transfer
-  2 -    Transfer unless roaming
-  3 -    Transfer unless surcharge applies (when not roaming or overcap)
-  4 -    Transfer unless nearing limit (when not roaming or nearing cap)
-  5 -    Transfer only if unconstrained

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Set default download behavior for BITS jobs on costed networks*
-   GP name: *BITS_SetTransferPolicyOnCostedNetwork*
-   GP element: *BITS_TransferPolicyNormalPriorityValue*
-   GP path: *Network/Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="bits-costednetworkbehaviorforegroundpriority"></a>**BITS/CostedNetworkBehaviorForegroundPriority**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting defines the default behavior that the foreground Intelligent Transfer Service (BITS) uses for foreground transfers when the system is connected to a costed network (3G, etc.). Download behavior policies further limit the network usage of foreground transfers.

If you enable this policy setting, you can define a default download policy for each BITS job priority. This setting does not override a download policy explicitly configured by the application that created the BITS job, but does apply to jobs that are created by specifying only a priority.

For example, you can specify that foreground jobs are by default to transfer only when on uncosted network connections, but foreground jobs should proceed only when not roaming. The values that can be assigned are:
-  1 -    Always transfer
-  2 -    Transfer unless roaming
-  3 -    Transfer unless surcharge applies (when not roaming or overcap)
-  4 -    Transfer unless nearing limit (when not roaming or nearing cap)
-  5 -    Transfer only if unconstrained

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Set default download behavior for BITS jobs on costed networks*
-   GP name: *BITS_SetTransferPolicyOnCostedNetwork*
-   GP element: *BITS_TransferPolicyForegroundPriorityValue*
-   GP path: *Network/Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="bits-jobinactivitytimeout"></a>**BITS/JobInactivityTimeout**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the number of days a pending BITS job can remain inactive before the job is considered abandoned. By default BITS will wait 90 days before considering an inactive job abandoned. After a job is determined to be abandoned, the job is deleted from BITS and any downloaded files for the job are deleted from the disk.

> [!NOTE]
> Any property changes to the job or any successful download action will reset this timeout.

Value type is integer. Default is 90 days.

Supported values range: 0 - 999

Consider increasing the timeout value if computers tend to stay offline for a long period of time and still have pending jobs. 
Consider decreasing this value if you are concerned about orphaned jobs occupying disk space.

If you disable or do not configure this policy setting, the default value of 90 (days) will be used for the inactive job timeout.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Timeout for inactive BITS jobs*
-   GP name: *BITS_Job_Timeout*
-   GP element: *BITS_Job_Timeout_Time*
-   GP path: *Network/Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Value type is integer. Default is 90 days.

Supported values range: 0 - 999


<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in Windows 10, version 1809.
-   6 - Added in the next major release of Windows 10.

<!--/Policies-->

