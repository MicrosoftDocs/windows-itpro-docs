---
title: Enrollment in Intune with standard out-of-box experience (OOBE)
description: Learn how to join devices to Microsoft Entra ID from OOBE and automatically get them enrolled in Intune.
ms.date: 11/09/2023
ms.topic: tutorial
---

# Automatic Intune enrollment via Microsoft Entra join

If you're setting up a Windows device individually, you can use the out-of-box experience to join it to your school's Microsoft Entra tenant, and automatically enroll it in Intune.
With this process, no advance preparation is needed:

1. Follow the on-screen prompts for region selection, keyboard selection, and network connection
1. Wait for updates. If any updates are available, they'll be installed at this time
  :::image type="content" source="./images/win11-oobe-updates.png" alt-text="Windows 11 OOBE - updates page" border="true":::
1. When prompted, select **Set up for work or school** and authenticate using your school's Microsoft Entra account
  :::image type="content" source="./images/win11-oobe-auth.png" alt-text="Windows 11 OOBE - authentication page" border="true":::
1. The device will join Microsoft Entra ID and automatically enroll in Intune. All settings defined in Intune will be applied to the device

> [!IMPORTANT]
> If you configured enrollment restrictions in Intune blocking personal Windows devices, this process will not complete. You will need to use a different enrollment method, or ensure that the devices are registered in Autopilot.

:::image type="content" source="./images/win11-login-screen.png" alt-text="Windows 11 login screen" border="false":::

---

## Next steps

With the devices joined to Microsoft Entra tenant and managed by Intune, you can use Intune to maintain them and report on their status.

> [!div class="nextstepaction"]
> [Next: Manage devices >](manage-overview.md)
