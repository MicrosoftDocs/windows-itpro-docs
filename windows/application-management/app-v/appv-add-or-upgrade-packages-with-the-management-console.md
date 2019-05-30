---
title: How to Add or Upgrade Packages by Using the Management Console (Windows 10)
description: How to add or upgrade packages by using the Management Console
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/08/2018
ms.topic: article
---
# How to add or upgrade packages by using the Management Console

>Applies to: Windows 10, version 1607

You can use the following procedure to add or upgrade a package to the App-V Management Console. To upgrade a package that already exists in the Management Console, use the following steps and import the upgraded package using the same package **Name**.

## Add a package to the Management Console

1. Select the **Packages** tab in the navigation pane of the Management Console display.

    The console displays the list of packages that have been added to the server along with status information about each package. When a package is selected, detailed information about the package is displayed in the **PACKAGES** pane.

    Select the **Ungrouped** drop-down list box and specify how the packages are to be displayed in the console. You can also click the associated column header to sort the packages.

2. Select **Add or Upgrade Packages** to specify which package you want to add.

3. Enter the full path to the package that you want to add. Use the UNC or HTTP path format, for example **\\\\servername\\sharename\\foldername\\packagename.appv** or **http<span></span>://server.1234/file.appv**, and then select **Add**.

    >[!IMPORTANT]
    >You must select a package with the **.appv** file name extension.

4. The page displays the status message **Adding &lt;Packagename&gt;**. Select **IMPORT STATUS** to check the status of a package that you have imported.

    Select **OK** to add the package and close the **Add Package** page. If there was an error during the import, select **Detail** on the **Package Import** page for more information. The newly added package is now available in the **PACKAGES** pane.

5. Select **Close** to close the **Add or Upgrade Packages** page.





## Related topics

* [Operations for App-V](appv-operations.md)
