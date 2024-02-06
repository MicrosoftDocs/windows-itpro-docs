---
ms.date: 01/03/2024
ms.topic: include
---

## Deploy the AD FS role

>[!IMPORTANT]
> Finish the entire AD FS configuration on the first server in the farm before adding the second server to the AD FS farm. Once complete, the second server receives the configuration through the shared configuration database when it is added the AD FS farm.

Sign-in the federation server with *Enterprise Administrator* equivalent credentials.

1. Start **Server Manager**. Select **Local Server** in the navigation pane
1. Select **Manage > Add Roles and Features**
1. Select **Next** on the **Before you begin** page
1. On the **Select installation type** page, select **Role-based or feature-based installation > Next**
1. On the **Select destination server** page, choose **Select a server from the server pool**. Select the federation server from the **Server Pool** list and **Next**
1. On the **Select server roles** page, select **Active Directory Federation Services** and **Next**
1. Select **Next** on the **Select features** page
1. Select **Next** on the **Active Directory Federation Service** page
1. Select **Install** to start the role installation

## Review to validate the AD FS deployment

Before you continue with the deployment, validate your deployment progress by reviewing the following items:

> [!div class="checklist"]
> * Confirm the AD FS farm uses the correct database configuration
> * Confirm the AD FS farm has an adequate number of nodes and is properly load balanced for the anticipated load
> * Confirm **all** AD FS servers in the farm have the latest updates installed
> * Confirm all AD FS servers have a valid server authentication certificate

## Device registration service account prerequisites

The use of Group Managed Service Accounts (GMSA) is the preferred way to deploy service accounts for services that support them. GMSAs have security advantages over normal user accounts because Windows handles password management. This means the password is long, complex, and changes periodically. AD FS supports GMSAs, and it should be configured using them for additional security.

GSMA uses the *Microsoft Key Distribution Service* that is located on the domain controllers. Before you can create a GSMA, you must first create a root key for the service. You can skip this if your environment already uses GSMA.

### Create KDS Root Key

Sign-in a domain controller with *Enterprise Administrator* equivalent credentials.

Start an elevated PowerShell console and execute the following command:

```PowerShell
Add-KdsRootKey -EffectiveTime (Get-Date).AddHours(-10)
```

## Configure the Active Directory Federation Service Role

Use the following procedures to configure AD FS.

Sign-in to the federation server with *Domain Administrator* equivalent credentials. These procedures assume you are configuring the first federation server in a federation server farm.

1. Start **Server Manager**
1. Select the notification flag in the upper right corner and select **Configure the federation services on this server**
1. On the **Welcome** page, select **Create the first federation server farm > Next**
1. On the **Connect to Active Directory Domain Services** page, select **Next**
1. On the **Specify Service Properties** page, select the recently enrolled or imported certificate from the **SSL Certificate** list. The certificate is likely named after your federation service, such as *sts.corp.contoso.com*
1. Select the federation service name from the **Federation Service Name** list
1. Type the *Federation Service Display Name* in the text box. This is the name users see when signing in. Select **Next**
1. On the **Specify Service Account** page, select **Create a Group Managed Service Account**. In the **Account Name** box, type *adfssvc*
1. On the **Specify Configuration Database** page, select **Create a database on this server using Windows Internal Database** and select **Next**
1. On the **Review Options** page, select **Next**
1. On the **Pre-requisite Checks** page, select **Configure**
1. When the process completes, select **Close**

### Add the AD FS service account to the *Key Admins* group

During Windows Hello for Business enrollment, the public key is registered in an attribute of the user object in Active Directory. To ensure that the AD FS service can add and remove keys are part of its normal workflow, it must be a member of the *Key Admins* global group.

Sign-in to a domain controller or management workstation with *Domain Administrator* equivalent credentials.

1. Open **Active Directory Users and Computers**
1. Select the **Users** container in the navigation pane
1. Right-click **Key Admins** in the details pane and select **Properties**
1. Select the **Members > Add…**
1. In the **Enter the object names to select** text box, type *adfssvc*. Select **OK**
1. Select **OK** to return to **Active Directory Users and Computers**
1. Change to server hosting the AD FS role and restart it

## Configure the device registration service

Sign-in to the federation server with *Enterprise Administrator* equivalent credentials. These instructions assume you are configuring the first federation server in a federation server farm.

1. Open the **AD FS management** console
1. In the navigation pane, expand **Service**. Select **Device Registration**
1. In the details pane, select **Configure device registration**
1. In the **Configure Device Registration** dialog, Select **OK**

:::image type="content" source="../images/adfs-device-registration.png" lightbox="../images/adfs-device-registration.png" alt-text="Screenshot that shows AD FS device registration: configuration of the service connection point.":::

Triggering device registration from AD FS, creates the service connection point (SCP) in the Active Directory configuration partition. The SCP is used to store the device registration information that Windows clients will automatically discover.

:::image type="content" source="../images/adfs-scp.png" lightbox="../images/adfs-scp.png" alt-text="Screenshot that shows AD FS device registration: service connection point object created by AD FS.":::