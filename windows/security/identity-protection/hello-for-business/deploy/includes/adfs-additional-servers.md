---
ms.date: 01/03/2024
ms.topic: include
---

## Additional federation servers

Organizations should deploy more than one federation server in their federation farm for high-availability. You should have a minimum of two federation services in your AD FS farm, however most organizations are likely to have more. This largely depends on the number of devices and users using the services provided by the AD FS farm.

### Server authentication certificate

Each server you add to the AD FS farm must have a proper server authentication certificate. Refer to the [Enroll for a TLS Server Authentication Certificate](#enroll-for-a-tls-server-authentication-certificate) section of this document to determine the requirements for your server authentication certificate. As previously stated, AD FS servers used exclusively for on-premises deployments of Windows Hello for Business can use enterprise server authentication certificates rather than server authentication certificates issued by public certificate authorities.

### Install additional servers

Adding federation servers to the existing AD FS farm begins with ensuring the server are fully patched, to include Windows Server 2016 Update needed to support Windows Hello for Business deployments (https://aka.ms/whfbadfs1703). Next, install the Active Directory Federation Service role on the additional servers and then configure the server as an additional server in an existing farm.

## Load balance AD FS

Many environments load balance using hardware devices. Environments without hardware load-balancing capabilities can take advantage the network load-balancing feature included in Windows Server to load balance the AD FS servers in the federation farm. Install the Windows Network Load Balancing feature on all nodes participating in the AD FS farm that should be load balanced.

### Install Network Load Balancing Feature on AD FS Servers

Sign-in the federation server with *Enterprise Administrator* equivalent credentials.

1. Start **Server Manager**. Select **Local Server** in the navigation pane
1. Select **Manage** and then select **Add Roles and Features**
1. Select **Next** On the **Before you begin** page
1. On the **Select installation type** page, select **Role-based or feature-based installation** and select **Next**
1. On the **Select destination server** page, choose **Select a server from the server pool**. Select the federation server from the **Server Pool** list. Select **Next**
1. On the **Select server roles** page, select **Next**
1. Select **Network Load Balancing** on the **Select features** page
1. Select **Install** to start the feature installation

### Configure Network Load Balancing for AD FS

Before you can load balance all the nodes in the AD FS farm, you must first create a new load balance cluster. Once you have created the cluster, then you can add new nodes to that cluster.

Sign-in a node of the federation farm with *Administrator* equivalent credentials.

1. Open **Network Load Balancing Manager** from **Administrative Tools**
1. Right-click **Network Load Balancing Clusters**, and then select **New Cluster**
1. To connect to the host that is to be a part of the new cluster, in the **Host** text box, type the name of the host, and then select **Connect**
1. Select the interface that you want to use with the cluster, and then select **Next** (the interface hosts the virtual IP address and receives the client traffic to load balance)
1. In **Host Parameters**, select a value in **Priority (Unique host identifier)**. This parameter specifies a unique ID for each host. The host with the lowest numerical priority among the current members of the cluster handles all of the cluster's network traffic that is not covered by a port rule. Select **Next**
1. In **Cluster IP Addresses**, select **Add** and type the cluster IP address that is shared by every host in the cluster. NLB adds this IP address to the TCP/IP stack on the selected interface of all hosts that are chosen to be part of the cluster. Select **Next**
1. In **Cluster Parameters**, select values in **IP Address** and **Subnet mask** (for IPv6 addresses, a subnet mask value is not needed). Type the full Internet name that users will use to access this NLB cluster
1. In **Cluster operation mode**, select **Unicast** to specify that a unicast media access control (MAC) address should be used for cluster operations. In unicast mode, the MAC address of the cluster is assigned to the network adapter of the computer, and the built-in MAC address of the network adapter is not used. We recommend that you accept the unicast default settings. Select **Next**
1. In Port Rules, select Edit to modify the default port rules to use port 443

### Additional AD FS Servers

1. To add more hosts to the cluster, right-click the new cluster, and then select **Add Host to Cluster**
1. Configure the host parameters (including host priority, dedicated IP addresses, and load weight) for the additional hosts by following the same instructions that you used to configure the initial host. Because you are adding hosts to an already configured cluster, all the cluster-wide parameters remain the same

## Configure DNS for Device Registration

Sign-in the domain controller or administrative workstation with domain administrator equivalent credentials.\
You'll need the *federation service* name to complete this task. You can view the federation service name by selecting **Edit Federation Service Properties** from the **Action** pan of the **AD FS** management console, or by using `(Get-AdfsProperties).Hostname.` (PowerShell) on the AD FS server.

1. Open the **DNS Management** console
1. In the navigation pane, expand the domain controller name node and **Forward Lookup Zones**
1. In the navigation pane, select the node that has the name of your internal Active Directory domain name
1. In the navigation pane, right-click the domain name node and select **New Host (A or AAAA)**
1. In the **name** box, type the name of the federation service. In the **IP address** box, type the IP address of your federation server. Select **Add Host**
1. Right-click the `<domain_name>` node and select **New Alias (CNAME)**
1. In the **New Resource Record** dialog box, type `enterpriseregistration` in the **Alias** name box
1. In the **fully qualified domain name (FQDN)** of the target host box, type `federation_service_farm_name.<domain_name_fqdn`, and select OK
1. Close the DNS Management console

> [!NOTE]
> If your forest has multiple UPN suffixes, please make sure that `enterpriseregistration.<upnsuffix_fqdn>` is present for each suffix.

## Configure the Intranet Zone to include the federation service

The Windows Hello provisioning presents web pages from the federation service. Configuring the intranet zone to include the federation service enables the user to authenticate to the federation service using integrated authentication. Without this setting, the connection to the federation service during Windows Hello provisioning prompts the user for authentication.

### Create an Intranet Zone Group Policy

Sign-in the domain controller or administrative workstation with *Domain Admin* equivalent credentials:

1. Start the **Group Policy Management Console** (`gpmc.msc`)
1. Expand the domain and select the **Group Policy Object** node in the navigation pane
1. Right-click **Group Policy object** and select **New**
1. Type **Intranet Zone Settings** in the name box and select **OK**
1. In the content pane, right-click the **Intranet Zone Settings** Group Policy object and select **Edit**
1. In the navigation pane, expand **Policies** under **Computer Configuration**
1. Expand **Administrative Templates > Windows Component > Internet Explorer > Internet Control Panel >Security Page**. Open **Site to Zone Assignment List**
1. Select **Enable > Show**. In the **Value Name** column, type the url of the federation service beginning with https. In the **Value** column, type the number **1**. Select OK twice, then close the Group Policy Management Editor

### Deploy the Intranet Zone Group Policy object

1. Start the **Group Policy Management Console** (gpmc.msc)
1. In the navigation pane, expand the domain and right-click the node that has your Active Directory domain name and select **Link an existing GPO…**
1. In the **Select GPO** dialog box, select **Intranet Zone Settings** or the name of the Windows Hello for Business Group Policy object you previously created and select **OK**
