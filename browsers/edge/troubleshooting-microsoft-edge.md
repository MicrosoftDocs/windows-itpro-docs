---
title: Troubleshoot Microsoft Edge
description: 
ms.assetid: 
ms.reviewer: 
audience: itpromanager: dansimp
author: eavena
ms.author: eravena
ms.prod: edge
ms.sitesec: library
title: Deploy Microsoft Edge kiosk mode
ms.localizationpriority: medium
ms.date: 10/15/2018 
---

# Troubleshoot Microsoft Edge


## Microsoft Edge and IPv6
We are aware of the known issue with Microsoft Edge and all UWP-based apps, such as Store, Mail, Feedback Hub, and so on. It only happens if you have disabled IPv6 (not recommended), so a temporary workaround is to enable it. 

## Microsoft Edge hijacks .PDF and .HTM files



## Citrix Receiver in Microsoft Edge kiosk mode
If you want to deliver applications to users via Citrix through Microsoft Edge, you must create the kiosk user account and then log into the account to install Citrix Receiver BEFORE setting up assigned access. 

1. Create the kiosk user account.
2. Log into the account.
3. Install Citrix Receiver.
4. Set up assigned access. 

 
## Missing SettingSync.admx and SettingSync.adml files

Make sure to [download](https://www.microsoft.com/en-us/download/windows.aspx) the latest templates to C:\windows\policydefinitions\. 
