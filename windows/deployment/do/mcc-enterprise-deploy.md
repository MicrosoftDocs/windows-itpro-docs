---
title: Deploying your cache node
manager: dougeby
description: How to deploy Microsoft Connected Cache (MCC) for Enterprise and Education cache node
ms.prod: w10
author: amymzhou
ms.localizationpriority: medium
ms.author: amymzhou
ms.collection: M365-modern-desktop
ms.topic: article
---

# Deploying your cache node

**Applies to**

- Windows 10
- Windows 11

## Steps to deploy MCC

To deploy MCC to your server:

1.  [Provide Microsoft with the Azure subscription ID](#provide-microsoft-with-the-azure-subscription-id)
2.  [Create the MCC Resource in Azure](#create-the-mcc-resource-in-azure)
3.  [Create an MCC Node](#create-an-mcc-node-in-azure)
4.  [Edit Cache Node Information](#edit-cache-node-information)
5.  [Install MCC on a physical server or VM](#install-mcc-on-windows)
6.  [Verify proper functioning MCC server](#verify-proper-functioning-mcc-server)
7.  [Review common Issues](#common-issues) if needed.

For questions regarding these instructions contact [msconnectedcache@microsoft.com](mailto:msconnectedcache@microsoft.com)

### Provide Microsoft with the Azure Subscription ID

As part of the MCC preview onboarding process an Azure subscription ID must be provided to Microsoft. 

> [!IMPORTANT]
> [Take this survey](https://aka.ms/MSConnectedCacheSignup) and provide your Azure subscription ID and contact information to be added to the allowlist for this preview. You will not be able to proceed if you skip this step.

For information about creating or locating your subscription ID, see [Steps to obtain an Azure Subscription ID](#steps-to-obtain-an-azure-subscription-id).

### Create the MCC resource in Azure

The MCC Azure management portal is used to create and manage MCC nodes. An Azure Subscription ID is used to grant access to the preview and to create the MCC resource in Azure and Cache nodes. 

Once you take the survey above and the MCC team adds your subscription ID to the allowlist, you will be given a link to the Azure portal where you can create the resource described below. 

1.  On the Azure portal home page, choose **Create a resource**:  
    ![eMCC img02](images/emcc02.png)

2.  Type **Microsoft Connected Cache** into the search box, and hit **Enter** to show search results.

> [!NOTE]
> You'll not see Microsoft Connected Cache in the drop-down list. You need to type it and press enter to see the result.

3.  Select **Microsoft Connected Cache** and choose **Create** on the next screen to start the process of creating the MCC resource.

    ![eMCC img03](images/emcc03.png)
    ![eMCC img04](images/emcc04.png)

4.  Fill in the required fields to create the MCC resource.

    -   Choose the subscription that you provided to Microsoft.
    -   Azure resource groups are logical groups of resources. Create a new resource group and choose a name for your resource group.
    -   Choose **(US) West US** for the location of the resource. This choice will not impact MCC if the physical location isn't in the West US, it's just a limitation of the preview.

       > [!NOTE]
       > Your MCC resource will not be created properly if you do not select **(US) West US**

    -   Choose a name for the MCC resource.

      > [!NOTE]
      > Your MCC resource must not contain the word **Microsoft** in it.

      ![eMCC img05](images/emcc05.png)

5.  Once all the information has been entered, click the **Review + Create** button. Once validation is complete, click the **Create** button to start the
    resource creation.

    ![eMCC img06](images/emcc06.png)

#### Error: Validation failed

-   If you get a Validation failed error message on your portal, it's likely because you selected the **Location** as **US West 2** or some other location that isn't **(US) West US**.
-   To resolve this error, go to the previous step and choose **(US) West US**.

    ![eMCC img07](images/emcc07.png)

### Create an MCC node in Azure

Creating an MCC node is a multi-step process and the first step is to access the MCC private preview management portal.

1.  After the successful resource creation click on the **Go to resource**.
2.  Under **Cache Node Management** section on the leftmost panel, click on **Cache Nodes**.

    ![eMCC img08](images/emcc08.png)

3.  On the **Cache Nodes** blade, click on the **Create Cache Node** button.

    ![eMCC img09](images/emcc09.png)

4.  Clicking the **Create Cache Node** button will open the **Create Cache Node** page; **Cache Node Name** is the only field required for cache node creation.

| **Field Name**      | **Expected Value**                         | **Description**                                                                                                                      |
|---------------------|--------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| **Cache Node Name** | Alphanumeric name that includes no spaces. | The name of the cache node. You may choose names based on location like Seattle-1. This name must be unique and cannot be changed later. |

5.  Enter the information for the **Cache Node** and click the **Create** button.

![eMCC img9.5](images/emcc09.5.png)

If there are errors, the form will provide guidance on how to correct the errors.

Once the MCC node has been created, the installer instructions will be exposed. More details on the installer instructions will be addressed later in this article, in the [Install Connected Cache](#install-mcc-on-windows) section.

![eMCC img10](images/emcc10.png)

#### Edit cache node information

Cache nodes can be deleted here by clicking the check box to the left of a **Cache Node Name** and then clicking the delete toolbar item. Be aware that if a cache node is deleted, there is no way to recover the cache node or any of the information related to the cache node.

![eMCC img11](images/emcc11.png)

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

1.  Download and unzip mccinstaller.zip from the create cache node page or cache node configuration page which contains the necessary installation files.

  ![eMCC img12](images/emcc12.png)

Files contained in the mccinstaller.zip file:

  - **installmcc.ps1**: Main installer file.
  - **installEflow.ps1**: Installs the necessary prerequisites such as the Linux VM, IoT Edge runtime, and Docker, and makes necessary host OS settings to optimize caching performance.
  - **resourceDeploymentForConnectedCache.ps1**: Creates Azure cloud resources required to support MCC control plane.
  - **mccdeployment.json**: Deployment manifest used by IoT Edge to deploy the MCC container and configure settings on the container, such as cache drive location sizes.
  - **updatemcc.ps1**: The update script used to upgrade MCC to a particular version.
  - **mccupdate.json**: Used as part of the update script

1.  Open Windows PowerShell as administrator and navigate to the location of these files.

> [!NOTE]
> Ensure that Hyper-V is enabled on your device.
> Do not use PowerShell ISE, PowerShell 6.x, or PowerShell 7.x. Only Windows PowerShell version 5.x is supported.

  **Windows 10:** [Enable Hyper-V on Windows 10](/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)

  **Windows Server:** [Install the Hyper-V role on Windows Server](/windows-server/virtualization/hyper-v/get-started/install-the-hyper-v-role-on-windows-server)

#### If you're installing MCC on a local virtual machine:

1. Enable Nested Virtualization

  ```powershell
  Set -VMProcessor -VMName "VM name" -ExposeVirtualizationExtensions $true
  ```
2. Enable Mac Spoofing
  ```powershell
  Get-VMNetworkAdapter -VMName "VM name" | Set-VMNetworkAdapter -MacAddressSpoofing On
  ```
  **Virtual machine should be in the OFF state while enabling Nested Virtualization and Mac Spoofing**

3.  Set the execution policy

  ```powershell
  Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process
  ```
  > [!NOTE]
  >  After setting the execution policy, you'll see a warning asking if you wish to change the execution policy. Choose **[A] Yes to All**.

4.  Copy the command from the portal and run it in Windows PowerShell

    ![eMCC img13](images/emcc13.png)

  > [!NOTE]
  > After running the command, and multiple times throughout the installation process, you'll receive the following notice. **Please select [R] Run once to proceed**.
  > <br>
  > <br>Security warning
  > <br>Run only scripts that you trust. While scripts from the internet can be useful, this script can potentially harm your computer. If you trust this script, use the Unblock-File cmdlet to allow the script to run without this warning message. Do you want to run C:\\Users\\mccinstaller\\Eflow\\installmcc.ps1?
  ><br>
  > <br>[D] Do not run **[R] Run once** [S] Suspend [?] Help (default is "D"):

3.  Choose whether you would like to create a new virtual switch or select an existing one. Name your switch and select the Net Adapter to use for the switch. A computer restart will be required if you're creating a new switch.

  > [!NOTE]
  > Restarting your computer after creating a switch is recommended. You'll notice network delays during installation if the computer has not been restarted.

  If you restarted your computer after creating a switch, start from Step 2 above and skip step 5.

  ![eMCC img14](images/emcc14.png)

4.  Re-run the script after the restart. This time, choose **No** when asked to create a new switch. Enter the number corresponding to the switch you previously created.

    ![eMCC img15](images/emcc15.png)

5.  Decide whether you would like to use dynamic or static address for the Eflow VM

    ![eMCC img16](images/emcc16.png)

  > [!NOTE]
  > Choosing a dynamic IP address might assign a different IP address when the MCC restarts.
  > <br>A static IP address is recommended so you do not have to change this value in your management solution when MCC restarts.

6.  Choose where you would like to download, install, and store the virtual hard disk for EFLOW. You'll also be asked how much memory, storage, and cores you would like to allocate for the VM. In this example, we chose the default values for all prompts.

7.  Follow the Azure Device Login link and sign into the Azure portal.

    ![eMCC img17](images/emcc17.png)

8.  If this is your first MCC deployment, please select **n** so that a new IoT Hub can be created. If you have already configured MCC before, choose **y** so that your MCCs are grouped in the same IoT Hub.

    1.  You'll be shown a list of existing IoT Hubs in your Azure Subscription; Enter the number corresponding to the IoT Hub to select it. **You'll likely have only 1 IoT Hub in your subscription, in which case you want to enter “1”**

    ![eMCC img18](images/emcc18.png)
    ![eMCC img19](images/emcc19.png)

9.  Your MCC deployment is now complete.

    1.  If you do not see any errors, please continue to the next section to validate your MCC deployment.
    2.  After validating your MCC is properly functional, please review your management solution documentation, such as [Intune](/mem/intune/configuration/delivery-optimization-windows), to set the cache host policy to the IP address of your MCC.
    3.  If you had errors during your deployment, see the [Troubleshooting](#troubleshooting) section in this article.

### Verify proper functioning MCC server

#### Verify Client Side

Connect to the EFLOW VM and check if MCC is properly running:

1.  Open PowerShell as an Administrator
2.  Enter the following commands:

```powershell
Connect-EflowVm
sudo -s
iotedge list
```

![eMCC img20](images/emcc20.png)

You should see MCC, edgeAgent, and edgeHub running. If you see edgeAgent or edgeHub but not MCC, please try this command in a few minutes. The MCC container can take a few minutes to deploy

#### Verify server side

For a validation of properly functioning MCC, execute the following command in the EFLOW VM or any device in the network. Replace <CacheServerIP\> with the IP address of the cache server.

```powershell
wget [http://<CacheServerIP>/mscomtest/wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com]
```

A successful test result will look like this:

![eMCC img21](images/emcc21.png)

OR

![eMCC img22](images/emcc22.png)

Similarly, enter this URL from a browser in the network:

[http://YourCacheServerIP/mscomtest/wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com]()

If the test fails, see the common issues section for more information.

### Intune (or other management software) configuration for MCC

For an Intune deployment, create a Configuration Profile and include the Cache Host eFlow IP Address or FQDN:

![eMCC img23](images/emcc23.png)

### Common Issues

#### PowerShell issues

If you're seeing errors similar to this: “The term ‘Get-Something’ isn't recognized as the name of a cmdlet, function, script file, or operable program.”

1.  Ensure you're running Windows PowerShell version 5.x.

2.  Run \$PSVersionTable and ensure you’re running version 5.x and *not version 6 or 7*.

3.  Ensure you have Hyper-V enabled:

    **Windows 10:** [Enable Hyper-V on Windows 10](/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)

    **Windows Server:** [Install the Hyper-V role on Windows Server](/windows-server/virtualization/hyper-v/get-started/install-the-hyper-v-role-on-windows-server)

#### Verify Running MCC Container

Connect to the Connected Cache server and check the list of running IoT Edge modules using the following commands:

```bash
Connect-EflowVm
sudo iotedge list​
```

![eMCC img24](images/emcc24.png)

If edgeAgent and edgeHub containers are listed, but not “MCC”, you may view the status of the IoT Edge security manager using the command:

```bash
sudo journalctl -u iotedge -f
```

For example, this command will provide the current status of the starting, stopping of a container, or the container pull and start as is shown in the sample below:  

![eMCC img25](images/emcc25.png)

Use this command to check the IoT Edge Journal

```bash
sudo journalctl -u iotedge –f
```

Please note: You should consult the IoT Edge troubleshooting guide ([Common issues and resolutions for Azure IoT Edge](/azure/iot-edge/troubleshoot)) for any issues you may encounter configuring IoT Edge, but we have listed a few issues below that we hit during our internal validation.