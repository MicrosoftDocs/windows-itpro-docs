---
title: Microsoft Connected Cache for Internet Service Providers
manager: dougeby
description: Details on Microsoft Connected Cache (MCC) for Internet Service Providers (ISPs).
keywords: updates, downloads, network, bandwidth
ms.prod: w10
ms.mktglfcycl: deploy
audience: itpro
author: carmenf
ms.localizationpriority: medium
ms.author: carmenf
ms.collection: M365-modern-desktop
ms.topic: article
---

# MCC for Internet Service Providers

**Applies to**

- Windows 10
- Windows 11

## Overview

> [!IMPORTANT]
> Microsoft Connected Cache is currently a private preview feature. During this phase we invite customers to take part in early access for testing purposes. This phase does not include formal support, and should not be used for production workloads. For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/).

Microsoft Connected Cache (MCC) preview is a software-only caching solution that delivers Microsoft content within Enterprise networks. MCC can be deployed to as many physical servers or VMs as needed, and is managed from a cloud portal. Microsoft cloud services handle routing of consumer devices to the cache server for content downloads.

MCC is a hybrid (a mix of on-prem and cloud resources) SaaS solution built as an Azure IoT Edge module; it is a Docker compatible Linux container that is deployed to your Windows devices. IoT Edge for Linux on Windows (EFLOW) was chosen because it is a secure, reliable container management infrastructure. EFLOW is a Linux virtual machine, based on Microsoft's first party CBL-Mariner operating system. It’s built with the IoT Edge runtime and validated as a tier 1 supported environment for IoT Edge workloads. MCC will be a Linux IoT Edge module running on the Windows Host OS. Azure IoT Edge consists of three components that the MCC infrastructure will utilize:

1. A cloud-based interface that enables secure, remote installation, monitoring, and management of MCC nodes.
2. A runtime that securely manages the modules deployed to each device.
3. Modules/containers that run the MCC functionality on your device.

## How MCC works

The following steps describe how MCC is provisioned and used.

1. The Azure Management Portal used to create and manage MCC nodes.
2. The MCC container is deployed and provisioned to the server.
3. The Azure Management Portal is used to configure Microsoft Delivery Optimization Services to route traffic to the MCC server by providing two pieces of information:
    - The publicly accessible IPv4 address of the server hosting the MCC container.
    - The CIDR blocks that represent the client IP address space, which should be routed to the MCC node.
4. Microsoft end-user devices periodically connect with Microsoft Delivery Optimization Services, and the services match the IP address of the client with the IP address of the corresponding MCC node.
5. Microsoft end-user devices make the range requests for content from the MCC node.
6. An MCC node pulls content from the CDN, seeds its local cache stored on disk, and delivers the content to the client.
7. Subsequent requests from end-user devices for content will now come from cache.
8. If the MCC node is unavailable, the client will pull content from CDN to ensure uninterrupted service for your subscribers.

    ![MCC overview 1](images/imcc01.png)

## ISP Requirements for MCC

1. **Azure subscription**: The MCC management portal is hosted within Azure, and is used to create the Connected Cache Azure resource and IoT Hub resource. Both are free services.

    Your Azure subscription ID is first used to provision MCC services, and enable access to the preview. The MCC server requirement for an Azure subscription will cost you nothing. If you do not have an Azure subscription already, you can create an Azure [Pay-As-You-Go](https://azure.microsoft.com/offers/ms-azr-0003p/) account which requires a credit card for verification purposes. For more information, see the [Azure Free Account FAQ](https://azure.microsoft.com/free/free-account-faq/).

    The resources used for the preview, and in the future when this product is ready for production, will be completely free to you - like other caching solutions. 
    
    > [!NOTE]
    > If you request Exchange or Public peering in the future, business email addresses must be used to register ASN's, because Microsoft does not accept gmail or other non-business email addresses.

2. **Hardware to host MCC**: The recommended configuration will serve approximately 35,000 consumer devices, downloading a 2GB payload in 24-hour timeframe at a sustained rate of 6.5 Gbps.

Disk requirements:
- SSDs are recommended due to improved cache read speeds of SSD, compared to HDD.
- Using multiple disks is recommended to improve cache performance.
- RAID disk configurations are discouraged because cache performance will be impacted. If you are using RAID disk configurations, ensure striping.
- The maximum number of disks supported is 10.

NIC requirements:
- Multiple NICs on a single MCC instance are not supported.
- 10Gbps NIC is the minimum speed recommended, but any NIC is supported.

### Sizing recommendations

|   | Minimum | Recommended |
| -- | --- | --- |
| OS|  Ubuntu 20.04 LTS VM or physical server | Ubuntu 20.04 LTS VM or physical server (preferred) |
|NIC | 10 Gbps| at least 10 Gbps |
|Disk | SSD <br>1 drive <br>2TB each  |SSD <br>2-4 drives <br>at least 2TB each  |
|Memory | 8GB | 32GB or greater |
|Cores | 4 | 8 or more  |

## Steps to deploy MCC

To deploy MCC:

1. [Provide Microsoft with the Azure subscription ID](#provide-microsoft-with-the-azure-subscription-id)
2. [Create the MCC Resource in Azure](#create-the-mcc-resource-in-azure)
3. [Create an MCC Node](#create-an-mcc-node-in-azure)
    - IP address space approval information is required 
4. [Edit Cache Node Information](#edit-cache-node-information)
5. [Set up your server](#set-up-your-server)
6. [Install MCC on a physical server or VM](#install-mcc-on-windows)
7. [Verify proper functioning MCC server](#verify-proper-functioning-mcc-server)
8. [Review the MCC summary report](#review-the-mcc-summary-report) 
9. [Review common Issues](#common-issues) if needed.

For questions regarding these instructions contact [msconnectedcache@microsoft.com](mailto:msconnectedcache@microsoft.com)

## Provide Microsoft with the Azure Subscription ID

As part of the MCC preview onboarding process the Azure subscription ID will have been provided to Microsoft. Please contact Microsoft and provide this information if you have not already.


## Create the MCC Resource in Azure

[Link](https://aka.ms/MCC-ISP-PortalDemo) to video instructions:
<https://aka.ms/MCC-ISP-PortalDemo>

The MCC Azure management portal is used to create and
manage MCC nodes. An Azure Subscription ID is used to
grant access to the preview and to create the MCC resource
in Azure and Cache nodes.

##### Use the following link and log in to Azure <https://portal.azure.com/?microsoft_azure_marketplace_ItemHideKey=Microsoft_ConnectedCacheHidden>

-   Choose Create a resource  
    ![Graphical user interface, application Description automatically
    generated](media/a29a93bb4eee0abcb1917c1b4ff23ad0.png)

-   Type " MCC" into the search box and be sure to hit the
    Enter key to show search results.

-   Select “MCC” and select “Create” on the next screen to
    start the process of creating the MCC resource.

    ![image](media/9f714d147e4c90275f8db945b3532ec5.png)

    ![](media/ca8bd090d3d37246f99143691fabf3a2.png)

-   Fill in the required fields to create the MCC
    resource.

    -   Choose the subscription provided to Microsoft.

    -   Azure resource groups are logical groups of resources. Create a new
        resource group and choose a name for your resource group.

    -   Choose “**US West**” for the location of the resource. This choice will
        not impact MCC if the physical location is not in
        the West US, it is just a limitation of the preview.

    -   Choose a name for the MCC resource.

        ![Graphical user interface, text, application, email Description
        automatically generated](media/0485f6efd6fb9c2ff4ac19a70298e322.png)

-   Once all the information has been entered, click on the “Review + Create”
    button. Once validation is complete, click the “Create” button to start the
    resource creation.  
    ![Text, email Description automatically
    generated](media/43b78ec34612279e209c137f99b0d699.png)

##### Error: Validation failed

-   If you get a Validation failed error message on your portal, it is likely
    because you selected the Location as US West 2.

-   To bypass this error, navigate to the previous step and choose (US) West US.

![Graphical user interface, text, application, email Description automatically
generated](media/9e14217bda4114f5cacbf3edff81616a.png)

## Create a MCC Node

Creating a MCC node is a multi-step process and the first
step is to access the MCC private preview management
portal.

1.  After the successful resource creation click on the "Go to resource".

| Under Cache Node Management section on the leftmost panel, click on Cache Nodes. ![Graphical user interface, text, application Description automatically generated](media/2067264f71c854b7ce281c2f0d0478b2.png) |   |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---|

1.  On the Cache Nodes blade, click on the Create Cache Node button.

![Graphical user interface, application Description automatically
generated](media/82874c0364726a752f78793e07e6d477.png)

1.  Clicking the Create Cache Node button will open the Create Cache Node page,
    Cache Node Name is the only field required for initial cache node creation,
    but end-user devices will not request content without proper configuration
    of the other values. The table below describes the information required.

| **Field Name**                | **Expected Value**                         | **Description**                                                                                                                                                                                         |
|-------------------------------|--------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Cache Node Name**           | Alphanumeric name that includes no spaces. | The name of the cache node. You may choose names based on location like Seattle-1. This name must be unique cannot be changed later.                                                                    |
| **Server Ip Address**         | Ipv4 Address                               | Ip address of your MCC server. Used to route end-user devices in your network to the server for Microsoft content downloads. Please note: IP address must be publicly accessible. |
| **Address Range/CIDR Blocks** | Ipv4 CIDR notation                         | IP Address Range/CIDR blocks that should be routed to the MCC server as a comma separated list. For example: 2.21.234.0/24 , 3.22.235.0/24 , 4.23.236.0/24                        |
| **Enable Cache Node**         | Enable/Disable Radio Button                | Enable and the cache node will receive content requests. Disable and the cache node will not receive content requests. Cache nodes are enabled by default.                                              |

![Graphical user interface, application Description automatically
generated](media/c27015e77e3e8d14da0ce802a07985b2.png)

Hovering on the info ![](media/1b3a2ef4f5575feb1b68fc14074a1e08.png) next to
each field will populate the details of that field.

![Graphical user interface, text, application, email Description automatically
generated](media/5db11e3290c80a5f11ffd8e8b632e866.png)

There are two other read-only fields on this page that are populated after the
cache node is created.

| **Field Name**      | **Description**                                                                                                                                                          |
|---------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Ip Space**        | Number of Ips addresses that will be routed to your cache server.                                                                                                        |
| **Activation Keys** | Set of keys to activate your cache node with the MCC services. Copy the keys for use during install. The CustomerID is your Azure subscripiton ID. |

1.  Enter the information for the Cache Node and click on the Create button. In
    the screenshot below only the Cache Node Name is provided, but all
    information can be included if desired.

    ![Graphical user interface, text, application Description automatically
    generated](media/7c1b563974b76e551d41f869ae3162ca.png)

If there are errors the form will provide guidance on how to correct the errors.
For example:

-   The cache node name is in use in the resource or is an incorrect format.

-   If the CIDR block notation or list is incorrect.

-   The server Ip or CIDR block are already in use.

In the screenshot below all information is provided.

![Graphical user interface, application, email Description automatically
generated](media/9b7a25eb285a2c10e7ef78587af8910b.png)

Once the MCC Node has been created, the installer
instructions will be exposed. More details on the installer instructions will be
addressed later in this doc can be found at the [Install Connected
Cache](#install-microsoft-connected-cache-on-a-server-or-vm) section.

![Graphical user interface, text, application, email Description automatically
generated](media/b1bb099ce8a574f1705e35c09f44bac7.png)

### Ip Space Approval Information

There are three states for Ip space (screenshot below) that are explained in the
table below. The preview will require approval from Microsoft CIDR block ranges
that contain more than 50,000 Ip addresses. In the future Microsoft Connected
Cache configuration will support BGP and will therefore have automatic routing
capabilities.

| **Ip Space Status**    | **Description**                                                                                                                                                                                                                                                       |
|------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Valid**              | The Ip space is below the 50,000 Ip space threshold and the space does not overlap with existing cache nodes.                                                                                                                                                         |
| **In Review**          | The Ip space exceeds the 50,000 Ip space and is under review with Microsoft to ensure valid Ip space.                                                                                                                                                                 |
| **Attention Required** | The Ip space has been reviewed and an issue was discovered. Some examples include: Ip space overlap with existing cache node belonging to another customer. Ip space was exceedingly large.  Contact Microsoft for more information if your Ip space has this status. |

![Graphical user interface Description automatically
generated](media/cbfd171017588896b4751b459d46f08b.png)

## Edit Cache Node Information

Ip address or CIDR information can be modified for existing Microsoft Connected
Cache nodes in the portal.

To edit Ip address or CIDR information click on the Cache Node Name which will
open the Cache Node Configuration page. Cache nodes can be deleted here by
clicking the check box to the left of a Cache Node Name and then clicking the
delete toolbar item. Be aware that if a cache node is deleted, there is no way
to recover the cache node or any of the information related to the cache node.

![Graphical user interface, text, application Description automatically
generated](media/b6929572db97e3812be208a7a10afe10.png)

The Server Ip Address, Address Range/CIDR Blocks, and Enable Cache Node are all
editable as show in the screenshot below.

![Graphical user interface, text, application, email Description automatically
generated](media/14e6ab80f7d55c4fbcb1d2a3887e442a.png)

## Set up a server with SR or an Ubuntu VM running on Windows Server

The MCC module is optimized for Ubuntu 20.04 LTS. Install
Ubuntu 20.04 LTS on bare metal or VM of your choice. As discussed earlier, the
recommended configuration (details below) will serve approximately 35,000
consumer devices downloading a 2GB payload in 24-hour timeframe at a sustained
rate of 6.5 Gbps.

|             | **Minimum**                                 | **Recommended**                                    |
|-------------|---------------------------------------------|----------------------------------------------------|
| **Server**  | Ubuntu 20.04 LTS VM or Physical Server      | Ubuntu 20.04 LTS VM or Physical Server (Preferred) |
| **NIC**     | 10 Gbps                                     | 10 Gbps                                            |
| **Disk**    | SSD 1 – 2 drives minimum 2 TB each minimum  | SSD 2 – 4 drives minimum 2 TB each minimum         |
| **Memory**  | 8 GB                                        | 32 GB or more                                      |
| **Cores**   | 4                                           | 8 or more                                          |

## Install MCC on a Server or VM

[Link](https://aka.ms/MCC-ISP-InstallerDemo) to video instructions:
<https://aka.ms/MCC-ISP-InstallerDemo>

Installing MCC on your bare metal server or VM is a
straightforward process. A Bash script installer performs the following tasks:

-   Azure IoT Edge relies on an OCI-compatible container runtime. The script
    will install the Moby engine and CLI.

-   Installs IoT Edge.

-   Installs SSH to support remote access to the server

-   Enables the firewall and opens ports 80 and 22 for inbound and outbound
    traffic. Port 80 is used by MCC and port 22 is used
    for SSH communications.

-   Configures Connected Cache tuning settings.

-   Creates the necessary *FREE* Azure resource - IoT Hub/IoT Edge.

-   Deploys the MCC container to server.

    **Note**

    **Please ensure Port 5000 is open so Microsoft can verify proper functioning
    of the cache server**

Steps to install MCC

1.  Download and unzip mccinstaller.zip from the create cache node page or cache
    node configuration page which contains the necessary installation files.

    ![Graphical user interface, text, application Description automatically
    generated](media/19c6a67495597b16758878c74be82aab.png)

    Files contained in the mccinstaller.zip file:

-   installmcc.sh – main installer file.

-   installIotEdge.sh – Installs the necessary prerequisites like IoT Edge
    runtime and Docker and makes necessary host OS settings to optimization
    caching performance.

-   resourceDeploymentForConnectedCache.sh – Creates Azure cloud resources
    required to support MCC control plane.

-   mccdeployment.json – Deployment manifest used by IoT Edge to deploy the MCC
    container and configure settings on the container like cache drive(s)
    location size(s).

1.  Copy all 4 installation files to your server or Linux VM

2.  Before proceeding any further, ensure that you have a data drive configured
    on your Linux VM. You will need to specify the location for this cache drive
    on step 9. For instructions on mounting a disk, follow these steps: [Attach
    a data disk to a Linux VM \| Microsoft
    Docs](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/attach-disk-portal#find-the-disk)

3.  Open a terminal and change the access permissions to execute on the
    installmcc.sh Bash script file using chmod.

    sudo chmod +x installmcc.sh

4.  Copy the Bash script line provided and run the Bash script from the
    terminal.  
    ![](media/d8070d8edd589e769a33707b48e33f01.png)

5.  You will be prompted to login to the Azure Portal using a device code.

![](media/20245b159b1f0a1724699e512d7593ba.jpg)

1.  You will be prompted to enter the Azure Container Registry (ACR) password
    for access to the MCC container.

    ![](media/b8b711432bb4cf267c30ccece02e2c99.png)

2.  You will then be prompted with the number of drives to configure.

![](media/42e10213de01e13490c2c4dd22d99cbb.jpg)

1.  The script will prompt for location and size of the cache drive(s).

![](media/88f6bd594987cb51df8242071931f183.jpg)

**WARNING**

The permissions / ownerships on the cache drive location will be changed to
everyone via chmod 777

**Do not** point the cache drive location to any of the following: “**.**”,
“**./var**”, “**/**”, “**\<space\>**”

Specifying any of the directories mentioned above will corrupt the VM and you
will need to provision a new one.

![](media/7b1fbec06b8f03e2e3fdd6987e2e6c8b.jpg)

1.  If this is your first MCC deployment, select “n” when
    prompted for an IoT Hub. If this is **not** your first MCC deployment, you
    can use an existing IoT hub from your previous MCC installation. After
    selecting “Y”, we will display your existing IoT Hubs, you can copy and
    paste the resulting IoT Hub name to continue.

    ![Graphical user interface, text, application Description automatically
    generated](media/5bb1984f12020e382d6db4606187ac0b.png)

2.  If there are no errors go to the next step.

    -   If there are errors, inspect the installer logs which are under
        /etc/mccresourcecreation/.

    -   If there were follow the instructions to trouble shoot IoT edge
        <https://docs.microsoft.com/en-us/azure/iot-edge/troubleshoot>

## Verify Proper Functioning MCC Server

#### Verify Client Side

Log into to the Connected Cache server or ssh and run this command from a
terminal to see the running modules (containers).

sudo iotedge list​

![undefined](media/4218dadadf8f67314b7e710688279884.png)

If edgeAgent and edgeHub containers are listed, but not “MCC”, you may view the
status of the IoTEdge security manager using the command:

sudo journalctl -u iotedge -f

For example, this command will provide the current status of the starting,
stopping of a container, or the container pull and start as is shown in the
sample below:  
![undefined](media/95241ac0da34a9cd59b8e273c2904b6a.png)

#### Verify Server Side

It can take a few minutes for the container to deploy.

For a validation of properly functioning MCC, execute the
following command in the terminal of the cache server or any device in the
network. Replace \<CacheServerIP\> with the IP address of the cache server.

wget
[http://\<CacheServerIP\>/mscomtest/wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com]()

A successful test result will look like this:

![](media/c60aa10ea89df7a3c73b96952177b6c4.png)

Similarly, enter this URL from a browser in the network:

[http://\<CacheServerIP\>/mscomtest/wuidt.gif?cacheHostOrigin=au.download.windowsupdate.com]()

If the test fails, see the common issues section for more information.

# Common Issues

Please note: You should consult the IoT Edge troubleshooting guide ([Common
issues and resolutions for Azure IoT
Edge](https://docs.microsoft.com/en-us/azure/iot-edge/troubleshoot)) for any
issues you may encounter configuring IoT Edge, but we have listed a few issues
below that we hit during our internal validation.

Use this command to check the IoT Edge Journal

sudo journalctl -u iotedge –f

## DNS Needs to be Configured

If after running the check the IoT Edge setup/install state

sudo iotedge check --verbose

If you see the following issues with ports 5671, 443, and 8883 - it will
manifest like the screenshot below, it means your IoT Edge device needs to
update the DNS for Docker.

![undefined](media/a013f02b6b2782c0987a7afe0883be0b.png)

Follow these steps to configure the device to work with your DNS.

1.  Use ifconfig to find appropriate NIC adapter name.

    ifconfig​

2.  Run

    nmcli device show \<network adapter\>

    to show you the DNS name for Ethernet adapter. For example to show DNS
    information for eno1:

    nmcli device show eno1 ​  
    ![undefined](media/f54e4468720ae884bddd985bc9aa5546.png)

3.  Open/create the Docker configuration file used to configure the DNS server

    sudo nano /etc/docker/daemon.json​

1.  Paste the following into the daemon.json file (In the screenshot above
    IP4.DNS[1] is used)  
    
    { "dns": ["x.x.x.x"]}

2.  Save the file changes to daemon.json  
    Please note: You may need to change permissions on this file. For example,  
    
    sudo chmod 555 /etc/docker/daemon.json​

1.  Restart Docker (to pick up the new DNS) and restart IoTEdge  
    
    sudo systemctl restart dockersudo systemctl daemon-reloadsudo restart
    IoTEdge

## Diagnostics Script

If you are having issues with your MCC, we included a diagnostics script which
will collect all your logs and zip them into a single file. You can then send us
these logs via email for the MCC team to debug.

To run this script:

1.  Navigate to the following folder in the MCC installation files:

    mccinstaller \> MccResourceInstall \> Diagnostics

2.  Run the following commands:

    sudo chmod +x collectMccDiagnostics.sh

    sudo ./collectMccDiagnostics.sh

3.  The script stores all the debug files into a folder and the creates a tar
    file. After the script is finished running, it will output the path of the
    tar file which you can share with the MCC team (should be
    "/etc/mccdiagnostics/support_bundle_\$timestamp.tar.gz")

4.  [Email the MCC
    team](mailto:msconnectedcache@microsoft.com?subject=Debugging%20Support%20Request%20for%20MCC)
    and attach this file asking for debugging support. Screenshots of the error
    along with any other warnings you saw will be helpful during out debugging
    process.

# Updating your MCC

Throughout the private preview phase, we will send you security and feature
updates for MCC. Please follow these steps to perform the update.

Run the following commands with the **arguments** we provided in the email to
update your MCC:

sudo chmod +x updatemcc.sh

sudo chmod +x installIoTEdge.sh

sudo ./updatemcc.sh version="\<**VERSION**\>" tenantid="\<**TENANTID**\>"
customerid="\<**CUSTOMERID**\>" cachenodeid="\<**CACHENODEID**\>"
customerkey="\<**CUSTOMERKEY**\>"

e.g. sudo ./updatemcc.sh
version="msconnectedcacheprod.azurecr.io/mcc/linux/iot/mcc-ubuntu-iot-amd64:1.2.1.981"
tenantid="72f988bf-86f1-41af-91ab-2d7cd011db47"
customerid="99d897gg-86f1-41af-91ab-4jau6ske0sdf" cachenodeid="
cd01sdfh-435n-0das-56gh90dfrt67 " customerkey="h90d234f-vbnm-lk43-0742khsd45hj”

# Uninstalling MCC

In the zip file, you will find *uninstallmcc.sh* which will uninstall MCC and
all the related components. Please contact the MCC Team before running this
script and only run this script if you are facing issues with MCC installation.
**Exercise caution before running this script as existing IoT workflows in this
VM will also be erased.**

This script will remove the following:

-   IoT Edge

-   Edge Agent

-   Edge Hub

-   MCC

-   Moby CLI

-   Moby Engine

To run the script, enter the following commands:

sudo chmod +x uninstallmcc.sh

sudo ./uninstallmcc.sh

# Appendix

Performance of MCC in Hypervisor environments

We have observed in Hypervisor environments the cache server peak egress at
around 1.1 Gbps. If you wish to maximize the egress in hypervisor environments
it is critical to make two settings changes.

1.  Enable SR-IOV in the BIOS AND enable SR-IOV in the NIC properties, and
    finally, enable SR-IOV in the hypervisors for the MCC VM. Microsoft has
    found these settings to double egress within a MSFT hypervisor deployment.

2.  Enable “high performance” in the BIOS as opposed to energy savings.
    Microsoft has found this setting change nearly doubled egress a MSFT
    hypervisor deployment.

## Setting up a VM on Windows Server

You may choose to set up hardware that will natively run Ubuntu 20.04 LTS or an
Ubuntu VM. The steps below detail setting up a VM on Windows.

1.  Download the ISO

    1.  [Download Ubuntu Desktop](https://ubuntu.com/download/desktop)

    2.  [Download Ubuntu
        Server](https://mirror.cs.jmu.edu/pub/ubuntu-iso/20.04.2/ubuntu-20.04.2-live-server-amd64.iso)

2.  Start the new VM wizard the give your VM a name and choose a location for
    the VM.  
    
    ![undefined](media/8f5f8c9ac4c81e94e46be01715e4fc15.png)  
    
    ![undefined](media/7a6716e06e37db86ff94dd88148f3fc2.png)

3.  Choose Generation 2 VM and specify the startup memory. Please note: as it
    states, you cannot change to Generation 2 after you created the VM.  
    
    ![undefined](media/d024ba7064e2d079e0b56b7619df4eee.png)![undefined](media/1366919171dac02be5bf36084eda8dab.png)

4.  Choose the network adapter you wish to use.  
    
    ![undefined](media/1f2fd8dd7b924c7386974a6f0183830b.png)

5.  Set the virtual hard disk parameters. Please note: you should specify enough
    space for the OS and the content that will be cached. That sample below
    allocates a terabyte.  
    
    ![undefined](media/8b835d4f5268b64053bea825edebfba2.png)

6.  Install from the ISO for Ubuntu 20.04 LTS that you downloaded.  
    
    ![undefined](media/8cbfeb974f5dc31add39c4c5337c3826.png)

7.  Finish the creation of the Ubuntu VM.  
    
    ![undefined](media/4fca6e9966d84d553541b13f99209f2a.png)

8.  Before you start the Ubuntu VM make sure secure boot is **disabled** and
    that you have allocated multiple cores to the VM. The example below has
    allocated 12, but your configuration may vary.  
    
    ![undefined](media/8462ffefe6a3bed0b2d5fb9296d8c6db.png)  
    ![undefined](media/6a66b3e5baf7058d859eccd9cfee0e58.png)  
    
    ![undefined](media/af83c15ad7c1dd76b8c17d467d8a6d06.png)

9.  Start the VM and choose the option that will Install Ubuntu. Choose your
    default language.  
    
    ![undefined](media/ee7eb46954a53283d507f04bb54b4355.png)  
    
    ![undefined](media/02ee1153b51578416c4b544a3e819ea8.png)

10. Choose the options you wish for installing updates and third party hardware.
    In the screenshot below, we have chosen to download updates and install
    third party software drivers.  
    
    ![undefined](media/43bb146baeb5e18af3ab2fdd046ffc76.png)

11. If you had a previous version of Ubuntu installed, we recommend erasing and
    installing Ubuntu 16.04. Choose your time zone, and keyboard layout.  
    
    ![undefined](media/579dfc263eb6d39dffdd8d605414b657.png)  
    
    ![undefined](media/251543005c68c6250f2331864edeae47.png)  
    
    ![undefined](media/ace675f480e7bd900378a85ce6f08d51.png)  
    
    ![undefined](media/43bb146baeb5e18af3ab2fdd046ffc76.png)  
    
    ![undefined](media/43bb146baeb5e18af3ab2fdd046ffc76.png)

12. Choose your username, a name for your computer and password. Remember,
    everything is case sensitive in Linux. You will be asked to reboot in order
    to complete the installation.  
    
    ![undefined](media/f40288bb58489090f87c04c77e4b8022.png)  
    
    ![undefined](media/b47c5cdec1398b3942af924d9e0f583c.png)

13. Important: When prompted with the option to upgrade, decline.

14. ![undefined](media/3efad9b3284ad91835ce20bc5d221fdb.png)  
    
    ![undefined](media/c7734d64afcb99f50a671313893fa5be.png)

Your Ubuntu VM should now be ready for the next step: [*Install Microsoft
Connected Cache on Your Server or
VM*](#install-microsoft-connected-cache-on-a-server-or-vm)

## IoT Edge runtime

The Azure IoT Edge runtime enables custom and cloud logic on IoT Edge devices.
The runtime sits on the IoT Edge device, and performs management and
communication operations. The runtime performs several functions:

-   Installs and update workloads (Docker containers) on the device.

-   Maintains Azure IoT Edge security standards on the device.

-   Ensures that IoT Edge modules (Docker containers) are always running.

-   Reports module (Docker containers) health to the cloud for remote
    monitoring.

-   Manages communication between an IoT Edge device and the cloud.

For more information on Azure IoT Edge, please see the Azure IoT Edge
documentation <https://docs.microsoft.com/en-us/azure/iot-edge/about-iot-edge>.
