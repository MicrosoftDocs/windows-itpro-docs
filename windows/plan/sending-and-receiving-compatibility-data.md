---
title: Sending and Receiving Compatibility Data (Windows 10)
description: The Microsoft® Compatibility Exchange is a web service that propagates application compatibility issues between various data sources, for example Microsoft Corporation, independent software vendors (ISVs) and the ACT Community.
ms.assetid: b86d2431-1caa-4f95-baf9-52ff6af546cd
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# Sending and Receiving Compatibility Data


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The Microsoft® Compatibility Exchange is a web service that propagates application compatibility issues between various data sources, for example Microsoft Corporation, independent software vendors (ISVs) and the ACT Community. This process involves checking for updated compatibility information from Microsoft over the Internet. You can send and receive data to keep Application Compatibility Manager (ACM) updated with the latest compatibility information.

The synchronization process includes only the changes made since the last synchronization. During the synchronization process, a dialog box displaying the synchronization status appears. You can continue to work during this process. If no new issues have occurred since your last synchronization, the Microsoft Compatibility Exchange uploads your issue information and notifies you that no updates exist.

The synchronization process uses the Microsoft Compatibility Exchange to:

-   Download new information from Microsoft and ISVs, except for the applications for which you choose not to send application data to Microsoft.

-   Upload your compatibility issues to Microsoft.

-   Upload and download compatibility information from the ACT Community, if you are a member of the ACT Community and agree to share your data. For information about configuring your membership in the ACT Community, see [Settings Dialog Box - Preferences Tab](act-settings-dialog-box-preferences-tab.md).

For information about which data is sent and received through the Microsoft Compatibility exchange, see [Data Sent Through the Microsoft Compatibility Exchange](data-sent-through-the-microsoft-compatibility-exchange.md).

## Reviewing and Synchronizing Your Data


Prior to sending your application data to Microsoft, you can review your application list and view the exact data being sent as a text (.txt) file. After you are done reviewing the information, you can synchronize your data with Microsoft.

**To review and synchronize your data**

1.  On the **Analyze** screen, click **Send and Receive**.

2.  Click **Review the data before sending**.

    The **Send and Receive Data** dialog box shows all of the application data that is to be sent to Microsoft during the synchronization process. To avoid sending application data for specific applications, see [Selecting the Send and Receive Status for an Application](selecting-the-send-and-receive-status-for-an-application.md).

3.  Optionally, click **Review all data**, save the resulting .txt file locally, and then review the exact XML data that will be sent to Microsoft.

4.  After you finish reviewing the application list and XML data, click **Send**.

## Related topics


[Data Sent Through the Microsoft Compatibility Exchange](data-sent-through-the-microsoft-compatibility-exchange.md)

[ACT Community Ratings and Process](act-community-ratings-and-process.md)

 

 





