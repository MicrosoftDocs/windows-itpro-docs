---
title: How to configure the client to receive package and connection groups updates from the publishing server (Windows 10)
description: How to configure the client to receive package and connection groups updates from the publishing server.
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/25/2018
ms.topic: article
---
# How to configure the client to receive package and connection groups updates from the publishing server

>Applies to: Windows 10, version 1607

The App-V publishing server's single-point management and high scalability lets you deploy packages and connection groups and keep them up to date.

This article will tell you how to configure the App-V client to receive updates from the publishing server.

>[!NOTE]
>The following example has the management server installed on a computer named **MyMgmtSrv**, and the publishing server installed on a computer named **MyPubSrv**. If the computers you'll be configuring the App-V client on have different names, you should replace the example's names with your computer's names.

## Configure the App-V client to receive updates from the publishing server

1. Deploy the App-V management and publishing servers, and add the required packages and connection groups. For more information about adding packages and connection groups, see [How to add or upgrade packages by using the Management Console](appv-add-or-upgrade-packages-with-the-management-console.md) and [How to create a connection group](appv-create-a-connection-group.md).
2. To open the management console, open a web browser and enter the following URL: <https://MyMgmtSrv/AppvManagement/Console.html>. Import, publish, and entitle all packages and connection groups that your users will need.
3. On the computer running the App-V client, open an elevated Windows PowerShell command prompt, and run the following command:

    ```PowerShell
    Add-AppvPublishingServer -Name ABC -URL https://MyPubSrv/AppvPublishing
    ```

    This command will configure the specified publishing server. You should see output similar to the following:
    
    ```PowerShell
    Id                        : 1
    SetByGroupPolicy          : False
    Name                      : ABC
    URL                       : https://MyPubSrv/AppvPublishing
    GlobalRefreshEnabled      : False
    GlobalRefreshOnLogon      : False
    GlobalRefreshInterval     : 0
    GlobalRefreshIntervalUnit : Day
    UserRefreshEnabled        : True
    UserRefreshOnLogon        : True
    UserRefreshInterval       : 0
    UserRefreshIntervalUnit   : Day
    ```

4. On the computer running the App-V client, open a Windows PowerShell command prompt and enter the following cmdlet:

    ```PowerShell
    Sync-AppvPublishingServer -ServerId 1
    ```

    This cmdlet will query the publishing server for which packages and connection groups need to be added or removed for this particular client based on your configured entitlements for the packages and connection groups on the management server.





## Related topics

* [Operations for App-V](appv-operations.md)
