---
title: Enable the DLL rule collection
description: This article for IT professionals describes the steps to enable the DLL rule collection feature for AppLocker.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Enable the DLL rule collection

This article for IT professionals describes the steps to enable the DLL rule collection feature for AppLocker.

The DLL rule collection includes the .dll and .ocx file formats.

For info about these rules, see [DLL rules in AppLocker](dll-rules-in-applocker.md).

To manage an AppLocker policy in a Group Policy Object (GPO), you can perform this task by using the Group Policy Management Console. To manage an AppLocker policy for the local computer or for use in a security template, use the Local Security Policy snap-in. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#using-the-mmc-snap-ins-to-administer-applocker).

## To enable the DLL rule collection

1. From the AppLocker console, right-click **AppLocker**, and then select **Properties.**
2. Select the **Advanced** tab, select the **Enable the DLL rule collection** check box, and then select **OK**.

    > [!IMPORTANT]
    > Before you enforce DLL rules, make sure that there are allow rules for each DLL that is used by any of the allowed apps.
