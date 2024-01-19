---
title: Accounts CSP
description: The Accounts configuration service provider (CSP) is used by the enterprise to rename devices, and create local Windows accounts & join them to a group.
ms.date: 03/27/2020
---

# Accounts CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The Accounts configuration service provider (CSP) is used by the enterprise (1) to rename a device, (2) to create a new local Windows account and join it to a local user group. This CSP was added in Windows 10, version 1803, and later.

The following syntax shows the Accounts configuration service provider in tree format.

```console
./Device/Vendor/MSFT
Accounts
----Domain
--------ComputerName
----Users
--------UserName
------------Password
------------LocalUserGroup
```

<a href="" id="accounts"></a>**./Device/Vendor/MSFT/Accounts**
Root node.

<a href="" id="domain"></a>**Domain**
Interior node for the account domain information.

<a href="" id="domain-computername"></a>**Domain/ComputerName**
This node specifies the DNS hostname for a device. This setting can be managed remotely, but this remote management isn't supported for devices hybrid joined to Microsoft Entra ID and an on-premises Active directory. The server must explicitly reboot the device for this value to take effect. A couple of macros can be embedded within the value for dynamic substitution. Using any of these macros will limit the new name to 15 characters.

Available naming macros:

|Macro|Description|Example|Generated Name|
|:---|:---|:---|:---|
|`%RAND:#%`|Generates the specified number (`#`) of random digits.|`Test%RAND:6%`|`Test123456`|
|`%SERIAL%`|Generates the serial number derived from the device. If the serial number causes the new name to exceed the 15 character limit, the serial number will be truncated from the beginning of the sequence.|`Test-Device-%SERIAL%`|`Test-Device-456`|

> [!NOTE]
> If you use these naming macros, a unique name isn't guaranteed. The generated name may still be duplicated. To reduce the likelihood of a duplicated device name, use `%RAND:#%` with a large number. With the understanding that the maximum device name is 15 characters.

Supported operation is Add.

> [!Note]
> For desktop PCs on Windows 10, version 2004 or later, use the **Ext/Microsoft/DNSComputerName** node in [DevDetail CSP](devdetail-csp.md).

<a href="" id="users"></a>**Users**
Interior node for the user account information.

<a href="" id="users-username"></a>**Users/_UserName_**
This node specifies the username for a new local user account. This setting can be managed remotely.

<a href="" id="users-username-password"></a>**Users/_UserName_/Password**
This node specifies the password for a new local user account. This setting can be managed remotely.

Supported operation is Add.
GET operation isn't supported.  This setting will report as failed when deployed from Intune.

<a href="" id="users-username-localusergroup"></a>**Users/_UserName_/LocalUserGroup**
This optional node specifies the local user group that a local user account should be joined to.  If the node isn't set, the new local user account is joined just to the Standard Users group.  Set the value to 2 for Administrators group. This setting can be managed remotely.

Supported operation is Add.

## Related articles

[Configuration service provider reference](index.yml)
