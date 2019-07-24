---
title: Accounts CSP
description: The Accounts configuration service provider (CSP) is used by the enterprise (1) to rename a device, (2) to create a new local Windows account and joint it to a local user group.
ms.author: lomayor
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 04/17/2018
ms.reviewer: 
manager: dansimp
---

# Accounts CSP 


The Accounts configuration service provider (CSP) is used by the enterprise (1) to rename a device, (2) to create a new local Windows account and join it to a local user group. This CSP was added in Windows 10, version 1803.


The following diagram shows the Accounts configuration service provider in tree format.

![Accounts CSP diagram](images/provisioning-csp-accounts.png) 

<a href="" id="accounts"></a>**./Device/Vendor/MSFT/Accounts**  
Root node.

<a href="" id="domain"></a>**Domain**  
Interior node for the account domain information.

<a href="" id="domain-computername"></a>**Domain/ComputerName**  
This node specifies the DNS hostname for a device. This setting can be managed remotely, but note that this not supported for devices hybrid joined to Azure Active Directory and an on-premises Active directory. The server must explicitly reboot the device for this value to take effect. A couple of macros can be embedded within the value for dynamic substitution. Using any of these macros will limit the new name to 15 characters.

Available naming macros:

|Macro|Description|Example|Generated Name|
|:---|:---|:---|:---|
|%RAND:<# of digits>|Generates the specified number of random digits.|Test%RAND:6%|Test123456|
|%SERIAL%|Generates the serial number derived from the device. If the serial number causes the new name to exceed the 15 character limit, the serial number will be truncated from the beginning of the sequence.|Test-Device-%SERIAL%|Test-Device-456|

Supported operation is Add.

<a href="" id="users"></a>**Users**  
Interior node for the user account information.

<a href="" id="users-username"></a>**Users/_UserName_**  
This node specifies the username for a new local user account.  This setting can be managed remotely.

<a href="" id="users-username-password"></a>**Users/_UserName_/Password**  
This node specifies the password for a new local user account.  This setting can be managed remotely. 

Supported operation is Add.

<a href="" id="users-username-localusergroup"></a>**Users/_UserName_/LocalUserGroup**  
This optional node specifies the local user group that a local user account should be joined to.  If the node is not set, the new local user account is joined just to the Standard Users group.  Set the value to 2 for Administrators group. This setting can be managed remotely.

Supported operation is Add.
