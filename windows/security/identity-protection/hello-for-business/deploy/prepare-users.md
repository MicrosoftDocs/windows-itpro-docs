---
title: Prepare users to provision and use Windows Hello for Business
description: Learn about the role of each component within Windows Hello for Business and how certain deployment decisions affect other aspects of your infrastructure.
ms.date: 01/02/2024
ms.topic: overview
---

# Prepare users to provision and use Windows Hello for Business

Since provisioning of Windows Hello requires multi-factor authentication, ensure you have a solution in place for users to use MFA during the process. Depending on the hardware, users might be prompted to register their fingerprint or face.

> [!TIP]
> To facilitate user communication and to ensure a successful Windows Hello for Business deployment, you can find customizable material (email templates, posters, trainings, etc.) at [Microsoft Entra templates](https://aka.ms/adminmails).

The next video shows the Windows Hello for Business enrollment experience after a user signs in with a password:

1. Since the device supports biometric authentication, the user is prompted to set up a biometric gesture. This gesture can be used to unlock the device and authenticate to resources that require Windows Hello for Business. The user can skip this step if they don't want to set up a biometric gesture
1. The user is prompted to use Windows Hello with the organization account. The user selects **OK**
1. The provisioning flow proceeds to the multi-factor authentication portion of the enrollment. Provisioning informs the user that it's actively attempting to contact the user through their configured form of MFA. The provisioning process doesn't proceed until authentication succeeds, fails or times out. A failed or timeout MFA results in an error and asks the user to retry
1. After a successful MFA, the provisioning flow asks the user to create and validate a PIN. This PIN must observe any PIN complexity policies configured on the device

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=36dc8679-0fcc-4abf-868d-97ec8b749da7 alt-text="Video showing the Windows Hello for Business enrollment steps after signing in with a password."]

After enrollment in Windows Hello, users should use their gesture (such as a PIN or fingerprint) for access to their devices and corporate resources. The unlock gesture is valid only on the enrolled device.

> [!IMPORTANT]
> Although the organization might require users to change their Active Directory or Microsoft Entra account password at regular intervals, changes to their passwords have no effect on Hello.

The next video shows the Windows Hello for Business enrollment experience as part of the out-of-box-experience (OOBE) process:

1. The user joins the device to Microsoft Entra ID and is prompted for MFA during the join process
1. The device is Managed by Microsoft Intune and applies Windows Hello for Business policy settings
1. After the user profile is loaded, but before the access to the desktop is granted, the user must enroll in Windows Hello

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=44c16430-756f-490a-9fc1-80e2724fef8d alt-text="Video showing the Windows Hello for Business enrollment steps after the out-of-box-experience process."]