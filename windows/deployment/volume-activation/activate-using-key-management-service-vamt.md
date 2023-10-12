---
title: Activate using Key Management Service
description: Learn how to use Key Management Service (KMS) to activate Windows.
ms.reviewer: nganguly
ms.prod: windows-client
ms.technology: itpro-fundamentals
author: frankroj
manager: aaroncz
ms.author: frankroj
ms.localizationpriority: medium
ms.date: 10/04/2023
ms.topic: how-to
ms.collection:
  - highpri
  - tier2
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2022</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2019</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016</a>
---

# Activate using Key Management Service

> [!TIP]
>
> For information on retail activation, see the following articles:
>
> - [Activate Windows](https://support.microsoft.com/help/12440/)
> - [Product activation for Windows](https://go.microsoft.com/fwlink/p/?LinkId=618644)

Volume activation can be performed via Key Management Service (KMS). KMS can be hosted either on a client version of Windows or on Windows Server.

## Key Management Service in a client version of Windows

Installing a KMS host key on a computer running a client version of Windows allows the following scenarios against this KMS host:

- Activation of other computers running the same client version of Windows.
- Activation of other computers running earlier client versions of Windows.

Clients locate the KMS server by using resource records in DNS, so some configuration of DNS may be required. This scenario can be beneficial if the organization uses volume activation for clients and MAK-based activation for a smaller number of servers.

To enable KMS functionality, a KMS key is installed on a KMS host. The host is then activated over the Internet or by phone using Microsoft activation services.

### Configure KMS in a client version of Windows

KMS can be activated on client versions of Windows by using the `slmgr.vbs`. To activate KMS on a client version of Windows, follow these steps:

1. Open an elevated Command Prompt window.

1. In the elevated Command Prompt window, run the following command to install the KMS key:

   ```cmd
   cscript.exe slmgr.vbs /ipk <KMS_Key>
   ```

1. Once the KMS key has been installed, it needs to be activated using one of the following methods:

   - To activate online, in the elevated Command Prompt window, run the following command:

    ```cmd
    cscript.exe slmgr.vbs /ato
    ```

   - To activate by telephone, follow these steps:

      1. In the elevated Command Prompt window, run the following command:

         ```cmd
         cscript.exe slmgr.vbs /dti
         ```

         This should display the installation ID.

      1. Call the [Microsoft Volume License Key assisted support telephone numbers](https://www.microsoft.com/licensing/existing-customer/activation-centers). Follow the voice prompts and when prompted, enter the installation ID obtained in the previous step.

      1. Continue following the voice prompts. When prompted, write down the 48-digit confirmation ID for OS activation given by the prompts.

      1. In the elevated Command Prompt window, run the following command:

         ```cmd
         cscript.exe slmgr.vbs /atp \<confirmation_ID_from_previous_step\>
         ```

## Key Management Service in Windows Server

Installing a KMS host key on a computer running Windows Server allows you to activate computers running the same or earlier versions of Windows Server. Additionally, it also allows activation of client versions of Windows.

> [!IMPORTANT]
>
> You cannot install a client KMS key into the KMS in Windows Server.

### Configure KMS in Windows Server

1. Sign in to a Windows Server server with an account that has local administrative credentials.

1. Open **Server Manager**.

1. Under the **Manage** menu in **Server Manager**, select **Add Roles and Features**. This opens the **Add Roles and Features Wizard**.

1. In the **Add Roles and Features Wizard**:

   1. In the **Before you begin** page, select the **Next >** button.

   1. In the **Select installation type**/**Installation Type** page, select **Role-based or feature-based installation**, and then select the **Next >** button.

   1. In the **Select destination server**/**Server Selection** page, make sure **Select a server from the server pool** is selected. Under **Server Pool**, select the server on which to install KMS, and then select the **Next >** button.

   1. In the **Select server roles**/**Server Roles** page, under **Roles**, select **Volume Activation Services**, and then select the **Next >** button.

   1. In the **Add features that are required for Volume Activation Services?** window that appears, select the **Add Features** button, and then select the **Next >** button.

   1. In the **Select features**/**Features** page, select the **Next >** button.

   1. In the **Volume Activation Services** page, select the **Next >** button.

   1. In the **Confirm installation selections**/**Confirmation** page, select the **Install** button.

   1. Installation may take a few minutes to complete. Once the role installation completes, select the **Close** button.

1. Go to the **Start Menu** > **Windows Administrative Tools** and select **Volume Activation Tools**. The **Volume Activation Tools** window appears.

1. In the **Volume Activation Tools** window:

   1. In the **Introduction to Volume Activation Tools**/**Introduction** page, select the **Next >** button.

   1. In the **Select Volume Activation Method**/**Activation Type** page, select the **Key Management Service (KMS)** option, and specify the computer that acts as the KMS host. This computer can be the server on which the KMS role was installed, or another server/client computer. After the server/computer has been specified, select the **Next >** button.

   1. In the **Manage KMS Host**/**Product Key Management** page, enter in the KMS host key in the text box under **Install your KMS host key**, and then select the **Commit** button.

   1. If asked to confirm replacement of an existing key, select **Yes**.

   1. After the product key is installed, in the **Product Key Installation Succeeded**/**Product Key Management** page, make sure **Activate Product** is selected, and then select **Next >** button to begin the activation process.

   1. In the **Activate Product**/**Product Key Management** page, make sure that the product shows correctly under the **Select product** menu, and then select the desired activation method. The available methods are:

      - **Active online** - If selecting this option, select the **Commit** button to finish activating the product online.

      - **Active by phone** - If selecting this option, select the **Show me other ways to activate** drop-down menu, and then select **Use the automated phone system**. Follow the instructions to activate the product by phone.

Once the KMS host is configured, it begins to listen for activation requests. However, it doesn't activate clients successfully until the activation threshold is met.

## Verifying the configuration of Key Management Service

KMS volume activation can be verified from the KMS host server or from the client computer. KMS volume activation requires a minimum threshold of 25 computers before activation requests are processed. The verification process described here increments the activation count each time a client computer contacts the KMS host. If the activation threshold hasn't been reached, the verification generates an error message instead of a confirmation message.

> [!NOTE]
>
> If you configured Active Directory-based activation before configuring KMS activation, you must use a client computer that will not first try to activate itself by using Active Directory-based activation. You could use a workgroup computer that is not joined to a domain or a computer running Windows 7 or Windows Server 2008 R2.

To verify that KMS volume activation works, complete the following steps:

1. On the KMS host, open the event log and confirm that DNS publishing is successful.

2. On a client computer, open a Command Prompt window and run the command `Slmgr.vbs /ato`.

   The `/ato` command causes the operating system to attempt activation by using whichever key has been installed in the operating system. The response should show the license state and detailed Windows version information.

3. On a client computer or the KMS host, open an elevated Command Prompt window and run the command `Slmgr.vbs /dlv`.

   The `/dlv` command displays the detailed licensing information. The response should return an error that states that the KMS activation count is too low. This test confirms that KMS is functioning correctly, even though the client hasn't been activated.

For more information about the use and syntax of slmgr.vbs, see [Slmgr.vbs Options](/windows-server/get-started/activation-slmgr-vbs-options).

## Key Management Service in earlier versions of Windows

If you've already established a KMS infrastructure in your organization for an earlier version of Windows, you may want to continue using that infrastructure to activate computers running Windows 10 or Windows Server 2012 R2. Your existing KMS host must be running Windows 7 or later. To upgrade your KMS host, complete the following steps:

1. Download and install the correct update for your current KMS host operating system. Restart the computer as directed.
2. Request a new KMS host key from the Volume Licensing Service Center.
3. Install the new KMS host key on your KMS host.
4. Activate the new KMS host key by running the slmgr.vbs script.

For detailed instructions, see [Update that enables Windows 8.1 and Windows 8 KMS hosts to activate a later version of Windows](https://go.microsoft.com/fwlink/p/?LinkId=618265) and [Update that enables Windows 7 and Windows Server 2008 R2 KMS hosts to activate Windows 10](https://go.microsoft.com/fwlink/p/?LinkId=626590).

## Related articles

- [Volume Activation for Windows 10](volume-activation-windows-10.md).
- [Deploy KMS Activation](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn502531)
- [Error 0xC004F015 when you activate Windows 10 Enterprise on a Windows Server 2012 R2 KMS host](/troubleshoot/windows-server/deployment/error-0xc004f015-activate-windows-10).
- [Windows Volume Activation Tips](/archive/blogs/askcore/windows-10-volume-activation-tips).


   ![Adding the Volume Activation Services role in Server Manager.](../images/volumeactivationforwindows81-04.jpg)
      ![Launching the Volume Activation Tools.](../images/volumeactivationforwindows81-05.jpg)
         ![Configuring the computer as a KMS host.](../images/volumeactivationforwindows81-06.jpg)
            ![Installing your KMS host key.](../images/volumeactivationforwindows81-07.jpg)
               ![Activating the software.](../images/volumeactivationforwindows81-08.jpg)
                  ![Choosing to activate online.](../images/volumeactivationforwindows81-09.jpg)

