---
title: Client Event Logs
description: Client Event Logs
author: dansimp
ms.assetid: d5c2f270-db6a-45f1-8557-8c6fb28fd568
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Client Event Logs

MBAM Client event logs are located in Event Viewer – Applications and Services Logs – Microsoft – Windows – MBAM - Operational path.
The following table contains event IDs that can occur on the MBAM Client.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Event ID</th>
<th align="left">Channel</th>
<th align="left">Event symbol</th>
<th align="left">Message</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>1</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>VolumeEnactmentSuccessful</p></td>
<td align="left"><p>The MBAM policies were applied successfully.</p></td>
</tr>
<tr class="even">
<td align="left"><p>2</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>VolumeEnactmentFailed</p></td>
<td align="left"><p>An error occurred while applying MBAM policies.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>3</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>TransferStatusDataSuccessful</p></td>
<td align="left"><p>The encryption status data was sent successfully.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>TransferStatusDataFailed</p></td>
<td align="left"><p>An error occurred while sending encryption status data.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>SystemVolumeNotFound</p></td>
<td align="left"><p>The system volume is missing. SystemVolume is needed to encrypt the operating system drive.</p></td>
</tr>
<tr class="even">
<td align="left"><p>9</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>TPMNotFound</p></td>
<td align="left"><p>The TPM hardware is missing. TPM is needed to encrypt the operating system drive with any TPM protector.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>10</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>MachineHWExempted</p></td>
<td align="left"><p>The computer is exempted from Encryption. Machine’s hardware status: Exempted</p></td>
</tr>
<tr class="even">
<td align="left"><p>11</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>MachineHWUnknown</p></td>
<td align="left"><p>The computer is exempted from encryption. Machine’s hardware status: Unknown</p></td>
</tr>
<tr class="odd">
<td align="left"><p>12</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>HWCheckFailed</p></td>
<td align="left"><p>Hardware exemption check failed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>13</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>UserIsExempted</p></td>
<td align="left"><p>The user is exempt from encryption.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>14</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>UserIsWaiting</p></td>
<td align="left"><p>The user requested an exemption.</p></td>
</tr>
<tr class="even">
<td align="left"><p>15</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>UserExemptionCheckFailed</p></td>
<td align="left"><p>User exemption check failed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>16</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>UserPostponed</p></td>
<td align="left"><p>The user postponed the encryption process.</p></td>
</tr>
<tr class="even">
<td align="left"><p>17</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>TPMInitializationFailed</p></td>
<td align="left"><p>TPM initialization failed. The user rejected the BIOS changes.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>18</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>CoreServiceDown</p></td>
<td align="left"><p>Unable to connect to the MBAM Recovery and Hardware service.</p></td>
</tr>
<tr class="even">
<td align="left"><p>19</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>CoreServiceUp</p></td>
<td align="left"><p>Successfully connected to the MBAM Recovery and Hardware service.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>20</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>PolicyMismatch</p></td>
<td align="left"><p>The MBAM policy is in conflict or corrupt.</p></td>
</tr>
<tr class="even">
<td align="left"><p>21</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>ConflictingOSVolumePolicies</p></td>
<td align="left"><p>Detected OS volume encryption policies conflict. Check BitLocker and MBAM policies related to OS drive protectors.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>22</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>ConflictingFDDVolumePolicies</p></td>
<td align="left"><p>Detected Fixed Data Drive volume encryption policies conflict. Check BitLocker and MBAM policies related to FDD drive protectors.</p></td>
</tr>
<tr class="even">
<td align="left"><p>27</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>EncryptionFailedNoDra</p></td>
<td align="left"><p>An error occurred while encrypting. A Data Recovery Agent (DRA) protector is required in FIPS mode for pre-Windows 8.1 machines.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>28</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>TpmOwnerAuthEscrowed</p></td>
<td align="left"><p>The TPM OwnerAuth has been escrowed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>29</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>RecoveryKeyEscrowed</p></td>
<td align="left"><p>The BitLocker recovery key for the volume has been escrowed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>30</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>RecoveryKeyReset</p></td>
<td align="left"><p>The BitLocker recovery key for the volume has been updated.</p></td>
</tr>
<tr class="even">
<td align="left"><p>31</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>EnforcePolicyDateSet</p></td>
<td align="left"><p>The enforce policy date, <em>&lt;date&gt;</em>, has been set for the volume</p></td>
</tr>
<tr class="odd">
<td align="left"><p>32</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>EnforcePolicyDateCleared</p></td>
<td align="left"><p>The enforce policy date, <em>&lt;date&gt;</em>, has been cleared for the volume.</p></td>
</tr>
<tr class="even">
<td align="left"><p>33</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>TpmLockOutResetSucceeded</p></td>
<td align="left"><p>Successfully reset TPM lockout.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>34</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>TpmLockOutResetFailed</p></td>
<td align="left"><p>Failed to reset TPM lockout.</p></td>
</tr>
<tr class="even">
<td align="left"><p>35</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>TpmOwnerAuthRetrievalSucceeded</p></td>
<td align="left"><p>Successfully retrieved TPM OwnerAuth from MBAM services.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>36</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>TpmOwnerAuthRetrievalFailed</p></td>
<td align="left"><p>Failed to retrieve TPM OwnerAuth from MBAM services.</p></td>
</tr>
<tr class="even">
<td align="left"><p>37</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>WmiProviderDllSearchPathUpdateFailed</p></td>
<td align="left"><p>Failed to update the DLL search path for WMI provider.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>38</p></td>
<td align="left"><p>Admin</p></td>
<td align="left"><p>TimedOutWaitingForWmiProvider</p></td>
<td align="left"><p>Agent Stopping - Timed-out waiting for MBAM WMI Provider Instance.</p></td>
</tr>
<tr class="even">
<td align="left"><p>39</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>RemovableDriveMounted</p></td>
<td align="left"><p>Removable drive was mounted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>40</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>RemovableDriveDismounted</p></td>
<td align="left"><p>Removable drive was unmounted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>41</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>FailedToEnactEndpointUnreachable</p></td>
<td align="left"><p>Failure to connect to the MBAM Recovery and Hardware service prevented MBAM policies from being applied successfully to the volume.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>42</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>FailedToEnactLockedVolume</p></td>
<td align="left"><p>Locked volume state prevented MBAM policies from being applied successfully to the volume.</p></td>
</tr>
<tr class="even">
<td align="left"><p>43</p></td>
<td align="left"><p>Operational</p></td>
<td align="left"><p>TransferStatusDataFailedEndpointUnreachable</p></td>
<td align="left"><p>Failure to connect to the MBAM Compliance and Status service prevented the transfer of encryption status data.</p></td>
</tr>
</tbody>
</table>

 


## Related topics
[Technical Reference for MBAM 2.5](technical-reference-for-mbam-25.md)

[Server Event Logs](server-event-logs.md)

 


## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





