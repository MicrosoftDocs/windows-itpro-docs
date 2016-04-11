---
title: Password management (Surface Hub)
description: Every Microsoft Surface Hub device account requires a password to authenticate and enable features on the device.
ms.assetid: 0FBFB546-05F0-430E-905E-87111046E4B8
keywords: ["password", "password management", "password rotation", "device account"]
author: TrudyHa
---

# Password management (Surface Hub)


Every Microsoft Surface Hub device account requires a password to authenticate and enable features on the device. For security reasons, you may want to change ( or "rotate") this password. However, if the device account’s password changes, the device account on the Surface Hub will be expired, and all features that depend on the device account will be disabled. You can update the device account’s password on the Surface Hub from the Settings app to re-enable these features.

To prevent the device account from expiring, there are two options:

1.  Set the password on the device account so it doesn't expire.
2.  Allow the Surface Hub to automatically rotate the device account’s password.

## Setting the password so it doesn't expire


Set the device account’s **PasswordNeverExpires** property to True. You should verify whether this meets your organization’s security requirements.

## Allow the Surface Hub to manage the password


The Surface Hub can manage a device account’s password by changing it frequently without requiring you to manually update the device account’s information from the Surface Hub. You can enable this feature in **Settings**. Once enabled, the device account's password will change daily.

Note that when the device account’s password is changed, you will not be shown the new password. If you need to sign in to the account, or to provide the password again (for example, if you want to change the device account settings on the Surface Hub), then you'll need use Active Directory to reset the password.

For your device account to use password rotation, you must meet enter the device account’s information when you set up your Surface Hub (during First-run experience), or in **Settings**. The format you'll use depends on where your device account it hosted:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Environment</th>
<th align="left">Required format for device account</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Device account is hosted only online</p></td>
<td align="left"><p>username@contoso.com</p></td>
</tr>
<tr class="even">
<td align="left"><p>Device account is hosted only on-prem</p></td>
<td align="left"><p>DOMAIN\username</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Device account is hosted online and on-prem (hybrid)</p></td>
<td align="left"><p>DOMAIN\username</p></td>
</tr>
</tbody>
</table>

 

 

 





