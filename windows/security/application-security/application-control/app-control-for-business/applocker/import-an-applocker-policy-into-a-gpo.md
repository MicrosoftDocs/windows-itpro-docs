---
title: Import an AppLocker policy into a GPO
description: This article for IT professionals describes the steps to import an AppLocker policy into a Group Policy Object (GPO).
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Import an AppLocker policy into a GPO

This article for IT professionals describes the steps to import an AppLocker policy into a Group Policy Object (GPO).

You can create AppLocker policies as local security policies or as part of a GPO and managed by using Group Policy. You can create AppLocker policies on any supported computer. For info about which Windows editions are supported, see [Requirements to Use AppLocker](requirements-to-use-applocker.md).

> [!IMPORTANT]
> Follow your organization's standard procedures for updating GPOs. For info about specific steps to follow for AppLocker policies, see [Maintain AppLocker policies](maintain-applocker-policies.md).

To complete this procedure, you must have the **Edit Setting** permission to edit a GPO. By default, members of the **Domain Admins** group, the **Enterprise Admins** group, and the **Group Policy Creator Owners** group have this permission.

## To import an AppLocker policy into a GPO

1. In the Group Policy Management Console (GPMC), open the GPO that you want to edit.
2. In the console tree under **Computer Configuration\\Policies\\Windows Settings\\Security Settings\\Application Control Policies**, select **AppLocker**.
3. Right-click **AppLocker**, and then select **Import Policy**.
4. In the **Import Policy** dialog box, locate the XML policy file, and select **Open**.
5. The **AppLocker** dialog box notifies you of how many rules were imported. Select **OK**.
