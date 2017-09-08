---
title: Multivariant (Windows 10)
description: This section describes the Multivariant settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.date: 08/21/2017
---

# Multivariant (Windows Configuration Designer reference)

Use to select a default profile for mobile devices that have multivariant configurations. 

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| DefaultProfile |   | X |  |  |  |

If you will be adding [multivariant settings](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-multivariant) to your provisioning package,  you can use the **DefaultProfile** setting to specify which variant should be applied by default if OOBE is skipped. In the **DefaultProfile** field, enter the UINAME from your customizations.xml that you want to use as default.