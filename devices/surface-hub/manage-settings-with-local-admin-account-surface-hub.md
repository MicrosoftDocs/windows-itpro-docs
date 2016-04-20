---
title: Manage settings with a local admin account (Surface Hub)
description: A local admin account will be set up on every Microsoft Surface Hub as part of the first run program. The only way to change the local admin options that you chose at that time is to reset the device.
ms.assetid: B4B3668B-985D-427E-8495-E30ABEECA679
keywords: ["local admin account", "Surface Hub", "change local admin options"]
author: TrudyHa
---

# Manage settings with a local admin account (Surface Hub)


A local admin account will be set up on every Microsoft Surface Hub as part of the first run program. The only way to change the local admin options that you chose at that time is to reset the device.

Every device can be configured individually by opening the Settings app on the device you want to configure. However, to prevent people who are not administrators from changing the devices’ settings, the Settings app requires local administrator credentials to open the app and change settings.

You can set up a local administrator in one of three ways (see [Setting up admins for this device](first-run-program-surface-hub.md#setup-admins)):

1.  Create a local admin
2.  Domain join the device (AD)
3.  Azure Active Directory (Azure AD) join the device.

### Which method should I choose?

If your organization is using Active Directory or Azure AD, we recommend you either domain join or join Azure AD, primarily for security reasons. People will be able to authenticate and unlock Settings with their own credentials, and can be moved in or out of the security groups associated with your domain or organization.

Preferably, a local admin is set up only if you do not have Active Directory or Azure AD, or if you cannot connect to your Active Directory or Azure AD during first run.

### Summary table

<table>
<tr>
<th>How is the local admin set up?</th>
<th>Requirements</th>
<th>Which credentials will open Settings?</th>
</tr>
<tr>
<td>A local admin was created<p></p>
</td>
<td>
<p>None</p>
</td>
<td>
<p>The credentials of the local admin account.</p>
</td>
</tr>
<tr>
<td>
<p>The device is joined to a domain (AD)</p>
</td>
<td>
<p>Your organization is using Active Directory</p>
</td>
<td>
<p>Credentials of any Active Directory account from the security group that was specified furing first run.</p>
</td>
</tr>
<tr>
<td rowspan="2">
<p>The device is joined to Azure AD</p>
</td>
<td>
<p>Your organization is using Azure AD Basic</p>
</td>
<td>
<p>Tenant or device admins</p>
</td>
</tr>
<tr>
<td>
<p>Your organization is using Azure AD Premium</p>
</td>
<td>
<p>Tenant or device admins, plus additional specified employees</p>
</td>
</tr>
</table>

### Create a local admin

To create a local admin, choose to use a local admin during first run. This will create a single local admin account on the Surface Hub with the username and password of your choice. These same credentials will unlock the Settings app (see [Setting up admins for this device](first-run-program-surface-hub.md#setup-admins)). Note that the local admin account information is not backed by any directory service. We recommend you only choose a local admin if the device does not have access to Active Directory or Azure Active Directory. If you decide to change the local admin’s password, you can do so in Settings. However, if you want to change from a local admin you created to a group from your domain or Azure AD organization, then you’ll need to reset the device and go through first-time setup again.

### Domain join the device

After you domain join the device, you can set up a security group from your domain as local administrators on the Surface Hub. You will need to provide credentials that are capable of joining the domain of your choice. After you domain join successfully, you will be asked to pick an existing security group to be set as the local admins. When the Setting app is opened, any user who is a member of that security group can enter their credentials and unlock Settings.

**Note**  Surface Hubs domain join for the sole purpose of using a security group as local admins. Group policies are not applied after the device is domain joined.

 

### Azure AD join the device

You can set up people from your Azure Active Directory (Azure AD) organization as local administrators on the Surface Hub after you Azure AD join the device. The people that are provisioned as local admins on your device depend on what Azure AD subscription you have. You will need to provide credentials that are capable of joining the Azure AD organization of your choice. After you join Azure AD successfully, the appropriate people will be set as local admins on the device. When the Setting app is opened, any user who was set up as a local admin as a result of joining Azure AD can enter their credentials and unlock Settings. We recommend that you use the device account to join Azure AD.

Otherwise, if you don’t want to use the device account to join Azure AD, you can use either of the following accounts:

-   The org account of an admin who will manage the device, or
-   A separate account that is part of your organization and used only for joining Surface Hubs.

**Note**  If your Azure AD organization is also configured with MDM enrollment, Surface Hubs will also be enrolled into MDM as a result of joining Azure AD. Surface Hubs that have joined Azure AD are subject to receiving MDM policies, and can be widely managed using an MDM solution, which opts these devices into remote management. You may want to choose an account to join Azure AD that benefits how you manage devices—you find more info about this in the [Enroll a Surface Hub into MDM](manage-settings-with-mdm-for-surface-hub.md#enroll-into-mdm) section.

 

## Related topics


[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)

 

 





