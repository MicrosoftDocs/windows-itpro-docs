---
title: Activate using Active Directory-based activation
description: Learn how active directory-based activation is implemented as a role service that relies on Active Directory Domain Services (ADDS) to store activation objects.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.service: windows-client
ms.subservice: activation
ms.localizationpriority: medium
ms.date: 03/29/2024
ms.topic: how-to
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2022</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2019</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016</a>
  - ✅ Microsoft Office
---

# Activate using Active Directory-based activation

> [!TIP]
>
> Looking for information on retail activation?
>
> - [Activate Windows](https://support.microsoft.com/windows/activate-windows-c39005d4-95ee-b91e-b399-2820fda32227).
> - [Product activation for Windows](https://support.microsoft.com/windows/product-activation-for-windows-online-support-telephone-numbers-35f6a805-1259-88b4-f5e9-b52cccef91a0).

Active Directory-based activation is implemented as a role service that relies on Active Directory Domain Services (ADDS) to store activation objects. Active Directory-based activation requires updating the forest schema with `adprep.exe` on a supported server OS. After the schema is updated, older domain controllers can still activate clients.

Any domain-joined computers running a supported OS with a Generic Volume License Key (GVLK) is activated automatically and transparently. Domain-joined computers stay activated as long as they remain members of the domain and maintain periodic contact with a domain controller. Activation takes place after the Licensing service starts. When this service starts, the computer contacts ADDS automatically, receives the activation object, and is activated without user intervention.

To allow computers with GVLKs to activate themselves, use the Volume Activation Tools console, or the [Volume Activation Management Tool (VAMT)](volume-activation-management-tool.md) in earlier versions of Windows Server to create an object in the ADDS forest. The activation object is created by submitting a Key Management Service (KMS) host key to Microsoft, as shown in Figure 10.

The process proceeds as follows:

1. Do *one* of the following tasks:

    - Install the Volume Activation Services server role on a domain controller, then add a KMS host key by using the Volume Activation Tools Wizard.

    - Extend the domain schema level to Windows Server 2012 R2 or later, then add a KMS host key by using the VAMT.

1. Microsoft verifies the KMS host key, and an activation object is created.

1. Client computers are activated by receiving the activation object from a domain controller during startup.

    > [!div class="mx-imgBorder"]
    > ![Active Directory-based activation flow.](../images/volumeactivationforwindows81-10.jpg)

    **Figure 10**. The Active Directory-based activation flow

For environments where all computers are domain joined and running a supported OS version, Active Directory-based activation is the best option for activating client computers and servers. Active Directory-based activation might allow removal of any KMS hosts from the environment. If an environment contains one of the following items:

- Earlier versions of volume licensed operating systems and applications
- Workgroup computers outside the domain

a KMS host is still needed to maintain activation status.

Clients that are activated with Active Directory-based activation maintain their activated state for up to 180 days since the last contact with the domain. They periodically attempt to reactivate before then and at the end of the 180 day period. By default, this reactivation event occurs every seven days.

When a reactivation event occurs, the client queries ADDS for the activation object. Client computers examine the activation object and compare it to the local edition as defined by the GVLK. If the object and the GVLK match, then reactivation occurs. If the ADDS object can't be retrieved, client computers use KMS activation. If the computer is removed from the domain and the computer or the Software Protection service is restarted, Windows changes the status to **Not Activated** and the computer tries to activate with KMS.

## Step-by-step configuration: Active Directory-based activation

> [!NOTE]
>
> The administrator following these steps must be a member of the local **Administrators** group on all computers mentioned in these steps. Additionally, they also need to be a member of the **Enterprise Administrators** group, because setting up Active Directory-based activation changes forest-wide settings.

To configure Active Directory-based activation on a supported version of Windows Server, complete the following steps:

1. Use an account with **Domain Administrator** and **Enterprise Administrator** credentials to sign in to a domain controller.

1. Launch **Server Manager**.

1. Add the **Volume Activation Services** role, as shown in Figure 11.

    ![Adding the Volume Activation Services role.](../images/volumeactivationforwindows81-11.jpg)

    **Figure 11**. Adding the Volume Activation Services role

1. Select the **Volume Activation Tools**, as shown in Figure 12.

    ![Launching the Volume Activation Tools.](../images/volumeactivationforwindows81-12.jpg)

    **Figure 12**. Launching the Volume Activation Tools

1. Select the **Active Directory-Based Activation** option, as shown in Figure 13.

    ![Selecting Active Directory-Based Activation.](../images/volumeactivationforwindows81-13.jpg)

    **Figure 13**. Selecting Active Directory-Based Activation

1. Enter the organization's KMS host key and optionally specify a display name, as shown in Figure 14.

    ![Entering the organization's KMS host key.](../images/volumeactivationforwindows81-15.jpg)

    **Figure 14**. Entering the organization's KMS host key

1. Activate the organization's KMS host key by phone or online, as shown in Figure 15.

    ![Choosing how to activate the product.](../images/volumeactivationforwindows81-14.jpg)

    **Figure 15**. Choosing how to activate the product

    > [!NOTE]
    > To activate a KMS Host Key/Customer Specific Volume License Key (CSVLK) for Microsoft Office, the version-specific Office Volume License Pack needs to be installed on the server where the Volume Activation Server Role is installed.
    >
    > - [Office 2016 VL pack](https://www.microsoft.com/download/details.aspx?id=49164).
    >
    > - [Office 2019 VL pack](https://www.microsoft.com/download/details.aspx?id=57342).
    >
    > - [Office LTSC 2021 VL pack](https://www.microsoft.com/download/details.aspx?id=103446).
    >
    > For more information, see [Activate volume licensed versions of Office by using Active Directory](/deployoffice/vlactivation/activate-office-by-using-active-directory).

1. After activating the key, select **Commit**, and then select **Close**.

## Verifying the configuration of Active Directory-based activation

To verify the Active Directory-based activation configuration, complete the following steps:

1. After configuring Active Directory-based activation, start a computer running an edition of Windows configured by volume licensing.

1. If the computer was previously configured with a MAK key, replace the MAK key with the GVLK. Run the `slmgr.vbs /ipk` command and specifying the GVLK as the new product key.

1. If the computer isn't joined to the organization's domain, join it to the domain.

1. Sign in to the computer.

1. Open Windows Explorer, right-click **Computer**, and then select **Properties**.

1. Scroll down to the **Windows activation** section, and verify that this client is activated.

    > [!NOTE]
    >
    > If using both KMS and Active Directory-based activation, it might be difficult to determine is a client was activated with KMS or by Active Directory-based activation. During the test, consider disabling KMS, or ensure to use a client computer not already activated by KMS. The `slmgr.vbs /dlv` command also indicates if KMS was used.
    >
    > To manage individual activations or apply multiple (mass) activations, use the [VAMT](./volume-activation-management-tool.md).

## Related content

- [Volume Activation for Windows](volume-activation-windows.md).
