---
title: Dual Enrollment
description: Learn how to configure Windows Hello for Business dual enrollment and how to configure Active Directory to support Domain Administrator enrollment.
ms.date: 05/06/2024
ms.topic: how-to
---

# Dual Enrollment

[!INCLUDE [intro](deploy/includes/intro.md)]
- **Deployment type:** [!INCLUDE [tooltip-deployment-onpremises](deploy/includes/tooltip-deployment-onpremises.md)], [!INCLUDE [tooltip-deployment-hybrid](deploy/includes/tooltip-deployment-hybrid.md)]
- **Trust type:** [!INCLUDE [tooltip-cert-trust](deploy/includes/tooltip-trust-cert.md)]
- **Join type:** [!INCLUDE [tooltip-join-domain](deploy/includes/tooltip-join-domain.md)], [!INCLUDE [tooltip-join-hybrid](deploy/includes/tooltip-join-hybrid.md)]
---

> [!IMPORTANT]
> Dual enrollment does not replace or provide the same security as Privileged Access Workstations feature. Microsoft encourages organizations to use the Privileged Access Workstations for their privileged credential users. Organizations can consider Windows Hello for Business dual enrollment in situations where the Privileged Access feature can't be used. To learn more, see [Privileged Access Workstations](/windows-server/identity/securing-privileged-access/privileged-access-workstations).

Dual enrollment enables administrators to perform elevated, administrative functions by enrolling both their non-privileged and privileged credentials on their device.

By design, Windows doesn't enumerate all Windows Hello for Business users from within a user's session. Using the group policy setting, **Allow enumeration of emulated smart card for all users**, you can configure a device to enumerate all enrolled Windows Hello for Business credentials on selected devices.

With this setting, administrative users can sign in to Windows using their non-privileged Windows Hello credentials for normal work flow such as email, but can launch Microsoft Management Consoles (MMCs), Remote Desktop Services clients, and other applications by selecting **Run as different user** or **Run as administrator**, selecting the privileged user account, and providing their PIN. Administrators can also take advantage of this feature with command-line applications by using `runas.exe` combined with the `/smartcard` argument. This enables administrators to perform their day-to-day operations without needing to sign in and out, or use fast user switching when alternating between privileged and non-privileged workloads.

> [!IMPORTANT]
> You must configure a Windows computer for Windows Hello for Business dual enrollment before either user (privileged or non-privileged) provisions Windows Hello for Business. Dual enrollment is a special setting that is configured on the Windows Hello container during creation.

## Configure Windows Hello for Business Dual Enrollment

In this task, you will

- Configure Active Directory to support Domain Administrator enrollment
- Configure Dual Enrollment using Group Policy

### Configure Active Directory to support Domain Administrator enrollment

The designed Windows Hello for Business configuration gives the `Key Admins` group read and write permissions to the `msDS-KeyCredentialsLink` attribute. You provided these permissions at root of the domain and use object inheritance to ensure the permissions apply to all users in the domain regardless of their location within the domain hierarchy.

Active Directory Domain Services uses `AdminSDHolder` to secure privileged users and groups from unintentional modification by comparing and replacing the security on privileged users and groups to match those defined on the AdminSDHolder object on an hourly cycle. For Windows Hello for Business, your domain administrator account may receive the permissions but they will disappear from the user object unless you give the `AdminSDHolder` read and write permissions to the `msDS-KeyCredential` attribute.

Sign in to a domain controller or management workstation with access equivalent to *domain administrator*

1. Type the following command to add the **allow** read and write property permissions for msDS-KeyCredentialLink attribute for the `Key Admins` group on the `AdminSDHolder` object

    ```cmd
    dsacls "CN=AdminSDHolder,CN=System,DC=domain,DC=com" /g "[domainName\keyAdminGroup]":RPWP;msDS-KeyCredentialLink
    ```

    where `DC=domain,DC=com` is the LDAP path of your Active Directory domain and `domainName\keyAdminGroup` is the NetBIOS name of your domain and the name of the group you use to give access to keys based on your deployment. For example:

    ```cmd
    dsacls "CN=AdminSDHolder,CN=System,DC=corp,DC=mstepdemo,DC=net" /g "mstepdemo\Key Admins":RPWP;msDS-KeyCredentialLink
    ```

1. To trigger security descriptor propagation, open `ldp.exe`
1. Select **Connection** and select **Connect...**  Next to **Server**, type the name of the domain controller that holds the PDC role for the domain. Next to **Port**, type **389** and select **OK**
1. Select **Connection** and select **Bind...**  Select **OK** to bind as the currently signed-in user
1. Select **Browser** and select **Modify**. Leave the **DN** text box blank. Next to **Attribute**, type **RunProtectAdminGroupsTask**. Next to **Values**, type `1`. Select **Enter** to add this to the **Entry List**
1. Select **Run** to start the task
1. Close LDP

### Configuring Dual Enrollment using Group Policy

You configure Windows to support dual enrollment using the computer configuration portion of a Group Policy object:

1. Using the Group Policy Management Console (GPMC), create a new domain-based Group Policy object and link it to an organizational Unit that contains Active Directory computer objects used by privileged users
1. Edit the Group Policy object from step 1
1. Enable the **Allow enumeration of emulated smart cards for all users** policy setting located under **Computer Configuration->Administrative Templates->Windows Components->Windows Hello for Business**
1. Close the Group Policy Management Editor to save the Group Policy object. Close the GPMC
1. Restart computers targeted by this Group Policy object

The computer is ready for dual enrollment. Sign in as the privileged user first and enroll for Windows Hello for Business. Once completed, sign out and sign in as the non-privileged user and enroll for Windows Hello for Business. You can now use your privileged credential to perform privileged tasks without using your password and without needing to switch users.
