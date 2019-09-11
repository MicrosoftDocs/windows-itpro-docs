---
title: Dual Enrollment
description: Dual Enrollment
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, cert-trust, device, registration, unlock, dual enrollment,
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 09/09/2019
ms.reviewer: 
---

# Dual Enrollment

**Requirements**

* Hybrid and On-premises Windows Hello for Business deployments
* Enterprise Joined or Hybrid Azure joined devices
* Windows 10, version 1709

> [!NOTE]
> This feature was previously known as **Privileged Credential** but was renamed to **Dual Enrollment** to prevent any confusion with the **Privileged Access Workstation** feature.

> [!IMPORTANT]
> Dual enrollment does not replace or provide the same security as Privileged Access Workstations feature.  Microsoft encourages enterprises to use the Privileged Access Workstations for their privileged credential users.  Enterprises can consider Windows Hello for Business dual enrollment in situations where the Privileged Access feature cannot be used.  Read [Privileged Access Workstations](https://docs.microsoft.com/windows-server/identity/securing-privileged-access/privileged-access-workstations) for more information.

Dual enrollment enables administrators to perform elevated, administrative functions by enrolling both their non-privileged and privileged credentials on their device.

By design, Windows 10 does not enumerate all Windows Hello for Business users from within a user's session.  Using the computer Group Policy setting, **Allow enumeration of emulated smart card for all users**, you can configure a device to enumerate all enrolled Windows Hello for Business credentials on selected devices.

With this setting, administrative users can sign-in to Windows 10, version 1709 using their non-privileged Windows Hello for Business credentials for normal work flow such as email, but can launch Microsoft Management Consoles (MMCs), Remote Desktop Services clients, and other applications by selecting **Run as different user** or **Run as administrator**, selecting the privileged user account, and providing their PIN.  Administrators can also take advantage of this feature with command line applications by using **runas.exe** combined with the **/smartcard** argument.  This enables administrators to perform their day-to-day operations without needing to sign-in and out, or use fast user switching when alternating between privileged and non-privileged workloads.

> [!IMPORTANT]
> You must configure a Windows 10 computer for Windows Hello for Business dual enrollment before either user (privileged or non-privileged) provisions Windows Hello for Business.  Dual enrollment is a special setting that is configured on the Windows Hello container during creation.

## Configure Windows Hello for Business Dual Enrollment

In this task you will

* Configure Active Directory to support Domain Administrator enrollment
* Configure Dual Enrollment using Group Policy

### Configure Active Directory to support Domain Administrator enrollment

The designed Windows for Business configuration has you give the **Key Admins** (or **KeyCredential Admins** when using domain controllers prior to Windows Server 2016) group read and write permissions to the msDS-KeyCredentialsLink attribute.  You provided these permissions at root of the domain and use object inheritance to ensure the permissions apply to all users in the domain regardless of their location within the domain hierarchy.

Active Directory Domain Services uses AdminSDHolder to secure privileged users and groups from unintentional modification by comparing and replacing the security on privileged users and groups to match those defined on the AdminSDHolder object on an hourly cycle. For Windows Hello for Business, your domain administrator account may receive the permissions but will they will disappear from the user object unless you give the AdminSDHolder read and write permissions to the msDS-KeyCredential attribute.

Sign-in to a domain controller or management workstation with access equivalent to _domain administrator_.

1. Type the following command to add the **allow** read and write property permissions for msDS-KeyCredentialLink attribute for the **Key Admins** (or **KeyCredential Admins**) group on the AdminSDHolder object.</br>
```dsacls "CN=AdminSDHolder,CN=System,DC=domain,DC=com" /g "[domainName\keyAdminGroup]":RPWP;msDS-KeyCredentialLink```</br>
where **DC=domain,DC=com** is the LDAP path of your Active Directory domain and **domainName\keyAdminGroup]** is the NetBIOS name of your domain and the name of the group you use to give access to keys based on your deployment.  For example:</br>
```dsacls "CN=AdminSDHolder,CN=System,DC=corp,DC=mstepdemo,DC=net" /g "mstepdemo\Key Admins":RPWP;msDS-KeyCredentialLink```
2. To trigger security descriptor propagation, open **ldp.exe**.
3. Click **Connection** and select **Connect...**  Next to **Server**, type the name of the domain controller that holds the PDC role for the domain. Next to **Port**, type **389** and click **OK**.
4. Click **Connection** and select **Bind...**  Click **OK** to bind as the currently signed-in user.
5. Click **Browser** and select **Modify**.  Leave the **DN** text box blank.  Next to **Attribute**, type **RunProtectAdminGroupsTask**. Next to **Values**, type **1**.  Click **Enter** to add this to the **Entry List**.
6. Click **Run** to start the task.
7. Close LDP.  

### Configuring Dual Enrollment using Group Policy

You configure Windows 10 to support dual enrollment using the computer configuration portion of a Group Policy object.

1. Using the Group Policy Management Console (GPMC), create a new domain-based Group Policy object and link it to an organizational Unit that contains Active Directory computer objects used by privileged users.
2. Edit the Group Policy object from step 1.
3. Enable the **Allow enumeration of emulated smart cards for all users** policy setting located under **Computer Configuration->Administrative Templates->Windows Components->Windows Hello for Business**.
4. Close the Group Policy Management Editor to save the Group Policy object.  Close the GPMC.
5. Restart computers targeted by this Group Policy object.

The computer is ready for dual enrollment.  Sign-in as the privileged user first and enroll for Windows Hello for Business. Once completed, sign-out and sign-in as the non-privileged user and enroll for Windows Hello for Business.  You can now use your privileged credential to perform privileged tasks without using your password and without needing to switch users.

## Related topics

* [Windows Hello for Business](hello-identity-verification.md)
* [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
* [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
* [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
* [Windows Hello and password changes](hello-and-password-changes.md)
* [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
* [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
* [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)
