---
title: Microsoft Connected Cache for ISPs
description: This article contains details about the early preview for Microsoft Connected Cache (MCC) for Internet Service Providers (ISPs).
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: how-to
ms.author: carmenf
author: cmknox
ms.reviewer: mstewart
manager: aaroncz
ms.localizationpriority: medium
ms.collection: tier3
ms.date: 05/23/2024
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ Microsoft Connected Cache for ISPs (early preview)
---

# Microsoft Connected Cache for Internet Service Providers (early preview)

> [!IMPORTANT]
> This document is for Microsoft Connected Cache (early preview). Microsoft Connected Cache for ISPs is now in Public Preview - for our early preview customers, we highly encourage you to onboard onto our Public Preview program. For instructions on signing up and onboarding please visit [Operator sign up and service onboarding for Microsoft Connected Cache](mcc-isp-signup.md).

## Overview

Microsoft Connected Cache (MCC) preview is a software-only caching solution that delivers Microsoft content within operator networks. MCC can be deployed to as many physical servers or VMs as needed and is managed from a cloud portal. Microsoft cloud services handle routing of consumer devices to the cache server for content downloads.

Microsoft Connected Cache is a hybrid application, in that it's a mix of on-premises and cloud resources. It's composed of a Docker-compatible Linux container deployed to your server and a cloud management portal. Microsoft chose Azure IoT Edge as a secure and reliable control plane. For more information on IoT Edge, see the [Appendix](#appendix). Even though your scenario isn't related to IoT, Azure IoT Edge is our secure Linux container deployment and management infrastructure.

## How MCC works

:::image type="content" source="./images/mcc-isp-diagram.png" alt-text="Data flow diagram of how Microsoft Connected Cache works." lightbox="./images/mcc-isp-diagram.png":::

The following steps describe how MCC is provisioned and used:

1. The Azure Management Portal is used to create and manage MCC nodes.

1. A shell script is used to provision the server and deploy the MCC application.

1. A combination of the Azure Management Portal and shell script is used to configure Microsoft Delivery Optimization Services to route traffic to the MCC server.

    - The publicly accessible IPv4 address of the server is configured on the portal.

    - **Manual Routing:** Providing the CIDR blocks that represent the client IP address space, which should be routed to the MCC node.

    - **BGP Routing:** A shell script is used to initiate a peering session with a router in the operator network, and the operator initiates a session with the MCC node.

        > [!NOTE]
        > Only IPv4 addresses are supported at this time. Entering IPv6 addresses will result in an error.

1. Microsoft end-user devices (clients) periodically connect with Microsoft Delivery Optimization Services, and the services match the IP address of the client with the IP address of the corresponding MCC node.

1. Microsoft clients make the range requests for content from the MCC node.

1. An MCC node gets content from the CDN, seeds its local cache stored on disk, and delivers the content to the client.

1. Subsequent requests from end-user devices for content will be served from cache.

1. If the MCC node is unavailable, the client gets content from the CDN to ensure uninterrupted service for your subscribers.

## ISP requirements for MCC

Microsoft Connected Cache for Internet Service Providers is now in Public Preview! To get started, visit  [Azure portal](https://www.portal.azure.com) to sign up for Microsoft Connected Cache for Internet Service Providers. Please see [Operator sign up and service onboarding for Microsoft Connected Cache](mcc-isp-signup.md) for more information on the requirements for sign up and onboarding.

<!-- ### Azure subscription

The MCC management portal is hosted within Azure. It's used to create the Connected Cache Azure resource and IoT Hub resource. Both are *free* services.

> [!NOTE]
> If you request Exchange or Public peering in the future, business email addresses must be used to register ASNs. Microsoft doesn't accept Gmail or other non-business email addresses.

Your Azure subscription ID is first used to provision MCC services and enable access to the preview. The MCC server requirement for an Azure subscription will cost you nothing. If you don't have an Azure subscription already, you can create an Azure [Pay-As-You-Go](https://azure.microsoft.com/offers/ms-azr-0003p/) account, which requires a credit card for verification purposes. For more information, see the [Azure free account FAQ](https://azure.microsoft.com/free/free-account-faq/). *Don't submit a trial subscription* as you'll lose access to your Azure resources after the trial period ends.

The resources used for the preview, and in the future when this product is ready for production, will be free to you - like other caching solutions.

### Hardware to host the MCC

This recommended configuration can egress at a rate of 9 Gbps with a 10 Gbps NIC.

#### Disk requirements

- SSDs are recommended due to improved cache read speeds of SSD, compared to HDD.
- Using multiple disks is recommended to improve cache performance.
- RAID disk configurations are discouraged because cache performance will be impacted. If you're using RAID disk configurations, ensure striping.
- The maximum number of disks supported is 10.

#### NIC requirements

- Multiple NICs on a single MCC instance are supported using a *link aggregated* configuration.
- 10 Gbps NIC is the minimum speed recommended, but any NIC is supported.

### Sizing recommendations

The MCC module is optimized for Ubuntu 20.04 LTS. Install Ubuntu 20.04 LTS on a physical server or VM of your choice. The following recommended configuration can egress at a rate of 9 Gbps with a 10 Gbps NIC.

| Component  | Minimum | Recommended |
|---|---|---|
| OS |  Ubuntu 20.04 LTS VM or physical server | Ubuntu 20.04 LTS VM or physical server (preferred) |
| NIC | 10 Gbps| at least 10 Gbps |
| Disk | SSD </br>1 drive </br>2 TB each  |SSD </br>2-4 drives </br>at least 2 TB each  |
| Memory | 8 GB | 32 GB or greater |
| Cores | 4 | 8 or more  | -->

<!-- ## Steps to deploy MCC

To deploy MCC:

1. [Provide Microsoft with your Azure subscription ID](#provide-microsoft-with-your-azure-subscription-id)
2. [Create the MCC Resource in Azure](#create-the-mcc-resource-in-azure)
3. [Create a Cache Node](#create-an-mcc-node-in-azure)
4. [Configure Cache Node Routing](#edit-cache-node-information)
5. [Install MCC on a physical server or VM](#install-mcc)
6. [Verify properly functioning MCC server](#verify-properly-functioning-mcc-server)
7. [Review common issues if needed](#common-issues)

## Provide Microsoft with your Azure subscription ID

As part of the MCC preview onboarding process, an Azure subscription ID must be provided to Microsoft.

> [!IMPORTANT]
> For information about creating or locating your subscription ID, see [Steps to obtain an Azure subscription ID](#steps-to-obtain-an-azure-subscription-id).

### Create the MCC resource in Azure

The MCC Azure management portal is used to create and manage MCC nodes. An Azure subscription ID is used to grant access to the preview and to create the MCC resource in Azure and cache nodes.

Operators who have been given access to the program will be sent a link to the Azure portal, which will allow you to create this resource.

1. Choose **Create a resource**.

    :::image type="content" source="./images/mcc-isp-create-resource.png" alt-text="Screenshot of the option to 'Create a resource' in the Azure portal.":::

1. Type **Microsoft Connected Cache** into the search box and press **Enter** to show the search results.

1. Select **Microsoft Connected Cache**.

    :::image type="content" source="./images/mcc-isp-search-marketplace.png" alt-text="Screenshot of searching the Azure Marketplace for 'Microsoft Connected Cache'.":::

    > [!IMPORTANT]
    > Don't select *Connected Cache Resources*, which is different from **Microsoft Connected Cache**.

1. Select **Create** on the next screen to start the process of creating the MCC resource.

    :::image type="content" source="./images/mcc-isp-create.png" alt-text="Screenshot of the Create option for the Microsoft Connected Cache service.":::

1. Fill in the following required fields to create the MCC resource:

    - Choose the **Subscription** that you provided to Microsoft.

    - Azure resource groups are logical groups of resources. Create a new **Resource group** and choose a name for it.

    - Choose **(US) West US** for the **Location** of the resource. This choice won't impact MCC if the physical location isn't in the West US, it's just a limitation of the preview.

        > [!NOTE]
        > Your MCC resource won't create properly if you don't select **(US) West US**.

    - Specify a **Connected Cache Resource Name**.

      :::image type="content" source="./images/mcc-isp-location-west.png" alt-text="Screenshot of entering the required information, including the West US location, to create a Connected Cache in Azure.":::

1. Select **Review + Create**. Once validation is complete, select **Create** to start the resource creation.

    :::image type="content" source="./images/mcc-isp-deployment-complete.png" alt-text="'Screenshot of the 'Your deployment is complete' message displaying deployment details.":::

#### Common Resource Creation Errors

##### Error: Validation failed

If you get the error message "Validation failed" in the Azure portal, it's likely because you selected the **Location** as **US West 2** or another unsupported location. To resolve this error, go to the previous step and choose **(US) West US** for the **Location**.

##### Error: Could not create Marketplace item

If you get the error message "Could not create marketplace item" in the Azure portal, use the following steps to troubleshoot:

- Make sure that you've selected **Microsoft Connected Cache** and not *Connected Cache resources* while trying to create an MCC resource.

- Make sure that you're using the same subscription that you provided to Microsoft and you have privileges to create an Azure resource.

- If the issue persists, clear your browser cache and start in a new window.

### Create an MCC node in Azure

1. After you successfully create the resource, select **Go to resource**.

1. Under the **Cache Node Management** section in the left panel, select **Cache Nodes**.

    :::image type="content" source="./images/mcc-isp-cache-nodes-option.png" alt-text="Screenshot of the 'Cache Nodes' option in the Cache Node Management menu section.":::

1. On the **Cache Nodes** section, select **Create Cache Node**.

    :::image type="content" source="./images/mcc-isp-create-cache-node-option.png" alt-text="Screenshot of the selecting the 'Create Cache Node' option.":::

1. This action opens the **Create Cache Node** page. The only required fields are **Cache Node Name** and **Max Allowable Egress (Mbps)**.

    | Field name | Expected value | Description |
    |--|--|--|
    | **Cache Node Name** | Alphanumeric name that includes no spaces. | The name of the cache node. You may choose names based on location like Seattle-1. This name must be unique and can't be changed later. |
    | **Server IP Address** | IPv4 Address | IP address of your MCC server. This address is used to route end-user devices in your network to the server for Microsoft content downloads. *The IP address must be publicly accessible.* |
    | **Max Allowable Egress (Mbps)** | Integer in Mbps | The maximum egress (Mbps) of your MCC based on the specifications of your hardware. For example, `10,000` Mbps. |
    | **Address Range/CIDR Blocks** | IPv4 CIDR notation | The IP address range (CIDR blocks) that should be routed to the MCC server as a comma separated list. For example: `2.21.234.0/24, 3.22.235.0/24, 4.23.236.0/24` |
    | **Enable Cache Node** | Enable or Disable | **Enable** permits the cache node to receive content requests. </br>**Disable** prevents the cache node from receiving content requests. </br>Cache nodes are enabled by default. |

    :::image type="content" source="./images/mcc-isp-create-cache-node-fields.png" alt-text="Screenshot of the available fields on the Create Cache Node page.":::

    > [!TIP]
    > The information icon next to each field provides a description.
    >
    > :::image type="content" source="./images/mcc-isp-node-server-ip.png" alt-text="Screenshot of the Create Cache Node page showing the description for the Server IP Address field.":::

   After you create the cache node, if you return to this page, it populates the values for the two read-only fields:

     | Field name | Description |
     |--|--|
     | **IP Space** | Number of IP addresses that will be routed to your cache server. |
    | **Activation Keys** | Set of keys to activate your cache node with the MCC services. Copy the keys for use during install. The CustomerID is your Azure subscription ID. |

1. Enter the information to create the cache node, and then select **Create**.

    :::image type="content" source="./images/mcc-isp-create-new-node.png" alt-text="Screenshot of selecting 'Create' on the Create Cache Node page.":::

If there are errors, the page gives you guidance on how to correct the errors. For example:

- The cache node name is already in use in the resource or is an incorrect format.
- The CIDR block notation or list is incorrect.
- The server IP address or CIDR block is already in use.

See the following example with all information entered:

:::image type="content" source="./images/mcc-isp-create-node-form.png" alt-text="Screenshot of the Create Cache Node page with all information entered.":::

Once you create the MCC node, it will display the installer instructions. For more information on the installer instructions, see the [Install Connected Cache](#install-mcc) section.

:::image type="content" source="./images/mcc-isp-success-instructions.png" alt-text="Screenshot of the Cache node successfully created with Connected Cache installer instructions.":::

### IP address space approval

There are three states for IP address space. MCC configuration supports BGP and has automatic routing capabilities.

- **Valid**: The IP address space is approved.

- **In Review**: The IP address space is under review with Microsoft to ensure valid IP address space.

- **Attention Required**: The IP address space has been reviewed and an issue was discovered. For example:

  - The IP address space overlaps with an existing cache node that belongs to another customer

  - The IP address space was exceedingly large.

  If your IP address space has this status, contact Microsoft for more information.

:::image type="content" source="./images/mcc-isp-node-names.png" alt-text="Screenshot of a list of cache node names with example IP address space statuses.":::

## Edit cache node information

:::image type="content" source="./images/mcc-isp-list-nodes.png" alt-text="Screenshot of the Cache Nodes list in the Azure portal.":::

To modify the configuration for existing MCC nodes in the portal, select the cache node name in the cache nodes list. This action opens the **Cache Node Configuration** page. You can edit the **Server IP Address** or **Address Range/CIDR Blocks** field. You can also enable or disable the cache node.

:::image type="content" source="./images/mcc-isp-node-configuration.png" alt-text="Screenshot of the Cache Node Configuration page, highlighting editable fields.":::

To delete a cache node, select it in the cache nodes list, and then select **Delete** in the toolbar. If you delete a cache node, there's no way to recover it or any of the information related to the cache node. -->

<!-- ## Install MCC

To install MCC on your physical server or VM, you use a Bash script installer, which runs the following tasks:

- Installs the Moby engine and CLI.
- Installs IoT Edge.
- Installs SSH to support remote access to the server.
- Enables the firewall and opens port 80 for inbound and outbound traffic. The MCC uses port 80.
- Configures Connected Cache tuning settings.
- Creates the necessary free Azure resource: IoT Hub/IoT Edge.
- Deploys the MCC container to the server.

> [!IMPORTANT]
> Make sure that the following ports are open so that Microsoft can verify proper functionality of the cache server:
>
> - 80: content delivery
> - 179: BGP session
> - 443: IoT Edge secure communication
> - 5000: (optional) used to view locally running report
> - 5671: IoT Edge communication/container management
> - 8883: IoT Edge communication/container management

### Steps to install MCC

Before you start, make sure that you have a data drive configured on your server. You'll need to specify the location for this cache drive during this process. The minimum size for the data drive is 100 GB. For instructions to mount a disk on a Linux VM, see [Attach a data disk to a Linux VM](/azure/virtual-machines/linux/attach-disk-portal#find-the-disk).

1. From either **Create Cache Node** or **Cache Node Configuration** pages, select **Download Installer** to download the installer file.

    :::image type="content" source="./images/mcc-isp-installer-download.png" alt-text="Screenshot of the Create Cache Node page highlighting the Download Installer action.":::

    Unzip the **mccinstaller.zip** file, which includes the following installation files and folders:

    - Diagnostics folder: Used to create diagnostics support bundle.
    - **installmcc.sh**: Main installer file.
    - **installIotEdge.sh**: Installs the necessary prerequisites. For example, IoT Edge runtime and Docker. It also makes necessary host OS settings to optimize caching performance.
    - **resourceDeploymentForConnectedCache.sh**: Creates Azure cloud resources required to support the MCC control plane.
    - **mccdeployment.json**: Deployment manifest used by IoT Edge to deploy the MCC container. It also configures settings on the container like cache drives location and sizes.
    - **mccupdate.json**
    - **packagever.txt**
    - **uninstallmcc.sh**: Main uninstaller file.
    - **updatemcc.sh**: Main update file.

1. Copy all files to your Linux server.

1. Open a terminal window. Change the access permissions to execute on the **installmcc.sh** Bash script file using `chmod`.

    ```bash
    sudo chmod +x installmcc.sh
    ```

1. In the Azure portal, in the Connected Cache installer instructions, copy the cache node installer Bash script command. Run the Bash script from the terminal.

    :::image type="content" source="./images/mcc-isp-copy-install-script.png" alt-text="Screenshot of the Copy option for the cache node installer Bash script in the Connected Cache installer instructions.":::

1. Sign in to the Azure portal with a device code.

    :::image type="content" source="./images/mcc-isp-bash-device-code.png" alt-text="Screenshot of the Bash script prompt to sign in to the Azure portal with a device code." lightbox="./images/mcc-isp-bash-device-code.png":::

1. Specify the number of drives to configure. Use an integer value less than 10.

    :::image type="content" source="./images/mcc-isp-bash-drive-number.png" alt-text="Screenshot of the Bash script prompt to enter the number of cache drives to configure." lightbox="./images/mcc-isp-bash-drive-number.png":::

1. Specify the location of the cache drives. For example, `/datadrive/`

    :::image type="content" source="./images/mcc-isp-bash-datadrive.png" alt-text="Screenshot of the Bash script prompt to enter the location for cache drive." lightbox="./images/mcc-isp-bash-datadrive.png":::

    > [!IMPORTANT]
    > The script changes the permission and ownership on the cache drive to **everyone** with the command `chmod 777`.
    >
    > Don't point the cache drive to any of the following locations:
    >
    > - `.`
    > - `./var`
    > - `/`
    > - `<space>`
    >
    > Specifying any of these will corrupt the OS, and you'll need to re-install the image again.

1. Specify an integer value as the size in GB for each cache drive. The minimum is `100` GB.

    :::image type="content" source="./images/mcc-isp-bash-allocate-space.png" alt-text="Screenshot of the Bash script prompt to enter the amount of space to allocate to the cache drive." lightbox="./images/mcc-isp-bash-allocate-space.png":::

1. Specify whether you have an existing IoT Hub.

    - If this process is for your *first MCC deployment*, enter `n`.

    - If you already have an MCC deployment, you can use an existing IoT Hub from your previous installation. Select `Y` to see your existing IoT Hubs. You can copy and paste the resulting IoT Hub name to continue.

    :::image type="content" source="./images/mcc-isp-bash-iot-prompt.png" alt-text="Screenshot of the Bash script output with steps for existing IoT Hub." lightbox="./images/mcc-isp-bash-iot-prompt.png":::

1. If you want to configure BGP, enter `y`. If you want to use manual entered prefixes for routing, enter `n` and skip to Step 16. You can always configure BGP at a later time using the Update Script.

    1. Enter the number of BGP neighbors you want to configure.
    1. Enter the IP address for the neighbor.
    1. Enter the ASN corresponding to that neighbor. This value should be the same ASN as the MCC -iBGP connection.
    1. Repeat these steps for each neighbor you need to configure.

    > [!NOTE]
    > With the BGP configuration, you're essentially setting up an iBGP neighbor in your public ASN. For example, when you initiate the BGP session from the router to the cache node, you would use your own ASN.

1. BGP is now configured from the MCC side. From your end, establish a neighborship from your router to MCC's host machine. Use the IP address of the host machine that's running the MCC container.

    1. Make sure there aren't any firewall rules blocking this connection.
    1. Verify that the BGP connection has been established and that you're advertising routes to the MCC.
    1. Wait five minutes to refresh the cache node page in the Azure portal to see the BGP routes.

1. Confirm the update is complete by running the following command.

    ```bash
    sudo iotedge list
    ```

    Make sure MCC is running on the latest version. If you only see **edgeAgent** and **edgeHub**, wait five minutes and run this command again.

1. Make sure MCC is reachable. Replace `<CacheServerIp>` with the IP address of your MCC or localhost.

    ```bash
    wget http://<CacheServerIP>/mscomtest/wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com
    ```

1. After you successfully complete the update, go to the Azure portal. To check the routes being reported, select **Download JSON**.

1. To start routing using BGP, change the **Prefix Source** from **Manually Entered** to **Use BGP**.

    :::image type="content" source="./images/mcc-isp-use-bgp.png" alt-text="Screenshot of the Cache Node Configuration page with the Prefix Source set to Use BGP.":::

1. If there are no errors, go to the next section to verify the MCC server.

    If there are errors:

    - Inspect the installer logs, which are in the following path: `/etc/mccresourcecreation/`

    - For more information, see [Troubleshoot your IoT Edge device](/azure/iot-edge/troubleshoot). -->

## Verify properly functioning MCC server

### Verify client side

Sign in to the Connected Cache server or use SSH. Run the following command from a terminal to see the running modules (containers):

```bash
sudo iotedge list
```

:::image type="content" source="./images/mcc-isp-running-containers.png" alt-text="Screenshot of the terminal output of iotedge list command, showing the running containers." lightbox="./images/mcc-isp-running-containers.png":::

If it lists the **edgeAgent** and **edgeHub** containers, but doesn't include **MCC**, view the status of the IoT Edge security manager using the command:

```bash
sudo journalctl -u iotedge -f
```

For example, this command provides the current status of the starting and stopping of a container, or the container pull and start:

:::image type="content" source="./images/mcc-isp-edge-journalctl.png" alt-text="Terminal output of journalctl command for iotedge." lightbox="./images/mcc-isp-edge-journalctl.png":::

### Verify server side

It can take a few minutes for the container to deploy.

To validate a properly functioning MCC, run the following command in the terminal of the cache server or any device in the network. Replace `<CacheServerIP>` with the IP address of the cache server.

```bash
wget http://<CacheServerIP>/mscomtest/wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com
```

The following screenshot shows a successful test result:

:::image type="content" source="./images/mcc-isp-wget.png" alt-text="Screenshot of the terminal output of successful test result with wget command to validate a Microsoft Connected Cache." lightbox="./images/mcc-isp-wget.png":::

Similarly, enter the following URL into a web browser on any device on the network:

```http
http://<CacheServerIP>/mscomtest/wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com
```

If the test fails, for more information, see the [common issues](#common-issues) section.

## Common Issues

### Microsoft Connected Cache is no longer serving traffic
If you did not migrate your cache node then your cache node may still be on early preview version.
Microsoft Connected Cache for Internet Service Providers is now in Public Preview! To get started, visit  [Azure portal](https://www.portal.azure.com) to sign up for Microsoft Connected Cache for Internet Service Providers. Please see [Operator sign up and service onboarding for Microsoft Connected Cache](mcc-isp-signup.md) for more information on the requirements for sign up and onboarding.
<br>
<br>
<br>

> [!NOTE]
> This section only lists common issues. For more information on additional issues you may encounter when configuring IoT Edge, see the [IoT Edge troubleshooting guide](/azure/iot-edge/troubleshoot).

Use the following command to check the IoT Edge journal:

```bash
sudo journalctl -u iotedge -f
```

### DNS needs to be configured

Run the following IoT Edge install state check:

```bash
sudo iotedge check --verbose
```

If you see issues with ports 5671, 443, and 8883, your IoT Edge device needs to update the DNS for Docker.

To configure the device to work with your DNS, use the following steps:

1. Use `ifconfig` to find the appropriate NIC adapter name.

    ```bash
    ifconfig
    ```

1. Run `nmcli device show <network adapter name>` to show the DNS name for the ethernet adapter. For example, to show DNS information for **eno1**:

    ```bash
    nmcli device show eno1 
    ```

    :::image type="content" source="images/mcc-isp-nmcli.png" alt-text="Screenshot of a sample output of nmcli command to show network adapter information." lightbox="./images/mcc-isp-nmcli.png":::

1. Open or create the Docker configuration file used to configure the DNS server.

    ```bash
    sudo nano /etc/docker/daemon.json
    ```

1. Paste the following string into the **daemon.json** file, and include the appropriate DNS server address. For example, in the previous screenshot, `IP4.DNS[1]` is `10.50.10.50`.

    ```bash
    { "dns": ["x.x.x.x"]}
    ```

1. Save the changes to daemon.json. If you need to change permissions on this file, use the following command:

    ```bash
    sudo chmod 555 /etc/docker/daemon.json
    ```

1. Restart Docker to pick up the new DNS setting. Then restart IoT Edge.

    ```bash
    sudo systemctl restart docker
    sudo systemctl daemon-reload
    sudo restart IoTEdge
    ```

<!-- ### Diagnostics script

If you're having issues with your MCC, the installer file includes a diagnostics script. The script collects all logs and zips them into a single file. 

To run the script:

1. Navigate to the following folder in the MCC installation files:

    `mccinstaller > MccResourceInstall > Diagnostics`

1. Run the following commands:

    ```bash
    sudo chmod +x collectMccDiagnostics.sh
    sudo ./collectMccDiagnostics.sh
    ```

1. The script stores all the debug files into a folder and creates a tar file. After the script is finished running, it displays the path of the tar file that you can share with the MCC team. The file should be `/etc/mccdiagnostics/support_bundle_\$timestamp.tar.gz`

1. [Email the MCC team](mailto:msconnectedcache@microsoft.com?subject=Debugging%20Support%20Request%20for%20MCC) and attach this tar file, asking for debugging support. Screenshots of the error along with any other warnings you saw will be helpful during the debugging process. -->

<!-- ## Updating your MCC

Throughout the early preview phase, Microsoft will release security and feature updates for MCC. Follow these steps to update your MCC.

Run the following commands, replacing the variables with the values provided in the email to update your MCC:

```bash
sudo chmod +x updatemcc.sh
sudo chmod +x installIoTEdge.sh
sudo ./updatemcc.sh version="<VERSION>" tenantid="<TENANTID>" customerid="<CUSTOMERID>" cachenodeid="<CACHENODEID>" customerkey="<CUSTOMERKEY>"
```

For example:

```bash
sudo ./updatemcc.sh version="msconnectedcacheprod.azurecr.io/mcc/linux/iot/mcc-ubuntu-iot-amd64:1.2.1.981" tenantid="799a999aa-99a1-99aa-99aa-9a9aa099db99" customerid="99a999aa-99a1-99aa-99aa-9aaa9aaa0saa" cachenodeid=" aa99aaaa-999a-9aas-99aa99daaa99 " customerkey="a99d999a-aaaa-aa99-0999aaaa99aa"
``` -->

<!-- ### Configure BGP on an Existing MCC

If you have an MCC that's already active and running, follow the steps below to configure BGP.

1. Run the Update commands as described above.

1. Sign in with your Azure credentials using the device code.

1. To finish configuring your MCC with BGP routing, continue from Step 10 of [Steps to Install MCC](#steps-to-install-mcc). -->


## Uninstalling MCC

In the installer zip file, you'll find the file **uninstallmcc.sh**. This script uninstalls MCC and all the related components. Before you run this script, contact the MCC team. Only run it if you're facing issues with MCC installation.

> [!WARNING]
> Be cautious before running this script. It will also erase existing IoT workflows in this VM.

The **uninstallmcc.sh** script removes the following components:

- IoT Edge
- Edge Agent
- Edge Hub
- MCC
- Moby CLI
- Moby engine

To run the script, use the following commands:

```bash
sudo chmod +x uninstallmcc.sh
sudo ./uninstallmcc.sh
```

## Appendix

### Steps to obtain an Azure subscription ID

<!--Using include file, get-azure-subscription.md, for shared content-->
[!INCLUDE [Get Azure subscription](includes/get-azure-subscription.md)]

### Performance of MCC in virtual environments

In virtual environments, the cache server egress peaks at around 1.1 Gbps. If you want to maximize the egress in virtual environments, it's critical to change the following two settings:

1. Enable **SR-IOV** in the following three locations:

    - The BIOS of the MCC VM
    - The MCC VM's network card properties
    - The hypervisor for the MCC VM

    Microsoft has found these settings to double egress when using a Microsoft Hyper-V deployment.

2. Enable "high performance" in the BIOS instead of energy savings. Microsoft has found this setting nearly doubled egress in a Microsoft Hyper-V deployment.

### Grant other users access to manage your MCC

More users can be given access to manage Microsoft Connected Cache, even if they don't have an Azure account. Once you've created the first cache node in the portal, you can add other users as **Owners** of the Microsoft Connected Cache resource group and the Microsoft Connected Cache resource.

For more information on how to add other users as an owner, see [Grant a user access to Azure resources using the Azure portal](/azure/role-based-access-control/quickstart-assign-role-user-portal). Make sure to do this action for both the *MCC resource* and *MCC resource group*.

### Setting up a VM on Windows Server

You can use hardware that will natively run Ubuntu 20.04 LTS, or you can run an Ubuntu VM. The following steps describe how to set up a VM on Hyper-V.

1. Download the ISO. You can use either Ubuntu Desktop or Ubuntu Server.

    - [Download Ubuntu Desktop](https://ubuntu.com/download/desktop)
    - [Download Ubuntu Server](https://ubuntu.com/download/server)

1. Start the **New Virtual Machine Wizard** in Hyper-V.

    :::image type="content" source="./images/mcc-isp-hyper-v-begin.png" alt-text="Screenshot of the Before You Begin page of the Hyper-V New Virtual Machine Wizard.":::

1. Specify a name and choose a location.

    :::image type="content" source="./images/mcc-isp-hyper-v-name.png" alt-text="Screenshot of the Specify Name and Location page in the Hyper-V New Virtual Machine Wizard.":::

1. Select **Generation 2**. You can't change this setting later.

    :::image type="content" source="./images/mcc-isp-hyper-v-generation.png" alt-text="Screenshot of the Specify Generation page in the Hyper-V New Virtual Machine Wizard.":::

1. Specify the startup memory.

    :::image type="content" source="./images/mcc-isp-hyper-v-memory.png" alt-text="Screenshot of the Assign Memory page of the Hyper-V New Virtual Machine Wizard.":::

1. Choose the network adapter connection.

    :::image type="content" source="./images/mcc-isp-hyper-v-networking.png" alt-text="Screenshot of the Configure Networking page of the Hyper-V New Virtual Machine Wizard.":::

1. Set the virtual hard disk parameters. You should specify enough space for the OS and the content that will be cached. For example, `1024` GB is 1 terabyte.

    :::image type="content" source="./images/mcc-isp-hyper-v-disk.png" alt-text="Screenshot of the Connect Virtual Hard Disk page of the Hyper-V New Virtual Machine Wizard.":::

1. Select **Install an OS from a bootable image file** and browse to the ISO for Ubuntu 20.04 LTS that you previously downloaded.

    :::image type="content" source="./images/mcc-isp-hyper-v-installation-options.png" alt-text="Screenshot of the Installation Options page of the Hyper-V New Virtual Machine Wizard.":::

1. Review the settings and select **Finish** to create the Ubuntu VM.

    :::image type="content" source="./images/mcc-isp-hyper-v-summary.png" alt-text="Screenshot of completing the New Virtual Machine Wizard on Hyper-V.":::

1. Before you start the Ubuntu VM, disable **Secure Boot** and allocate multiple cores to the VM.

    1. In Hyper-V Manager, open the **Settings** for the VM.

        :::image type="content" source="./images/mcc-isp-hyper-v-vm-settings.png" alt-text="Screenshot of the settings for a VM in Hyper-V Manager.":::

    1. Select **Security**. Disable the option to **Enable Secure Boot**.

        :::image type="content" source="./images/mcc-isp-hyper-v-vm-security.png" alt-text="Screenshot of the security page from VM settings in Hyper-V Manager.":::

    1. Select **Processor**. Increase the number of virtual processors. This example shows `12`, but your configuration may vary.

        :::image type="content" source="./images/mcc-isp-hyper-v-vm-processor.png" alt-text="Screenshot of the processor page from VM settings in Hyper-V Manager.":::

1. Start the VM and select **Install Ubuntu**.

    :::image type="content" source="./images/mcc-isp-gnu-grub.png" alt-text="Screenshot of the GNU GRUB screen, with Install Ubuntu selected.":::

1. Choose your default language.

    :::image type="content" source="./images/mcc-isp-ubuntu-language.png" alt-text="Screenshot of the Ubuntu install's language selection page.":::

1. Choose the options for installing updates and third party hardware. For example, download updates and install third party software drivers.

1. Select **Erase disk and install Ubuntu**. If you had a previous version of Ubuntu installed, we recommend erasing and installing Ubuntu 16.04.

    :::image type="content" source="./images/mcc-isp-ubuntu-erase-disk.png" alt-text="Screenshot of the Ubuntu install Installation type page with the Erase disk and install Ubuntu option selected.":::

    Review the warning about writing changes to disk, and select **Continue**.

    :::image type="content" source="./images/mcc-isp-ubuntu-write-changes.png" alt-text="Screenshot of the Ubuntu install's 'Write the changes to disks' warning.":::

1. Choose the time zone.

    :::image type="content" source="./images/mcc-isp-ubuntu-time-zone.png" alt-text="Screenshot of the Ubuntu install's 'Where are you page' to specify time zone.":::

1. Choose the keyboard layout.

    :::image type="content" source="./images/mcc-isp-ubuntu-keyboard.png" alt-text="Screenshot of the Ubuntu install's Keyboard layout page.":::

1. Specify your name, a name for the computer, a username, and a strong password. Select the option to **Require my password to log in**.

    > [!TIP]
    > Everything is case sensitive in Linux.

    :::image type="content" source="./images/mcc-isp-ubuntu-who.png" alt-text="Screenshot of the Ubuntu install's, 'Who are you' screen.":::

1. To complete the installation, select **Restart now**.

    :::image type="content" source="./images/mcc-isp-ubuntu-restart.png" alt-text="Screenshot of the Ubuntu install's installation complete, restart now screen.":::

1. After the computer restarts, sign in with the username and password.

    > [!IMPORTANT]
    > If it shows that an upgrade is available, select **Don't upgrade**.
    >
    > :::image type="content" source="./images/mcc-isp-ubuntu-upgrade.png" alt-text="Screenshot of the Ubuntu install's Upgrade Available prompt with Don't Upgrade selected.":::

Your Ubuntu VM is now ready to install MCC.

### IoT Edge runtime

The Azure IoT Edge runtime enables custom and cloud logic on IoT Edge devices. The runtime sits on the IoT Edge device, and does management and communication operations. The runtime does the following functions:

- Installs and updates workloads (Docker containers) on the device.
- Maintains Azure IoT Edge security standards on the device.
- Makes sure that IoT Edge modules (Docker containers) are always running.
- Reports module (Docker containers) health to the cloud for remote monitoring.
- Manages communication between an IoT Edge device and the cloud.

For more information on Azure IoT Edge, see the [Azure IoT Edge documentation](/azure/iot-edge/about-iot-edge).

## Related articles

[Microsoft Connected Cache overview](waas-microsoft-connected-cache.md)

[Introducing Microsoft Connected Cache](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/introducing-microsoft-connected-cache-microsoft-s-cloud-managed/ba-p/963898)
