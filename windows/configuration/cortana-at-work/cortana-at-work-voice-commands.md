---
title: Set up and test custom voice commands in Cortana for your organization (Windows)
description: How to create voice commands that use Cortana to perform voice-enabled actions in your line-of-business (LOB) Universal Windows Platform (UWP) apps.
ms.prod: windows-client
author: aczechowski
ms.localizationpriority: medium
ms.author: aaroncz
ms.date: 10/05/2017
ms.reviewer: 
manager: dougeby
ms.technology: itpro-configure
---

# Set up and test custom voice commands in Cortana for your organization

>[!NOTE]
>This content applies to Cortana in versions 1909 and earlier, but will not be available in future releases.

Working with a developer, you can create voice commands that use Cortana to perform voice-enabled actions in your line-of-business (LOB) Universal Windows Platform (UWP) apps. These voice-enabled actions can reduce the time necessary to access your apps and to complete simple actions.

## High-level process
Cortana uses a Voice Command Definition (VCD) file, aimed at an installed app, to define the actions that are to happen during certain vocal commands. A VCD file can be simple to complex, supporting anything from a single sound to a collection of more flexible, natural language sounds, all with the same intent.

To enable voice commands in Cortana

1. **Extend your LOB app.** Add a custom VCD file to your app package. This file defines what capabilities are available to Cortana from the app, letting you tell Cortana what vocal commands should be understood and handled by your app and how the app should start when the command is vocalized.

    Cortana can perform actions on apps in the foreground (taking focus from Cortana) or in the background (allowing Cortana to keep focus). We recommend that you decide where an action should happen, based on what your voice command is intended to do. For example, if your voice command requires employee input, it’s best for that to happen in the foreground. However, if the app only uses basic commands and doesn’t require interaction, it can happen in the background.

    - **Start Cortana with focus on your app, using specific voice-enabled statements.** [Activate a foreground app with voice commands through Cortana](/cortana/voice-commands/launch-a-foreground-app-with-voice-commands-in-cortana).

    - **Start Cortana removing focus from your app, using specific voice-enabled statements.** [Activate a background app in Cortana using voice commands](/cortana/voice-commands/launch-a-background-app-with-voice-commands-in-cortana).

2.	**Install the VCD file on employees' devices**. You can use Configuration Manager or Microsoft Intune to deploy and install the VCD file on your employees' devices, the same way you deploy and install any other package in your organization.

## Test scenario: Use voice commands in a Microsoft Store app
While these apps aren't line-of-business apps, we've worked to make sure to implement a VCD file, allowing you to test how the functionality works with Cortana in your organization.

**To get a Microsoft Store app**
1. Go to the Microsoft Store, scroll down to the **Collections** area, select **Show All**, and then select **Better with Cortana**.

2. Select **Uber**, and then select **Install**.

3. Open Uber, create an account or sign in, and then close the app.

**To set up the app with Cortana**
1. Select on the **Cortana** search box in the taskbar, and then select the **Notebook** icon.

2. Select on **Connected Services**, select **Uber**, and then select **Connect**.

    ![Cortana at work, showing where to connect the Uber service to Cortana.](../images/cortana-connect-uber.png)

**To use the voice-enabled commands with Cortana**
1. Select on the **Cortana** icon in the taskbar, and then select the **Microphone** icon (to the right of the **Search** box).

2. Say _Uber get me a taxi_.

    Cortana changes, letting you provide your trip details for Uber.

## See also
- [Cortana for developers](/cortana/skills/)
