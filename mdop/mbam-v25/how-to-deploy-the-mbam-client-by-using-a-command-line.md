---
title: How to Deploy the MBAM Client by Using a Command Line
description: How to Deploy the MBAM Client by Using a Command Line
author: dansimp
ms.assetid: ac1d4ffe-c26d-41c9-9737-a4f2b37fde24
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Deploy the MBAM Client by Using a Command Line


You can use a command line to deploy the Microsoft BitLocker Administration and Monitoring (MBAM) Client software.

## Command Line to deploy the MBAM Client software


Type the following command at the command prompt to automatically accept the end user license agreement when deploying the MBAM Client software.

**MBAMClientSetup.exe /acceptEula=Yes**

**Note**  
The **/ju** and **/jm** command-line options are not supported and cannot be used to install the MBAM Client software.

 

Type the following command at the command prompt to extract and install the MSP:

**MBAMClientSetup.exe /extract &lt;path to extract MSI&gt; /acceptEula=Yes**

Then, install the MSI silently by running the following command:

**msiexec /i &lt;path to extracted MSI&gt; /qb ALLUSERS=1 REBOOT=ReallySuppress**

**Note**  
Beginning in MBAM 2.5 SP1, a separate MSI is no longer included with the MBAM product. However, you can extract the MSI from the executable file (.exe) that is included with the product, after accepting the EULA.

 

## <a href="" id="optin-for-microsoft-updates-1-command-line-option"></a>OPTIN\_FOR\_MICROSOFT\_UPDATES=1 command-line option


You can optionally specify the command-line option `OPTIN_FOR_MICROSOFT_UPDATES=1` during the Client software installation to automatically install Microsoft Updates on client computers. Specifying this option makes Microsoft Update automatically start and search for available updates to install after the Client software installation finishes.

You can use this command-line option with either of the following installation methods.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Install the MBAM Client software by using</th>
<th align="left">Example</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>MBAMClientSetup.exe</strong></p></td>
<td align="left"><p><strong>MbamClientSetup.exe OPTIN_FOR_MICROSOFT_UPDATES=1</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>msiexec /i MBAMClient.msi</strong></p></td>
<td align="left"><p><strong>msiexec /i MBAMClient.msi OPTIN_FOR_MICROSOFT_UPDATES=1</strong></p></td>
</tr>
</tbody>
</table>

 


## Related topics


[Deploying the MBAM 2.5 Client](deploying-the-mbam-25-client.md)

 

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).




