---
title: Deploying your cache node
manager: aaroncz
description: How to deploy Microsoft Connected Cache (MCC) for Enterprise and Education cache node
ms.prod: windows-client
author: amymzhou
ms.author: amyzhou
ms.topic: article
ms.date: 12/31/2017
ms.technology: itpro-updates
ms.collection: tier3
---

# Deploying your cache node

**Applies to**

- Windows 10
- Windows 11

## Steps to deploy MCC

To deploy MCC to your server:

1. [Provide Microsoft with the Azure subscription ID](#provide-microsoft-with-the-azure-subscription-id)
1. [Create the MCC Resource in Azure](#create-the-mcc-resource-in-azure)
1. [Create an MCC Node](#create-an-mcc-node-in-azure)
1. [Edit Cache Node Information](#edit-cache-node-information)
1. [Install MCC on a physical server or VM](#install-mcc-on-windows)
1. [Verify proper functioning MCC server](#verify-proper-functioning-mcc-server)
1. [Review common Issues](#common-issues) if needed.

For questions regarding these instructions contact [msconnectedcache@microsoft.com](mailto:msconnectedcache@microsoft.com)

### Provide Microsoft with the Azure subscription ID

As part of the MCC preview onboarding process an Azure subscription ID must be provided to Microsoft. 

> [!IMPORTANT]
> [Take this survey](https://aka.ms/MSConnectedCacheSignup) and provide your Azure subscription ID and contact information to be added to the allowlist for this preview. You will not be able to proceed if you skip this step.

For information about creating or locating your subscription ID, see [Steps to obtain an Azure subscription ID](mcc-enterprise-appendix.md#steps-to-obtain-an-azure-subscription-id).

### Create the MCC resource in Azure

The MCC Azure management portal is used to create and manage MCC nodes. An Azure subscription ID is used to grant access to the preview and to create the MCC resource in Azure and Cache nodes. 

Once you take the survey above and the MCC team adds your subscription ID to the allowlist, you'll be given a link to the Azure portal where you can create the resource described below. 

1. In the Azure portal home page, choose **Create a resource**:  
    :::image type="content" source="./images/ent-mcc-create-azure-resource.png" alt-text="Screenshot of the Azure portal. The create a resource option is outlined in red.":::

1. Type **Microsoft Connected Cache** into the search box, and hit **Enter** to show search results.

   > [!NOTE]
   > You won't see Microsoft Connected Cache in the drop-down list. You'll need to type the string and press enter to see the result.

1. Select **Microsoft Connected Cache Enterprise** and choose **Create** on the next screen to start the process of creating the MCC resource.

    :::image type="content" source="./images/ent-mcc-azure-search-result.png" alt-text="Screenshot of the Azure portal search results for Microsoft Connected Cache.":::
    :::image type="content" source="./images/ent-mcc-azure-marketplace.png" alt-text="Screenshot of Microsoft Connected Cache Enterprise within the Azure Marketplace.":::

1. Fill in the required fields to create the MCC resource.

    - Choose the subscription that you provided to Microsoft.
    - Azure resource groups are logical groups of resources. Create a new resource group and choose a name for your resource group.
    - Choose **(US) West US** for the location of the resource. This choice won't impact MCC if the physical location isn't in the West US, it's just a limitation of the preview.

       > [!IMPORTANT]
       > Your MCC resource will not be created properly if you do not select **(US) West US**

    - Choose a name for the MCC resource.
      - Your MCC resource must not contain the word **Microsoft** in it.

      :::image type="content" source="./images/ent-mcc-azure-create-connected-cache.png" alt-text="Screenshot of the Create a Connected Cache page within the Azure Marketplace.":::

1. Once all the information has been entered, select the **Review + Create** button. Once validation is complete, select the **Create** button to start the
    resource creation.

    :::image type="content" source="./images/ent-mcc-azure-cache-created.png" alt-text="Screenshot of the completed cache deployment within the Azure." lightbox="./images/ent-mcc-azure-cache-created.png":::

#### Error: Validation failed

- If you get a Validation failed error message on your portal, it's likely because you selected the **Location** as **US West 2** or some other location that isn't **(US) West US**.
  - To resolve this error, go to the previous step and choose **(US) West US**.

    :::image type="content" source="./images/ent-mcc-create-cache-failed.png" alt-text="Screenshot of a failed cache deployment due to an incorrect location.":::

### Create an MCC node in Azure

Creating an MCC node is a multi-step process and the first step is to access the MCC early preview management portal.

1. After the successful resource creation, select  **Go to resource**.
1. Under **Cache Node Management** section on the leftmost panel, select **Cache Nodes**.

    :::image type="content" source="./images/ent-mcc-cache-nodes.png" alt-text="Screenshot of the Cache Node Management section with the navigation link to the Cache Nodes page outlined in red.":::

1. On the **Cache Nodes** blade, select the **Create Cache Node** button.

    :::image type="content" source="./images/ent-mcc-create-cache-node.png" alt-text="Screenshot of the Cache Nodes page with the Create Cache Node option outlined in red.":::

1. Selecting the **Create Cache Node** button will open the **Create Cache Node** page; **Cache Node Name** is the only field required for cache node creation.

   | **Field Name**| **Expected Value**|**Description** |
   |---|---|---|
   | **Cache Node Name** | Alphanumeric name that doesn't include any spaces. | The name of the cache node. You may choose names based on location such as `Seattle-1`. This name must be unique and can't be changed later. |

1. Enter the information for the **Cache Node** and select the **Create** button.

   :::image type="content" source="./images/ent-mcc-create-cache-node-name.png" alt-text="Screenshot of the Cache Nodes page displaying the Cache Node Name text entry during the creation process.":::

If there are errors, the form will provide guidance on how to correct the errors.

Once the MCC node has been created, the installer instructions will be exposed. More details on the installer instructions will be addressed later in this article, in the [Install Connected Cache](#install-mcc-on-windows) section.

:::image type="content" source="./images/ent-mcc-connected-cache-installer-download.png" alt-text="Screenshot of the Connected Cache installer download button, installer instructions, and script.":::

#### Edit cache node information

Cache nodes can be deleted here by selecting the check box to the left of a **Cache Node Name** and then selecting the delete toolbar item. Be aware that if a cache node is deleted, there's no way to recover the cache node or any of the information related to the cache node.

:::image type="content" source="./images/ent-mcc-delete-cache-node.png" alt-text="Screenshot of deleting a cache node from the Cache Nodes page.":::

### Install MCC on Windows

Installing MCC on your Windows device is a simple process. A PowerShell script performs the following tasks:

- Installs the Azure CLI
- Downloads, installs, and deploys EFLOW
- Enables Microsoft Update so EFLOW can stay up to date
- Creates a virtual machine
- Enables the firewall and opens ports 80 and 22 for inbound and outbound traffic. Port 80 is used by MCC, and port 22 is used for SSH communications.
- Configures Connected Cache tuning settings.
- Creates the necessary *FREE* Azure resource - IoT Hub/IoT Edge.
- Deploys the MCC container to server.

#### Run the installer

1. Download and unzip `mccinstaller.zip` from the create cache node page or cache node configuration page, both of which contain the necessary installation files.

   :::image type="content" source="./images/ent-mcc-download-installer.png" alt-text="Screenshot of the download installer option on the Create Cache Node page.":::

   The following files are contained in the `mccinstaller.zip` file:

   - **installmcc.ps1**: Main installer file.
   - **installEflow.ps1**: Installs the necessary prerequisites such as the Linux VM, IoT Edge runtime, and Docker, and makes necessary host OS settings to optimize caching performance.
   - **resourceDeploymentForConnectedCache.ps1**: Creates Azure cloud resources required to support MCC control plane.
   - **mccdeployment.json**: Deployment manifest used by IoT Edge to deploy the MCC container and configure settings on the container, such as cache drive location sizes.
   - **updatemcc.ps1**: The update script used to upgrade MCC to a particular version.
   - **mccupdate.json**: Used as part of the update script

1. Open Windows PowerShell as administrator then navigate to the location of these files.

   > [!NOTE]
   > Ensure that Hyper-V is enabled on your device.
   > - **Windows 10:** [Enable Hyper-V on Windows 10](/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)
   > - **Windows Server:** [Install the Hyper-V role on Windows Server](/windows-server/virtualization/hyper-v/get-started/install-the-hyper-v-role-on-windows-server)'
   >
   > Don't use PowerShell ISE, PowerShell 6.x, or PowerShell 7.x. Only Windows PowerShell version 5.x is supported.

1. **If you're installing MCC on a local virtual machine**, turn the virtual machine **off** while you enable nested virtualization and MAC spoofing.
   1. Enable nested virtualization:

      ```powershell
      Set-VMProcessor -VMName "VM name" -ExposeVirtualizationExtensions $true
      ```

   1. Enable MAC spoofing:

      ```powershell
      Get-VMNetworkAdapter -VMName "VM name" | Set-VMNetworkAdapter -MacAddressSpoofing On
      ```

1. Set the execution policy.

    ```powershell
    Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process
    ```

    > [!NOTE]
    > After setting the execution policy, you'll see a warning asking if you wish to change the execution policy. Choose **[A] Yes to All**.

1. Copy the command from the Azure portal and run it in Windows PowerShell.

    :::image type="content" source="./images/ent-mcc-installer-script.png" alt-text="Screenshot of the installer script for the connected cache node.":::

    > [!NOTE]
    > After running the command, and multiple times throughout the installation process, you'll receive the following notice. Select **[R] Run once** to proceed.
    > </br>
    > </br> Security warning
    > </br> Run only scripts that you trust. While scripts from the internet can be useful, this script can potentially harm your computer. If you trust this script, use the Unblock-File cmdlet to allow the script to run without this warning message. Do you want to run C:\Users\mccinstaller\Eflow\installmcc.ps1?
    > </br>
    > </br> [D] Do not run **[R] Run once** [S] Suspend [?] Help (default is "D"):

1. Choose whether you would like to create a new virtual switch or select an existing one. Name your switch and select the Net Adapter to use for the switch. A computer restart will be required if you're creating a new switch.

    > [!NOTE]
    > Restarting your computer after creating a switch is recommended. You'll notice network delays during installation if the computer has not been restarted.

    If you restarted your computer after creating a switch, start from Step 2 above and skip step 5.

   :::image type="content" source="./images/ent-mcc-script-new-switch.png" alt-text="Screenshot of the installer script running in PowerShell when a new switch is created." lightbox="./images/ent-mcc-script-new-switch.png":::

1. Rerun the script after the restart. This time, choose **No** when asked to create a new switch. Enter the number corresponding to the switch you previously created.

     :::image type="content" source="./images/ent-mcc-script-existing-switch.png" alt-text="Screenshot of the installer script running in PowerShell when using an existing switch." lightbox="./images/ent-mcc-script-existing-switch.png":::

1. Decide whether you would like to use dynamic or static address for the Eflow VM

    :::image type="content" source="./images/ent-mcc-script-dynamic-address.png" alt-text="Screenshot of the installer script running in PowerShell asking if you'd like to use a dynamic address." lightbox="./images/ent-mcc-script-dynamic-address.png":::

    > [!NOTE]
    > Choosing a dynamic IP address might assign a different IP address when the MCC restarts. A static IP address is recommended so you don't have to change this value in your management solution when MCC restarts.

1. Choose where you would like to download, install, and store the virtual hard disk for EFLOW. You'll also be asked how much memory, storage, and how many cores you would like to allocate for the VM. For this example, we chose the default values for all prompts.

1. Follow the Azure Device Login link and sign into the Azure portal.

     :::image type="content" source="./images/ent-mcc-script-device-code.png" alt-text="Screenshot of the installer script running in PowerShell displaying the code and URL to use for the Azure portal." lightbox="./images/ent-mcc-script-device-code.png":::

1. If this is your first MCC deployment, select **n** so that a new IoT Hub can be created. If you have already configured MCC before, choose **y** so that your MCCs are grouped in the same IoT Hub.

    1. You'll be shown a list of existing IoT Hubs in your Azure subscription. Enter the number corresponding to the IoT Hub to select it. **You'll likely have only 1 IoT Hub in your subscription, in which case you want to enter "1"**

       :::image type="content" source="./images/ent-mcc-script-select-hub.png" alt-text="Screenshot of the installer script running in PowerShell prompting you to select which IoT Hub to use." lightbox="./images/ent-mcc-script-select-hub.png":::
       :::image type="content" source="./images/ent-mcc-script-complete.png" alt-text="Screenshot of the installer script displaying the completion summary in PowerShell." lightbox="./images/ent-mcc-script-complete.png":::


1. Your MCC deployment is now complete.

    1. If you don't see any errors, continue to the next section to validate your MCC deployment. Your VM will not appear in Hyper-V Manager as it is an EFLOW VM.
    1. After validating your MCC is properly functional, review your management solution documentation, such as [Intune](/mem/intune/configuration/delivery-optimization-windows), to set the cache host policy to the IP address of your MCC.
    1. If you had errors during your deployment, see the [Common Issues](#common-issues) section in this article.

## Verify proper functioning MCC server

#### Verify client side

Connect to the EFLOW VM and check if MCC is properly running:

1. Open PowerShell as an Administrator.
2. Enter the following commands:

   ```powershell
   Connect-EflowVm
   sudo -s
   iotedge list
   ```

   :::image type="content" source="./images/ent-mcc-connect-eflowvm.png" alt-text="Screenshot of running connect-EflowVm, sudo -s, and iotedge list from PowerShell." lightbox="./images/ent-mcc-connect-eflowvm.png":::

You should see MCC, edgeAgent, and edgeHub running. If you see edgeAgent or edgeHub but not MCC, try this command in a few minutes. The MCC container can take a few minutes to deploy.

#### Verify server side

For a validation of properly functioning MCC, execute the following command in the EFLOW VM or any device in the network. Replace <CacheServerIP\> with the IP address of the cache server.

```powershell
wget [http://<CacheServerIP>/mscomtest/wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com]
```

A successful test result will display a status code of 200 along with additional information.

:::image type="content" source="./images/ent-mcc-verify-server-ssh.png" alt-text="Screenshot of a successful wget with an SSH client." lightbox="./images/ent-mcc-verify-server-ssh.png":::

 :::image type="content" source="./images/ent-mcc-verify-server-powershell.png" alt-text="Screenshot of a successful wget using PowerShell." lightbox="./images/ent-mcc-verify-server-powershell.png":::

Similarly, enter the following URL from a browser in the network:

`http://<YourCacheServerIP>/mscomtest/wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com`

If the test fails, see the [common issues](#common-issues) section for more information.

### Intune (or other management software) configuration for MCC

For an [Intune](/mem/intune/) deployment, create a **Configuration Profile** and include the Cache Host eFlow IP Address or FQDN:

:::image type="content" source="./images/ent-mcc-intune-do.png" alt-text="Screenshot of Intune showing the Delivery Optimization cache server host names.":::

## Common Issues

#### PowerShell issues

If you're seeing errors similar to this error: `The term Get-<Something> isn't recognized as the name of a cmdlet, function, script file, or operable program.`

1. Ensure you're running Windows PowerShell version 5.x.

1. Run \$PSVersionTable and ensure you're running version 5.x and *not version 6 or 7*.

1. Ensure you have Hyper-V enabled:

    **Windows 10:** [Enable Hyper-V on Windows 10](/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)

    **Windows Server:** [Install the Hyper-V role on Windows Server](/windows-server/virtualization/hyper-v/get-started/install-the-hyper-v-role-on-windows-server)

#### Verify Running MCC Container

Connect to the Connected Cache server and check the list of running IoT Edge modules using the following commands:

```bash
Connect-EflowVm
sudo iotedge list
```

:::image type="content" source="./images/ent-mcc-iotedge-list.png" alt-text="Screenshot of the iotedge list command." lightbox="./images/ent-mcc-iotedge-list.png":::

If edgeAgent and edgeHub containers are listed, but not "MCC", you may view the status of the IoT Edge security manager by using the command:

```bash
sudo journalctl -u iotedge -f
```

This command will provide the current status of the starting, stopping of a container, or the container pull and start.  

:::image type="content" source="./images/ent-mcc-journalctl.png" alt-text="Screenshot of the output from journalctl -u iotedge -f." lightbox="./images/ent-mcc-journalctl.png":::


> [!NOTE]
> You should consult the IoT Edge troubleshooting guide ([Common issues and resolutions for Azure IoT Edge](/azure/iot-edge/troubleshoot)) for any issues you may encounter configuring IoT Edge, but we've listed a few issues that we encountered during our internal validation.
