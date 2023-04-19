---
title: Activate using Active Directory-based activation
description: Learn how active directory-based activation is implemented as a role service that relies on AD DS to store activation objects.
ms.reviewer: nganguly
manager: aaroncz
author: frankroj
ms.author: frankroj
ms.prod: windows-client
ms.technology: itpro-fundamentals
ms.localizationpriority: medium
ms.date: 11/07/2022
ms.topic: how-to
ms.collection:
  - highpri
  - tier2
---

# Activate using Active Directory-based activation

**Applies to:**

- Windows
- Windows Server
- Office

> [!TIP]
> Are you looking for information on retail activation?
>
> - [Activate Windows](https://support.microsoft.com/help/12440/)
> - [Product activation for Windows](https://go.microsoft.com/fwlink/p/?LinkId=618644)

Active Directory-based activation is implemented as a role service that relies on AD DS to store activation objects. Active Directory-based activation requires that you update the forest schema using `adprep.exe` on a supported server OS. After the schema is updated, older domain controllers can still activate clients.

Any domain-joined computers running a supported OS with a Generic Volume License Key (GVLK) will be activated automatically and transparently. They'll stay activated as long as they remain members of the domain and maintain periodic contact with a domain controller. Activation takes place after the Licensing service starts. When this service starts, the computer contacts AD DS automatically, receives the activation object, and is activated without user intervention.

To allow computers with GVLKs to activate themselves, use the Volume Activation Tools console, or the [Volume Activation Management Tool (VAMT)](volume-activation-management-tool.md) in earlier versions of Windows Server to create an object in the AD DS forest. You create this activation object by submitting a KMS host key to Microsoft, as shown in Figure 10.

The process proceeds as follows:

1. Do *one* of the following tasks:

    - Install the Volume Activation Services server role on a domain controller. Then add a KMS host key by using the Volume Activation Tools Wizard.

    - Extend the domain schema level to Windows Server 2012 R2 or later. Then add a KMS host key by using the VAMT.

2. Microsoft verifies the KMS host key, and an activation object is created.

3. Client computers are activated by receiving the activation object from a domain controller during startup.

    > [!div class="mx-imgBorder"]
    > ![Active Directory-based activation flow.](../images/volumeactivationforwindows81-10.jpg)

    **Figure 10**. The Active Directory-based activation flow

For environments in which all computers are running a supported OS version, and they're joined to a domain, Active Directory-based activation is the best option for activating all client computers and servers. You may be able to remove any KMS hosts from your environment.

If an environment will continue to contain earlier versions of volume licensed operating systems and applications, or if you have workgroup computers outside the domain, you need to maintain a KMS host to maintain activation status.

Clients that are activated with Active Directory-based activation will maintain their activated state for up to 180 days since the last contact with the domain. They'll periodically attempt to reactivate before then and at the end of the 180 day period. By default, this reactivation event occurs every seven days.

When a reactivation event occurs, the client queries AD DS for the activation object. Client computers examine the activation object and compare it to the local edition as defined by the GVLK. If the object and GVLK match, reactivation occurs. If the AD DS object can't be retrieved, client computers use KMS activation. If the computer is removed from the domain, and the computer or the Software Protection service is restarted, Windows will change the status to "not activated" and the computer will try to activate with KMS.

## Step-by-step configuration: Active Directory-based activation

> [!NOTE]
> You must be a member of the local **Administrators** group on all computers mentioned in these steps. You also need to be a member of the **Enterprise Administrators** group, because setting up Active Directory-based activation changes forest-wide settings.

To configure Active Directory-based activation on a supported version of Windows Server, complete the following steps:

1. Use an account with **Domain Administrator** and **Enterprise Administrator** credentials to sign in to a domain controller.

2. Launch **Server Manager**.

3. Add the **Volume Activation Services** role, as shown in Figure 11.

    ![Adding the Volume Activation Services role.](../images/volumeactivationforwindows81-11.jpg)

    **Figure 11**. Adding the Volume Activation Services role

4. Select the **Volume Activation Tools**, as shown in Figure 12.

    ![Launching the Volume Activation Tools.](../images/volumeactivationforwindows81-12.jpg)

    **Figure 12**. Launching the Volume Activation Tools

5. Select the **Active Directory-Based Activation** option, as shown in Figure 13.

    ![Selecting Active Directory-Based Activation.](../images/volumeactivationforwindows81-13.jpg)

    **Figure 13**. Selecting Active Directory-Based Activation

6. Enter your KMS host key and optionally specify a display name, as shown in Figure 14.

    ![Choosing how to activate your product.](../images/volumeactivationforwindows81-15.jpg)

    **Figure 14**. Entering your KMS host key

7. Activate your KMS host key by phone or online, as shown in Figure 15.

    ![Entering your KMS host key.](../images/volumeactivationforwindows81-14.jpg)

    **Figure 15**. Choosing how to activate your product

    > [!NOTE]
    > To activate a KMS Host Key (CSVLK) for Microsoft Office, you need to install the version-specific Office Volume License Pack on the server where the Volume Activation Server Role is installed.
    >
    > - [Office 2013 VL pack](https://www.microsoft.com/download/details.aspx?id=35584)
    >
    > - [Office 2016 VL pack](https://www.microsoft.com/download/details.aspx?id=49164)
    >
    > - [Office 2019 VL pack](https://www.microsoft.com/download/details.aspx?id=57342)
    >
    > - [Office LTSC 2021 VL pack](https://www.microsoft.com/download/details.aspx?id=103446)
    >
    > For more information, see [Activate volume licensed versions of Office by using Active Directory](/deployoffice/vlactivation/activate-office-by-using-active-directory).

8. After activating the key, select **Commit**, and then select **Close**.

## Verifying the configuration of Active Directory-based activation

To verify your Active Directory-based activation configuration, complete the following steps:

1. After you configure Active Directory-based activation, start a computer that is running an edition of Windows that's configured by volume licensing.

2. If the computer has been previously configured with a MAK key, replace the MAK key with the GVLK. Run the `slmgr.vbs /ipk` command and specifying the GLVK as the new product key.

3. If the computer isn't joined to your domain, join it to the domain.

4. Sign in to the computer.

5. Open Windows Explorer, right-click **Computer**, and then select **Properties**.

6. Scroll down to the **Windows activation** section, and verify that this client has been activated.

    > [!NOTE]
    > If you're using both KMS and Active Directory-based activation, it may be difficult to see whether a client has been activated by KMS or by Active Directory-based activation. Consider disabling KMS during the test, or make sure that you are using a client computer that hasn't already been activated by KMS. The `slmgr.vbs /dlv` command also indicates whether KMS has been used.
    >
    > To manage individual activations or apply multiple (mass) activations, use the [VAMT](./volume-activation-management-tool.md).

## Related articles

[Volume Activation for Windows 10](volume-activation-windows-10.md)
