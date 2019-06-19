---
title: "Manage device account password rotation"
description: "Learn how to configure Surface Hub 2S on-premises accounts with PowerShell"
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: robmazz
ms.author: robmazz
audience: Admin
ms.topic: article
ms.localizationpriority: Normal
---
# Manage device account password rotation

You can configure Surface Hub 2S to automatically change a device account password without requiring you to manually update the device account information.

If you turn on Password Rotation, Surface Hub 2S changes the password every 7 days. The automatically generated passwords contain 15-32 characters including  a combination of uppercase and lowercase letters, numbers, and special characters.

Passwords do not change during a meeting. If Surface Hub 2S is turned off, it attempts to change the password immediately when turned on or every 10 minutes until successful.
