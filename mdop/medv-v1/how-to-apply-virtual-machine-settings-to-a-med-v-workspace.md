---
title: How to Apply Virtual Machine Settings to a MED-V Workspace
description: How to Apply Virtual Machine Settings to a MED-V Workspace
author: dansimp
ms.assetid: b50d0dfb-8d61-4543-9607-a29bbb1ed45f
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Apply Virtual Machine Settings to a MED-V Workspace


Every MED-V workspace must have a Microsoft Virtual PC image associated with it. The virtual machine settings enable you to assign a Virtual PC image as well as set other virtual machine properties.

All virtual machine settings are configured in the **Policy** module, on the **Virtual Machine Settings** tab.

**To apply virtual machine settings to a MED-V workspace**

1.  Click the MED-V workspace to configure.

2.  Configure the virtual machine properties as described in the following table.

3.  On the **Policy** menu, select **Commit**.

**Virtual Machine Properties**

Property
Description
*Virtual Machine Settings*

Assigned Image

The actual Microsoft Virtual PC image assigned to the MED-V workspace. The menu provides a list of all available Virtual PC images. The following image types are in the **Active** image list:

-   **Local test images**—Images on the local computer that are not yet packed. These image names are followed by the word “test” in parentheses (test) and are for testing purposes only.

-   **Local packed images**—Packed images on the local computer. These images are followed by the word “local” in parentheses (local) and cannot be downloaded by clients until the administrator uploads them to the server.

    A local image can be selected if you are creating a package that will be distributed to the client via removable media (such as USB or DVD).

-   **Packed images on server**—Images that are on the server and are available for download by clients. Click Refresh to refresh the images list.

    **Note**  
    Each MED-V workspace image can only be used by one Windows user.

     

Workspace is persistent

Select this check box to configure the MED-V workspace as persistent. In a persistent MED-V workspace, when the MED-V workspace is stopped, changes and additions to the MED-V workspace are saved in the MED-V workspace.

For a Domain MED-V workspace, this option must be selected.

**Note**  
This setting should not be changed after a MED-V workspace is deployed to users.

 

Shut down the VM when stopping the Workspace

Select this check box to shut down the virtual machine when stopping the MED-V workspace. If this check box is cleared, at the completion of each session, the virtual machine is not shut down but instead takes a snapshot of the virtual machine. Upon the initiation of a new session, Windows starts from the snapshot (that is, Windows does not restart and no login is required).

**Note**  
This property is enabled only if **Workspace is persistent** is selected.

 

Logon to Windows in VM using MED-V credentials (SSO)

Select this check box to log in to Windows on the virtual machine by using the MED-V credentials entered when logging in to MED-V client.

**Note**  
This property is enabled only when **Workspace is persistent** is selected.

 

Workspace is revertible

Select this check box to configure the MED-V workspace as revertible. In a revertible MED-V workspace, at the completion of each session (that is, when the user stops the MED-V workspace), the MED-V workspace reverts to the original state it was in during deployment. No changes or additions that the user made are saved on the MED-V workspace between sessions.

**Note**  
This setting should not be changed after a MED-V workspace is deployed to users.

 

Synchronize Workspace time zone with host

Select this check box to synchronize the time zone in the MED-V workspace with the host.

The synchronization works differently depending on whether the MED-V workspace is persistent or revertible, as follows:

-   In a persistent MED-V workspace, the time zone first tries to synchronize with the server. If that fails, it synchronizes with the host.

-   In a revertible MED-V workspace, the time zone synchronizes with the host.

*Lock Settings*

Lock the Workspace on host standby/hibernate event

Select this check box to automatically lock the MED-V workspace when the host computer goes into standby or hibernate.

Lock the Workspace after

Select this check box to lock the MED-V workspace when the MED-V workspace is idle for a specified period of time. When selected, the number box is enabled. Enter the number of minutes of idle time before locking the MED-V workspace.

**Note**  
The idle time refers to the MED-V workspace applications (not the host applications).

 

*Image Update Settings*

Keep only

Select this check box to limit the number of old image versions to keep.

When selected, the number box is enabled. Enter the number of old versions to keep.

Suggest update when a new version is available

Select this check box to suggest (but not force) an update when a new version of the image is available.

Clients should use Trim Transfer when downloading images for this Workspace

Select this check box to enable Trim Transfer (for more information, see [MED-V Trim Transfer Technology](med-v-trim-transfer-technology-medvv2.md)) when downloading images associated with this MED-V workspace. If this check box is cleared, the full image will be downloaded.

**Note**  
Trim Transfer requires indexing the hard drive, which might take a considerable amount of time. It is recommended to use Trim Transfer when indexing the hard drive is more efficient than downloading the new image version, such as when downloading an image version that is similar to the existing version.

 

 

## Related topics


[Creating a MED-V Image](creating-a-med-v-image.md)

[Using the MED-V Management Console User Interface](using-the-med-v-management-console-user-interface.md)

[Creating a MED-V Workspace](creating-a-med-v-workspacemedv-10-sp1.md)

 

 





