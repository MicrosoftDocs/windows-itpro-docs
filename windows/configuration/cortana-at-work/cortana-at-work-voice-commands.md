---
title: Set up and test custom voice commands in Cortana for your organization (Windows 10)
description: How to create voice commands that use Cortana to perform voice-enabled actions in your line-of-business (LOB) Universal Windows Platform (UWP) apps.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.date: 10/05/2017
---

# Set up and test custom voice commands in Cortana for your organization
**Applies to:**

-   Windows 10, version 1703
-   Windows 10 Mobile, version 1703

Working with a developer, you can create voice commands that use Cortana to perform voice-enabled actions in your line-of-business (LOB) Universal Windows Platform (UWP) apps. These voice-enabled actions can reduce the time necessary to access your apps and to complete simple actions.

>[!NOTE]
>For more info about how your developer can extend your current apps to work directly with Cortana, see [The Cortana Skills Kit](https://docs.microsoft.com/cortana/getstarted).

## High-level process
Cortana uses a Voice Command Definition (VCD) file, aimed at an installed app, to define the actions that are to happen during certain vocal commands. A VCD file can be very simple to very complex, supporting anything from a single sound to a collection of more flexible, natural language sounds, all with the same intent.

To enable voice commands in Cortana

1. **Extend your LOB app.** Add a custom VCD file to your app package. This file defines what capabilities are available to Cortana from the app, letting you tell Cortana what vocal commands should be understood and handled by your app and how the app should start when the command is vocalized.

    Cortana can perform actions on apps in the foreground (taking focus from Cortana) or in the background (allowing Cortana to keep focus). We recommend that you decide where an action should happen, based on what your voice command is intended to do. For example, if your voice command requires employee input, it’s best for that to happen in the foreground. However, if the app only uses basic commands and doesn’t require interaction, it can happen in the background.

    - **Start Cortana with focus on your app, using specific voice-enabled statements.** [Activate a foreground app with voice commands through Cortana](https://docs.microsoft.com/cortana/voice-commands/launch-a-foreground-app-with-voice-commands-in-cortana).

    - **Start Cortana removing focus from your app, using specific voice-enabled statements.** [Activate a background app in Cortana using voice commands](https://docs.microsoft.com/cortana/voice-commands/launch-a-background-app-with-voice-commands-in-cortana).

2.	**Install the VCD file on employees' devices**. You can use System Center Configuration Manager or Microsoft Intune to deploy and install the VCD file on your employees' devices, the same way you deploy and install any other package in your organization.

## Test scenario: Use voice commands in a Microsoft Store app
While these aren't line-of-business apps, we've worked to make sure to implement a VCD file, allowing you to test how the functionality works with Cortana in your organization.

**To get a Microsoft Store app**
1.	Go to the Microsoft Store, scroll down to the **Collections** area, click **Show All**, and then click **Better with Cortana**.

2.	Click **Uber**, and then click **Install**.

3.	Open Uber, create an account or sign in, and then close the app.

**To set up the app with Cortana**
1.	Click on the **Cortana** search box in the taskbar, and then click the **Notebook** icon.

2.	Click on **Connected Services**, click **Uber**, and then click **Connect**.

    ![Cortana at work, showing where to connect the Uber service to Cortana](../images/cortana-connect-uber.png)

**To use the voice-enabled commands with Cortana**
1.	Click on the **Cortana** icon in the taskbar, and then click the **Microphone** icon (to the right of the **Search** box).

2.	Say _Uber get me a taxi_.

    Cortana changes, letting you provide your trip details for Uber.

## See also
- [Cortana for developers](https://go.microsoft.com/fwlink/?LinkId=717385)
