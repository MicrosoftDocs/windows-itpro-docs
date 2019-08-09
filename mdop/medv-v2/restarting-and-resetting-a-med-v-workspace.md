---
title: Restarting and Resetting a MED-V Workspace
description: Restarting and Resetting a MED-V Workspace
author: levinec
ms.assetid: a959cdb3-a727-47c7-967e-e58f224e74de
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Restarting and Resetting a MED-V Workspace


During troubleshooting, you may sometimes find it necessary to restart or reset the MED-V workspace. Restarting the MED-V workspace is basically the same as restarting a physical computer. Resetting the MED-V workspace reruns first time setup and deletes all data that is stored in the virtual machine. Because all stored data is deleted, you typically should only reset the MED-V workspace to resolve the most serious troubleshooting issues, or to restore a previously working MED-V workspace back to a working state.

For information about how to open the MED-V Administration Toolkit, see [Troubleshooting MED-V by Using the Administration Toolkit](troubleshooting-med-v-by-using-the-administration-toolkit.md).

**Restarting a MED-V Workspace**

1.  On the **MED-V Administration Toolkit** window, click **Restart MED-V Workspace**. A dialog window opens in which you must confirm that you want to restart the MED-V workspace.

2.  Click **Restart**.

    Any published applications that are running or redirected web sites that are open will be closed when the MED-V workspace restarts.

**Resetting a MED-V Workspace**

1.  On the **MED-V Administration Toolkit** window, click **Reset MED-V Workspace**. A dialog window opens in which you must confirm that you want to reset the MED-V workspace.

    **Warning**  
    Resetting the MED-V workspace causes first time setup to run again, and thus reloads the original virtual hard disk. All data that is stored in the MED-V workspace since first time setup was originally run will be deleted.

     

2.  Click **Reset**.

    Any published applications that are running or redirected web sites that are open will be closed when the MED-V workspace resets.

## Related topics


[Viewing and Configuring MED-V Logs](viewing-and-configuring-med-v-logs.md)

[Viewing MED-V Workspace Configurations](viewing-med-v-workspace-configurations.md)

 

 





