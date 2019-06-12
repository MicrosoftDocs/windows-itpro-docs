---
title: How to Configure the Client to Receive Package and Connection Groups Updates From the Publishing Server
description: How to Configure the Client to Receive Package and Connection Groups Updates From the Publishing Server
author: dansimp
ms.assetid: f5dfd96d-4b63-468c-8d93-9dfdf47c28fd
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Configure the Client to Receive Package and Connection Groups Updates From the Publishing Server


Deploying packages and connection groups using the App-V 5.0 publishing server is helpful because it offers single-point management and high scalability.

Use the following steps to configure the App-V 5.0 client to receive updates from the publishing server.

**Note**  
For the following procedures the management server was installed on a computer named **MyMgmtSrv**, and the publishing server was installed on a computer named **MyPubSrv**.

 

**To configure the App-V 5.0 client to receive updates from the publishing server**

1.  Deploy the App-V 5.0 management and publishing servers, and add the required packages and connection groups. For more information about adding packages and connection groups, see [How to Add or Upgrade Packages by Using the Management Console](how-to-add-or-upgrade-packages-by-using-the-management-console-beta-gb18030.md) and [How to Create a Connection Group](how-to-create-a-connection-group.md).

2.  To open the management console click the following link, open a browser and type the following: http://MyMgmtSrv/AppvManagement/Console.html in a web browser, and import, publish, and entitle all the packages and connection groups which will be necessary for a particular set of users.

3.  On the computer running the App-V 5.0 client, open an elevated PowerShell command prompt, run the following command:

    **Add-AppvPublishingServer  -Name  ABC  -URL  http:// MyPubSrv/AppvPublishing**

    This command will configure the specified publishing server. You should see output similar to the following:

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

    The returned Id – in this case 1

4.  On the computer running the App-V 5.0 client, open a PowerShell command prompt, and type the following command:

    **Sync-AppvPublishingServer  -ServerId  1**

    The command will query the publishing server for the packages and connection groups that need to be added or removed for this particular client based on the entitlements for the packages and connection groups as configured on the management server.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)

 

 





