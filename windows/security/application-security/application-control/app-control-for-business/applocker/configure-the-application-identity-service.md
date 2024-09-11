---
title: Configure the Application Identity service
description: This article for IT professionals shows how to configure the Application Identity service to start automatically or manually.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Configure the Application Identity service

This article for IT professionals shows how to configure the Application Identity service to start automatically or manually.

The Application Identity service determines and verifies the identity of an app. Stopping this service prevents AppLocker policies from being enforced.

> [!IMPORTANT]
> When using Group Policy, you must configure the Application Identity service to start automatically in at least one Group Policy Object (GPO) that applies AppLocker rules. This is because AppLocker uses this service to verify the attributes of a file.

## To start the Application Identity service automatically using Group Policy

1. On the **Start** screen, type **gpmc.msc** to open the Group Policy Management Console (GPMC).
2. Locate the GPO to edit, right-click the GPO, and then select **Edit**.
3. In the console tree under **Computer Configuration\\Windows Settings\\Security Settings**, select **System Services**.
4. In the details pane, double-click **Application Identity**.
5. In **Application Identity Properties**, configure the service to start automatically.

Membership in the local **Administrators** group, or equivalent, is the minimum access required to complete this procedure.

## To start the Application Identity service manually

1. Right-click the taskbar, and select **Task Manager**.
2. Select the **Services** tab, right-click **AppIDSvc**, and then select **Start Service**.
3. Verify that the status for the Application Identity service is **Running**.

Starting with Windows 10, the Application Identity service is now a protected process. As a result, you can no longer manually set the service **Startup type** to **Automatic** by using the Services snap-in. Try either of these methods instead:

- Open an elevated command prompt or PowerShell session and type:

   ```powershell
   sc.exe config appidsvc start=auto
   ```

- Create a security template that configures appidsvc to be automatic start, and apply it using secedit.exe or LGPO.exe.

> [!NOTE]
> The Startup type of the Application Identity service cannot be set to Manual using sc.exe. Therefore, we recommend to perform a system backup before changing it.
