---
title: Troubleshoot Microsoft Surface Hub
description: Troubleshoot common problems, including setup issues, Exchange ActiveSync errors.
ms.assetid: CF58F74D-8077-48C3-981E-FCFDCA34B34A
ms.reviewer: 
manager: dansimp
keywords: Troubleshoot common problems, setup issues, Exchange ActiveSync errors
ms.prod: surface-hub
ms.sitesec: library
author: levinec
ms.author: ellevin
ms.topic: article
ms.date: 03/16/2018
ms.localizationpriority: medium
---

# Troubleshoot Microsoft Surface Hub


Troubleshoot common problems, including setup issues, Exchange ActiveSync errors.

The [Surface Hub Hardware Diagnostic tool](https://www.microsoft.com/store/p/surface-hub-hardware-diagnostic/9nblggh51f2g?rtc=1&activetab=pivot%3aoverviewtab) contains interactive tests which allow you to confirm essential functionality of your Hub is working as expected. In addition to testing hardware, the diagnostic can test the resource account to verify that it is configured properly for your environment. If problems are encountered, results can be saved and shared with the Surface Hub Support Team. For usage information, see [Using the Surface Hub Hardware Diagnostic Tool to test a device account](https://support.microsoft.com/help/4077574/using-the-surface-hub-hardware-diagnostic-tool-to-test-a-device-accoun).

Common issues are listed in the following table, along with causes and possible fixes. The [Setup troubleshooting](#setup-troubleshooting) section contains a listing of on-device problems, along with several types of issues that may be encountered during the first-run experience. The [Exchange ActiveSync errors](#exchange-activesync-errors) section lists common errors the device may encounter when trying to synchronize with an Microsoft Exchange ActiveSync server.




## Setup troubleshooting


This section lists causes, and possible fixes to help troubleshoot issues you might find when you set up your Microsoft Surface Hub.

### On-device

Possible fixes for issues on the Surface Hub after you've completed the first-run program.

<table>
<tr>
<th>Issue</th>
<th>Causes</th>
<th>Possible fixes</th>
</tr>
<tr>
<td rowspan="2">
<p>Not receiving automatic accept/decline messages.</p>
</td>
<td>
<p>The device account isn't configured to automatically accept/decline messages.</p>
</td>
<td>
<p>Use PowerShell cmdlet <code>Set-CalendarProcessing $upn -AutomateProcessing AutoAccept</code>.</p>
</td>
</tr>
<tr>
<td>
<p>The device account isn't configured to process external meeting requests.</p>
</td>
<td>
<p>Use PowerShell cmdlet <code>Set-CalendarProcessing $upn -ProcessExternalMeetingMessages $true</code>.</p>
</td>
</tr>
<tr>
<td>
<p>Calendar is not showing on the Welcome screen, or message "Appointments of date (no account provisioned)" is being displayed.</p>
</td>
<td>
<p>No device account is set up on this Surface Hub.</p>
</td>
<td>
<p>Provision a device account through Settings.</p>
</td>
</tr>
<tr>
<td>
<p>Calendar is not showing on the Welcome screen or message "Appointments of date (overprovisioned)" is being displayed.</p>
</td>
<td>
<p>The device account is provisioned on too many devices.</p>
</td>
<td>
<p>Remove the device account from other devices that it's provisioned to. This can be done using the Exchange admin portal.</p>
</td>
</tr>
<tr>
<td>
<p>Calendar is not showing on the Welcome screen or message "Appointments of date (invalid credentials)" is being displayed.</p>
</td>
<td>
<p>The device account's password has expired and is no longer valid.</p>
</td>
<td>
<p>Update the account's password in Settings. Also see <a href="password-management-for-surface-hub-device-accounts.md">Password management</a>.</p>
</td>
</tr>
<tr>
<td>
<p>Calendar is not showing on the Welcome screen or message "Appointments of date (account policy)" is being displayed.</p>
</td>
<td>
<p>The device account is using an invalid ActiveSync policy.</p>
</td>
<td>
<p>Make sure the device account has an ActiveSync policy where <code>PasswordEnabled == False</code>.</p>
</td>
</tr>
<tr>
<td>
<p>Calendar is not showing on the Welcome screen or message "Appointments may be out of date" is being displayed.</p>
</td>
<td>
<p>Exchange is not enabled.</p>
</td>
<td>Enable the device account for Exchange services through Settings. You need to make sure you have the right set of ActiveSync policies and have also installed any necessary certificates for Exchange services to work.</td>
</tr>
<tr>
<td>
<p>Can't log in to Skype for Business.</p>
</td>
<td>
<p>The device account does not have a Session Initiation Protocol (SIP) address property.</p>
</td>
<td>
<p>The account does not have a SIP address property and its User Principal Name (UPN) does not match the actual SIP address. The account must have its SIP address set, or the SIP address should be added using the Settings app.</p>
</td>
</tr>
<tr>
<td>
<p>Can't log in to Skype for Business.</p>
</td>
<td>
<p>The device account requires a certificate to authenticate into Skype for Business.</p>
</td>
<td>
<p>Install the appropriate certificate using provisioning packages.</p>
</td>
</tr>
</table>
 

### First run

Possible fixes for issues with Surface Hub first-run program.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Issue</th>
<th align="left">Causes</th>
<th align="left">Possible fixes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Cannot find account when asked for domain and user name.</p></td>
<td align="left"><p>Domain needs to be the fully qualified domain name (FQDN).</p></td>
<td align="left"><p>The FQDN should be provided in the domain field.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="first-run-device-acct-page"></a>Device account page, issues for new account settings

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Issue</th>
<th align="left">Causes</th>
<th align="left">Possible fixes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Unable to find the provided account in Azure AD.</p></td>
<td align="left"><p>The provided account's User Principal Name (UPN) has a tenant that can't be reached in Azure AD.</p></td>
<td align="left"><p>Make sure that you have a working Internet connection, and that the device can reach Microsoft Online Services. Make sure the account credentials are entered correctly.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Unable to reach the specified directory.</p></td>
<td align="left"><p>The provided account domain specifies a domain that can't be reached.</p></td>
<td align="left"><p>Make sure that you have a working network connection, and that the device can reach the domain controller. Make sure the account credentials are entered correctly. You can also try using the FQDN instead.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Can't auto-discover Exchange server.</p></td>
<td align="left"><p>The Exchange server isn't configured for auto-discovery.</p></td>
<td align="left"><p>Enable auto-discovery of the Exchange server for the device account, or enter the account's Exchange server address manually.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Could not discover the SIP address after entering the account credentials.</p></td>
<td align="left"><p>There was no SIP address entry in Active Directory or Azure AD.</p></td>
<td align="left"><p>Make sure the account is enabled with Skype for Business and has a SIP address. If not, you can enter the SIP address manually into the text box.</p></td>
</tr>
</tbody>
</table>

 

### Device account page, issues for existing account settings

<table>
<tr>
<th>Issue</th>
<th>Causes</th>
<th>Error codes</th>
<th>Possible fixes</th>
</tr>
<tr>
<td>
<p>Account could not authenticate with the specified credentials.</p>
</td>
<td>
<p>The account is not enabled as a user in Active Directory (AD), needs a password to authenticate, or the password is incorrect.</p>
</td>
<td>
<p>None</p>
</td>
<td>
<p>Make sure the credentials are entered correctly. Enable the account as a user in AD and add a password, or set the RoomMailboxPassword</p>. </td>
</tr>
<tr>
<td>
<p>Error 0x800C0019 is displayed when providing an Exchange server.</p>
</td>
<td>
<p>The device account requires a certificate to authenticate.</p>
</td>
<td>
<p>0x800C0019</p>
</td>
<td>
<p>Install the appropriate certificate using provisioning packages.</p>
</td>
</tr>
<tr>
<td>
<p>Device account credentials are not valid for the provided Exchange server.</p>
</td>
<td>
<p>The provided Exchange server is not where the device account's mailbox is hosted.</p>
</td>
<td>
<p>None</p>
</td>
<td>
<p>Make sure you are providing the correct Exchange mail server for the device account.</p>
</td>
</tr>
<tr>
<td>
<p>HTTP timeout while trying to reach Exchange server.</p>
</td>
<td></td>
<td>
<p>0x80072EE2</p>
</td>
<td></td>
</tr>
<tr>
<td>
<p>Couldn't find the provided Exchange server.</p>
</td>
<td>
<p>The Exchange server provided could not be found.</p>
</td>
<td>
<p>None</p>
</td>
<td>
<p>Ensure that you have a working network or Internet connection, and that the Exchange server you provided is correct.</p>
</td>
</tr>
<tr>
<td>
<p>http not supported.</p>
</td>
<td>
<p>An Exchange server with <i>http://</i> instead of <i>https://</i> was provided.</p>
</td>
<td>
<p>None</p>
</td>
<td>
<p>Use an Exchange server that uses https.</p>
</td>
</tr>
<tr>
<td rowspan="3">
<div><p>People land on the page titled "There's a problem with this account" regarding ActiveSync.</p>
</div>
<div> </div>
</td>
<td>
<p>The ActiveSync policy PasswordEnabled is set to True (or 1).</p>
</td>
<td>
<p>None</p>
</td>
<td>
<p>Create a new ActiveSync policy where PasswordEnabled is set to False (or 0), and then apply that policy to the account.</p>
</td>
</tr>
<tr>
<td>
<p>The Surface Hub doesn't have a connection to Exchange.</p>
</td>
<td>
<p>None</p>
</td>
<td>
<p>Make sure that you have a working network or Internet connection.</p>
</td>
</tr>
<tr>
<td>
<p>Exchange returns a status code indicating an error.</p>
</td>
<td>
<p>None</p>
</td>
<td>
<p>Make sure that you have a working network or Internet connection.</p>
</td>
</tr>
</table>
 

### <a href="" id="first-run-domain-join-page"></a>First run, Domain join page issues

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Issue</th>
<th align="left">Causes</th>
<th align="left">Possible fixes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>When trying to join a domain, an error shows that the account couldn't authenticate using the specified credentials.</p></td>
<td align="left"><p>The credentials provided are not capable of joining the specified domain.</p></td>
<td align="left"><p>Enter correct credentials for an account that exists in the specified domain.</p></td>
</tr>
<tr class="even">
<td align="left"><p>When specifying a group from a domain, an error shows that the group couldn't be found on the domain.</p></td>
<td align="left"><p>The group may have been removed or no longer exists.</p></td>
<td align="left"><p>Verify that the group exists within the domain.</p></td>
</tr>
</tbody>
</table>

 

### First run, Exchange server page

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Issue</th>
<th align="left">Causes</th>
<th align="left">Possible fixes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>People land on this page and are asked for the Exchange server address.</p></td>
<td align="left"><p>The Exchange server isn't configured for auto-discovery.</p></td>
<td align="left"><p>Enable auto-discovery of the Exchange server for the device account, or enter the account's Exchange server address manually.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="first-run-on-device"></a>First run, On-device issues

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Issue</th>
<th align="left">Causes</th>
<th align="left">Error codes</th>
<th align="left">Possible fixes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Can't sync mail/calendar.</p></td>
<td align="left"><p>The account has not allowed the Surface Hub as an allowed device.</p></td>
<td align="left"><p>0x86000C1C</p></td>
<td align="left"><p>Add the Surface Hub device ID to the whitelist by setting the <strong>ActiveSyncAllowedDeviceIds</strong> property for the mailbox.</p></td>
</tr>
</tbody>
</table>

 



 

## Exchange ActiveSync errors


This section lists status codes, mapping, user messages, and actions an admin can take to solve Exchange ActiveSync errors.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Hex Code</th>
<th align="left">Mapping</th>
<th align="left">User-Friendly Message</th>
<th align="left">Action admin should take</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0x85010002</p></td>
<td align="left"><p>E_HTTP_DENIED</p></td>
<td align="left"><p>The password must be updated.</p></td>
<td align="left"><p>Update the password.</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x80072EFD</p></td>
<td align="left"><p>WININET_E_CANNOT_CONNECT</p></td>
<td align="left"><p>Can’t connect to the server right now. Wait a while and try again, or check the account settings.</p></td>
<td align="left"><p>Verify that the server name is correct and reachable. Verify that the device is connected to the network.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x86000C29</p></td>
<td align="left"><p>E_NEXUS_STATUS_DEVICE_NOTPROVISIONED (policies don’t match)</p></td>
<td align="left"><p>The account is configured with policies not compatible with Surface Hub.</p></td>
<td align="left"><p>Disable the <strong>PasswordEnabled</strong> policy for this account.</p>
<p>We have a bug were we may surface policy errors if the account doesn’t receive any server notifications within the policy refresh interval.</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x86000C4C</p></td>
<td align="left"><p>E_NEXUS_STATUS_MAXIMUMDEVICESREACHED</p></td>
<td align="left"><p>The account has too many device partnerships.</p></td>
<td align="left"><p>Delete one or more partnerships on the server.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x86000C0A</p></td>
<td align="left"><p>E_NEXUS_STATUS_SERVERERROR_RETRYLATER</p></td>
<td align="left"><p>Can’t connect to the server right now.</p></td>
<td align="left"><p>Wait until the server comes back online. If the issue persists, re-provision the account.</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x85050003</p></td>
<td align="left"><p>E_CREDENTIALS_EXPIRED (Credentials have expired and need to be updated)</p></td>
<td align="left"><p>The password must be updated.</p></td>
<td align="left"><p>Update the password.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x8505000D</p></td>
<td align="left"><p>E_AIRSYNC_RESET_RETRY</p></td>
<td align="left"><p>Can’t connect to the server right now. Wait a while or check the account’s settings.</p></td>
<td align="left"><p>This is normally a transient error but if the issue persists check the number of devices associated with the account and delete some of them if the number is large.</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x86000C16</p></td>
<td align="left"><p>E_NEXUS_STATUS_USER_HASNOMAILBOX</p></td>
<td align="left"><p>The mailbox was migrated to a different server.</p></td>
<td align="left"><p>You should never see this error. If the issue persists, re-provision the account.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x85010004</p></td>
<td align="left"><p>E_HTTP_FORBIDDEN</p></td>
<td align="left"><p>Can’t connect to the server right now. Wait a while and try again, or check the account’s settings.</p></td>
<td align="left"><p>Verify the server name to make sure it is correct. If the account is using cert based authentication make sure the certificate is still valid and update it if not.</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x85030028</p></td>
<td align="left"><p>E_ACTIVESYNC_PASSWORD_OR_GETCERT</p></td>
<td align="left"><p>The account’s password or client certificate are missing or invalid.</p></td>
<td align="left"><p>Update the password and/or deploy the client certificate.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x86000C2A</p></td>
<td align="left"><p>E_NEXUS_STATUS_DEVICE_POLICYREFRESH</p></td>
<td align="left"><p>The account is configured with policies not compatible with Surface Hub.</p></td>
<td align="left"><p>Disable the PasswordEnabled policy for this account.</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x85050002</p></td>
<td align="left"><p>E_CREDENTIALS_UNAVAILABLE</p></td>
<td align="left"><p>The password must be updated.</p></td>
<td align="left"><p>Update the password.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x80072EE2</p></td>
<td align="left"><p>WININET_E_TIMEOUT</p></td>
<td align="left"><p>The network doesn’t support the minimum idle timeout required to receive server notification, or the server is offline.</p></td>
<td align="left"><p>Verify that the server is running. Verify the NAT settings.</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x85002004</p></td>
<td align="left"><p>E_FAIL_ABORT</p></td>
<td align="left"><p>This error is used to interrupt the hanging sync, and will not be exposed to users. It will be shown in the diagnostic data if you force an interactive sync, delete the account, or update its settings.</p></td>
<td align="left"><p>Nothing.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x85010017</p></td>
<td align="left"><p>E_HTTP_SERVICE_UNAVAIL</p></td>
<td align="left"><p>Can’t connect to the server right now. Wait a while or check the account’s settings.</p></td>
<td align="left"><p>Verify the server name to make sure it is correct. Wait until the server comes back online. If the issue persists, re-provision the account.</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x86000C0D</p></td>
<td align="left"><p>E_NEXUS_STATUS_MAILBOX_SERVEROFFLINE</p></td>
<td align="left"><p>Can’t connect to the server right now. Wait a while or check the account’s settings.</p></td>
<td align="left"><p>Verify the server name to make sure it is correct. Wait until the server comes back online. If the issue persists, re-provision the account.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x85030027</p></td>
<td align="left"><p>E_ACTIVESYNC_GETCERT</p></td>
<td align="left"><p>The Exchange server requires a certificate.</p></td>
<td align="left"><p>Import the appropriate EAS certificate on the Surface Hub.</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x86000C2B</p></td>
<td align="left"><p>E_NEXUS_STATUS_INVALID_POLICYKEY</p></td>
<td align="left"><p>The account is configured with policies not compatible with Surface Hub.</p></td>
<td align="left"><p>Disable the PasswordEnabled policy for this account.</p>
<p>We have a bug were we may surface policy errors if the account doesn’t receive any server notifications within the policy refresh interval.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x85010005</p></td>
<td align="left"><p>E_HTTP_NOT_FOUND</p></td>
<td align="left"><p>The server name is invalid.</p></td>
<td align="left"><p>Verify the server name to make sure it is correct. If the issue persists, re-provision the account.</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x85010014</p></td>
<td align="left"><p>E_HTTP_SERVER_ERROR</p></td>
<td align="left"><p>Can’t connect to the server.</p></td>
<td align="left"><p>Verify the server name to make sure it is correct. Trigger a sync and, if the issue persists, re-provision the account.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x80072EE7</p></td>
<td align="left"><p>WININET_E_NAME_NOT_RESOLVED</p></td>
<td align="left"><p>The server name or address could not be resolved.</p></td>
<td align="left"><p>Make sure the server name is entered correctly.</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x8007052F</p></td>
<td align="left"><p>ERROR_ACCOUNT_RESTRICTION</p></td>
<td align="left"><p>While auto-discovering the Exchange server, a policy is applied that prevents the logged-in user from logging in to the server.</p></td>
<td align="left"><p>This is a timing issue. Re-verify the account's credentials. Try to re-provision when they're correct.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x800C0019</p></td>
<td align="left"><p>INET_E_INVALID_CERTIFICATE</p></td>
<td align="left"><p>Security certificate required to access this resource is invalid.</p></td>
<td align="left"><p>Install the correct ActiveSync certificate needed for the provided device account.</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x80072F0D</p></td>
<td align="left"><p>WININET_E_INVALID_CA</p></td>
<td align="left"><p>The certificate authority is invalid or is incorrect. Could not auto-discover the Exchange server because a certificate is missing.</p></td>
<td align="left"><p>Install the correct ActiveSync certificate needed for the provided device account.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x80004005</p></td>
<td align="left"><p>E_FAIL</p></td>
<td align="left"><p>The domain provided couldn't be found. The Exchange server could not be auto-discovered and was not provided in the settings.</p></td>
<td align="left"><p>Make sure that the domain entered is the FQDN, and that there is an Exchange server entered in the Exchange server text box.</p></td>
</tr>
</tbody>
</table>

 

 
## Related content

- [Troubleshooting Miracast connection to the Surface Hub](https://docs.microsoft.com/surface-hub/miracast-troubleshooting)
 





