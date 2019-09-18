---
title: Select Package Accelerator Page
description: Select Package Accelerator Page
author: dansimp
ms.assetid: 865c2702-4dfd-41ae-8cfc-3514d5f41f76
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Select Package Accelerator Page


Use the **Select Package Accelerator** page to select the Package Accelerator that will be used to create the new virtual application package. You must copy the Package Accelerator to a folder on the computer running the App-V Sequencer. For more information, see [About App-V Package Accelerators (App-V 4.6 SP1)](about-app-v-package-accelerators--app-v-46-sp1-.md).

Only run Package Accelerators from publishers that you trust. Package Accelerators usually include a digital signature. A digital signature is an electronic security mark that can help indicate the publisher of the software, and whether the package has been tampered with after the transform was originally signed. If you use a transform that has been digitally signed by a publisher and the publisher has verified its identity with a certification authority, you can be more confident that the transform comes from that specific publisher and has not been altered.

The App-V Sequencer notifies you if any of the following conditions are true:

-   The selected transform has not been digitally signed.

-   The selected transform is signed by a publisher that has not verified its identity with a certification authority.

-   The selected transform has been altered after it was digitally signed and released.

If any of these messages are displayed when using a Package Accelerators, visit the Package Accelerators publisher’s website to get a digitally signed version of the transform.

This page contains the following elements:

<a href="" id="browse"></a>**Browse**  
Click **Browse** to specify the Package Accelerator that you will use to create the virtual application package. Save the Package Accelerator you specified locally on the computer that is running the Sequencer.

## Related topics


[Sequencer Wizard - Package Accelerator (AppV 4.6 SP1)](sequencer-wizard---package-accelerator--appv-46-sp1-.md)

 

 





