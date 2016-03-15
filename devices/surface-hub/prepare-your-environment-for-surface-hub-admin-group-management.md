---
title: Admin group management Surface Hub
description: Every Microsoft Surface Hub can be configured individually by opening the Settings app on the device.
MSHAttr: PreferredLib /library
ms.assetid: FA67209E-B355-4333-B903-482C4A3BDCCE
keywords: ["admin group management", "Settings app", "configure Surface Hub"]
author: TrudyHa
---

# Admin group management - Surface Hub


Every Microsoft Surface Hub can be configured individually by opening the Settings app on the device. However, to prevent people who are not administrators from changing the settings, the Settings app requires administrator credentials to open the app and change settings.

The Settings app requires local administrator credentials to open the app.
## Admin Group Management


You can set up administrator accounts for the device in any of three ways:

-   Create a local admin account.
-   Domain join the device to Active Directory (AD).
-   Azure Active Directory (Azure AD) join the device.

### Create a local admin account

To create a local admin, choose to use a local admin during first run. This will create a single local admin account on the Surface Hub with the username and password of your choice. These same credentials will need to be provided to open the Settings app.

Note that the local admin account information is not backed by any directory service. We recommend you only choose a local admin if the device does not have access to Active Directory (AD) or Azure Active Directory (Azure AD). If you decide to change the local admin’s password, you can do so in Settings. However, if you want to change from using the local admin account to using a group from your domain or Azure AD organization, then you’ll need to reset the device and go through first-time setup again.

### Domain join the device to Active Directory (AD)

You can set a security group from your domain as local administrators on the Surface Hub after you domain join the device to AD. You will need to provide credentials that are capable of joining the domain of your choice. After you domain join successfully, you will be asked to pick an existing security group to be set as the local admins. Anyone who is a member of that security group can enter their credentials and unlock Settings.

**Note**  Surface Hubs domain join for the single purpose of using a security group as local admins. Group policies are not applied after the device is domain joined.

 

**Note**  If your Surface Hub loses trust with the domain (for example, if you remove the Surface Hub from the domain after it is domain joined), you won't be able to authenticate into the device and open up Settings. If you decide to remove the trust relationship of the Surface Hub with your domain, reset the device first.

 

### Azure Active Directory (Azure AD) join the device

You can set up IT pros from your Azure AD organization as local administrators on the Surface Hub after you join the device. The people that are provisioned as local admins on your device depend on what Azure AD subscription you have. You will need to provide credentials that are capable of joining the Azure AD organization of your choice. After you successfully join Azure AD, the appropriate people will be set as local admins on the device. Any user who was set up as a local admin as a result of this process can enter their credentials and unlock the Settings app.

**Note**  If your Azure AD organization is configured with mobile device management (MDM) enrollment, Surface Hubs will be enrolled into MDM as a result of joining Azure AD. Surface Hubs that have joined Azure AD are subject to receiving MDM policies, and can be managed using the MDM solution that your organization uses.

 

### Which should I choose?

If your organization is using AD or Azure AD, we recommend you either domain join or join Azure AD, primarily for security reasons. People will be able to authenticate and unlock Settings with their own credentials, and can be moved in or out of the security groups associated with you domain or organization.

We recommend that a local admin be set up only if you do not have Active Directory or Azure AD, or if you cannot connect to your Active Directory or Azure AD during first run.

### Summary

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">How is the local administrator set up?</th>
<th align="left">Requirements</th>
<th align="left">Which credentials can be used for the Settings app?</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">A local admin account is created.</td>
<td align="left">None.</td>
<td align="left">The credentials of the local admin that was created.</td>
</tr>
<tr class="even">
<td align="left">The Surface Hub is joined to a domain.</td>
<td align="left">Your organization is using Active Directory (AD).</td>
<td align="left">Credentials of any AD user from a specified security group</td>
</tr>
<tr class="odd">
<td align="left">The Surface Hub is joined to Azure Active Directory (Azure AD).</td>
<td align="left">Your organization is using Azure AD Basic.</td>
<td align="left">Tenant or device admins</td>
</tr>
<tr class="even">
<td align="left">Your organization is using Azure AD Premium.</td>
<td align="left">Tenant or device admins + additional specified people</td>
<td align="left"></td>
</tr>
</tbody>
</table>

 

 

 





