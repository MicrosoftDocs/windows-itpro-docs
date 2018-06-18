---
title: How to Configure the Client to Receive Package and Connection Groups Updates From the Publishing Server (Windows 10)
description: How to Configure the Client to Receive Package and Connection Groups Updates From the Publishing Server
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
---
# How to Configure the Client to Receive Package and Connection Groups Updates From the Publishing Server

>Applies to: Windows 10, version 1607

The App-V publishing server's single-point management and high scalability lets you deploy packages and connection groups and keep them up to date.

This article will tell you how to configure the App-V client to receive updates from the publishing server.

>[!NOTE]
>The following example has the management server installed on a computer named **MyMgmtSrv**, and the publishing server installed on a computer named **MyPubSrv**. If the computers you'll be configuring the App-V client on have different names, please replace the example's names with your computer's names.

## Configure the App-V client to receive updates from the publishing server

1. Deploy the App-V management and publishing servers, and add the required packages and connection groups. For more information about adding packages and connection groups, see [How to add or upgrade packages by using the Management Console](appv-add-or-upgrade-packages-with-the-management-console.md) and [How to create a connection group](appv-create-a-connection-group.md).
2. To open the management console click the following link, open a browser and type the following: http://MyMgmtSrv/AppvManagement/Console.html in a web browser, and import, publish, and entitle all the packages and connection groups which will be necessary for a particular set of users.
3. On the computer running the App-V client, open an elevated Windows PowerShell command prompt, and run the following command:

    ```PowerShell
    Add-AppvPublishingServer -Name ABC -URL http://MyPubSrv/AppvPublishing
    ```

    This command will configure the specified publishing server. You should see output similar to the following:
    
    ```
    Id                        : 1
    SetByGroupPolicy          : False
    Name                      : ABC
    URL                       : http:// MyPubSrv/AppvPublishing
    GlobalRefreshEnabled      : False
    GlobalRefreshOnLogon      : False
    GlobalRefreshInterval     : 0
    GlobalRefreshIntervalUnit : Day
    UserRefreshEnabled        : True
    UserRefreshOnLogon        : True
    UserRefreshInterval       : 0
    UserRefreshIntervalUnit   : Day
    ```

4.  On the computer running the App-V client, open a Windows PowerShell command prompt, and type the following command:

    ```PowerShell
    Sync-AppvPublishingServer -ServerId 1
    ```

    The command will query the publishing server for the packages and connection groups that need to be added or removed for this particular client based on the entitlements for the packages and connection groups as configured on the management server.

## Have a suggestion for App-V?

Add or vote on suggestions on the [Application Virtualization feedback site](https://appv.uservoice.com/forums/280448-microsoft-application-virtualization).

## Related topics

* [Operations for App-V](appv-operations.md)
