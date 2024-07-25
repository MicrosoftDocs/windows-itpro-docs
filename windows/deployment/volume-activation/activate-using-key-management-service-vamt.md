---
title: Activate using Key Management Service
description: Learn how to use Key Management Service (KMS) to activate Windows.
ms.service: windows-client
ms.subservice: itpro-fundamentals
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.localizationpriority: medium
ms.date: 03/29/2024
ms.topic: how-to
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
> - [Activate Windows](https://support.microsoft.com/windows/activate-windows-c39005d4-95ee-b91e-b399-2820fda32227)
> - [Product activation for Windows](https://support.microsoft.com/windows/product-activation-for-windows-online-support-telephone-numbers-35f6a805-1259-88b4-f5e9-b52cccef91a0)

Volume activation can be performed via Key Management Service (KMS). KMS can be hosted either on a client version of Windows or on Windows Server.

## Key Management Service in a client version of Windows

Installing a KMS host key on a computer running a client version of Windows allows the following scenarios against this KMS host:

- Activation of other computers running the same client version of Windows.
- Activation of other computers running earlier client versions of Windows.

Clients locate the KMS server by using resource records in DNS, so some configuration of DNS is required. This scenario can be beneficial if the organization uses volume activation for clients and MAK-based activation for a smaller number of servers.

To enable KMS functionality, a KMS key is installed on a KMS host. The host is then activated over the Internet or by phone using Microsoft activation services.

### Configure KMS in a client version of Windows

KMS can be activated on client versions of Windows by using the `slmgr.vbs`. To activate KMS on a client version of Windows, follow these steps:

1. Open an elevated Command Prompt window.

1. In the elevated Command Prompt window, run the following command to install the KMS key:

   ```cmd
   cscript.exe slmgr.vbs /ipk <KMS_Key>
   ```

1. Once the KMS key is installed, it needs to be activated using one of the following methods:

   - To activate online, in the elevated Command Prompt window, run the following command:

    ```cmd
    cscript.exe slmgr.vbs /ato
    ```

   - To activate by telephone, follow these steps:

      1. In the elevated Command Prompt window, run the following command:

         ```cmd
         cscript.exe slmgr.vbs /dti
         ```

         This command should display the installation ID.

      1. Call the [Microsoft Volume License Key assisted support telephone numbers](https://www.microsoft.com/licensing/existing-customer/activation-centers). Follow the voice prompts and when prompted, enter the installation ID obtained in the previous step.

      1. Continue following the voice prompts. When prompted, write down the 48-digit confirmation ID for OS activation given by the prompts.

      1. In the elevated Command Prompt window, run the following command:

         ```cmd
         cscript.exe slmgr.vbs /atp <confirmation_ID_from_previous_step>
         ```

## Key Management Service in Windows Server

Installing a KMS host key on a computer running Windows Server allows activation of computers running the same or earlier versions of Windows Server. Additionally, it also allows activation of client versions of Windows.

> [!IMPORTANT]
>
> A client KMS key can't be installed into the KMS in Windows Server.

### Configure KMS in Windows Server

1. Sign in to a Windows Server server with an account that has local administrative credentials.

1. Open **Server Manager**.

1. Under the **Manage** menu in **Server Manager**, select **Add Roles and Features**. The **Add Roles and Features Wizard** window opens.

1. In the **Add Roles and Features Wizard**:

   1. In the **Before you begin** page, select the **Next >** button.

   1. In the **Select installation type**/**Installation Type** page, select **Role-based or feature-based installation**, and then select the **Next >** button.

   1. In the **Select destination server**/**Server Selection** page, make sure **Select a server from the server pool** is selected. Under **Server Pool**, select the server on which to install KMS, and then select the **Next >** button.

   1. In the **Select server roles**/**Server Roles** page, under **Roles**, select **Volume Activation Services**, and then select the **Next >** button.

   1. In the **Add features that are required for Volume Activation Services?** window that appears, select the **Add Features** button, and then select the **Next >** button.

   1. In the **Select features**/**Features** page, select the **Next >** button.

   1. In the **Volume Activation Services** page, select the **Next >** button.

   1. In the **Confirm installation selections**/**Confirmation** page, select the **Install** button.

   1. Installation can take a few minutes to complete. Once the role installation completes, select the **Close** button.

1. Go to the **Start Menu** > **Windows Administrative Tools** and select **Volume Activation Tools**. The **Volume Activation Tools** window appears.

1. In the **Volume Activation Tools** window:

   1. In the **Introduction to Volume Activation Tools**/**Introduction** page, select the **Next >** button.

   1. In the **Select Volume Activation Method**/**Activation Type** page, select the **Key Management Service (KMS)** option, and specify the computer that acts as the KMS host. This computer can be the server on which the KMS role was installed, or another server/client computer. After the server/computer is specified, select the **Next >** button.

   1. In the **Manage KMS Host**/**Product Key Management** page, enter in the KMS host key in the text box under **Install your KMS host key**, and then select the **Commit** button.

   1. If asked to confirm replacement of an existing key, select **Yes**.

   1. After the product key is installed, in the **Product Key Installation Succeeded**/**Product Key Management** page, make sure **Activate Product** is selected, and then select **Next >** button to begin the activation process.

   1. In the **Activate Product**/**Product Key Management** page, make sure the current product is shown under the **Select product** menu, and then select the desired activation method. The available methods are:

      - **Active online** - If selecting this option, select the **Commit** button to finish activating the product online.

      - **Active by phone** - If selecting this option:

         1. Select the desired location from the **Select your location** drop-down menu, and then select the **Next >** button.

         1. In the **Activate by Phone**/**Product Key Management** page, follow the instructions to activate the product by phone.

         1. Once finished, select the **Commit** button.

   1. In the **Activation Succeeded**/**Product Key Management** page, review the configuration options:

      - If the configuration options are as expected, select the **Close** button.

      - If configuration changes are desired:

         1. Select the **Next >** button.

         1. In the **Configure Key Management Service Options/Product Key Management** page, make the desired configuration changes, and then select the **Commit** button.

         1. In the **Configuration Succeeded**/**Configuration** page, select the **Close** button.

Once the KMS host is configured, it begins to listen for activation requests. However, it doesn't activate clients successfully until the activation threshold is met.

## Verifying the configuration of Key Management Service

KMS volume activation can be verified from the KMS host server or from the client computer. KMS volume activation requires a minimum threshold of 25 computers before activation requests are processed. The verification process described here increments the activation count each time a client computer contacts the KMS host. If the activation threshold hasn't been reached, the verification generates an error message instead of a confirmation message.

> [!NOTE]
>
> If Active Directory-based activation was configured before configuring KMS activation, a client computer must be used that doesn't first try to activate itself by using Active Directory-based activation. For example, a client computer that is a workgroup computer that isn't joined to a domain.

To verify that KMS volume activation works, complete the following steps:

1. On the KMS host, open the event log and confirm that DNS publishing is successful.

1. On a client computer, open an elevated Command Prompt window and run the command:

   ```cmd
   cscript.exe slmgr.vbs /ato
   ```

   The `/ato` command causes the operating system to attempt activation by using whichever key is installed in the operating system. The response should show the license state and detailed Windows version information.

1. On a client computer or the KMS host, open an elevated Command Prompt window and run the command

   ```cmd
   cscript.exe slmgr.vbs /dlv
   ```

   The `/dlv` command displays the detailed licensing information. The response should return an error that states that the KMS activation count is too low. This test confirms that KMS is functioning correctly, even though the client isn't activated.

For more information about the use and syntax of the script `slmgr.vbs`, see [Slmgr.vbs Options](/windows-server/get-started/activation-slmgr-vbs-options).

> [!IMPORTANT]
>
> Clients require RPC over TCP/IP connectivity to the KMS host to successfully activate. For more information, see [Key Management Services (KMS) activation planning: Network requirements](/windows-server/get-started/kms-activation-planning#network-requirements) and [Remote Procedure Call (RPC) errors troubleshooting guidance](/troubleshoot/windows-client/networking/rpc-errors-troubleshooting).

## Related content

- [Key Management Services (KMS) activation planning](/windows-server/get-started/kms-activation-planning).
