---
title: Create AppHelp Message in Compatibility Administrator (Windows 10)
description: Create an AppHelp text message with Compatibility Administrator; a message that appears upon starting an app with major issues on the Windows® operating system.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 10/28/2022
ms.topic: article
ms.technology: itpro-deploy
---

# Creating an AppHelp Message in Compatibility Administrator

**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The Compatibility Administrator tool enables you to create an AppHelp text message. This is a blocking or non-blocking message that appears when a user starts an application that you know has major functionality issues on the Windows® operating system.

## Blocking Versus Non-Blocking AppHelp Messages

A blocking AppHelp message prevents the application from starting and displays a message to the user. You can define a specific URL where the user can download an updated driver or other fix to resolve the issue. When using a blocking AppHelp message, you must also define the file-matching information to identify the version of the application and enable the corrected version to continue.

A non-blocking AppHelp message doesn't prevent the application from starting, but provides a message to the user that includes information such as security issues, updates to the application, or changes to the location of network resources.

## Searching for Existing Compatibility Fixes

The Compatibility Administrator tool has preloaded fixes for many common applications, including known compatibility fixes, compatibility modes, and AppHelp messages. Before you create a new AppHelp message, you can search for an existing application and then copy and paste the known fixes into your custom database.

> [!IMPORTANT]
> Application Compatibility Toolkit (ACT) installs a 32-bit and a 64-bit version of the Compatibility Administrator tool. You must use the 32-bit version to create custom databases for 32-bit applications and the 64-bit version to create custom databases for 64-bit applications.

**To search for an existing application**

1.  In the left-side pane of Compatibility Administrator, expand the **Applications** folder and search for your application name.

2.  Click the application name to view the preloaded AppHelp messages, compatibility fixes, and compatibility modes.

## Creating a New AppHelp Message

If you're unable to find a preloaded AppHelp message for your application, you can create a new one for use by your custom database.

**To create a new AppHelp message**

1.  In the left-side pane of Compatibility Administrator, below the **Custom Databases** heading, right-click the name of the database to which you'll apply the AppHelp message, click **Create New**, and then click **AppHelp Message**.

2.  Type the name of the application to which this AppHelp message applies, type the name of the application vendor, browse to the location of the application file (.exe) on your computer, and then click **Next**.

    The wizard shows the known **Matching Information**, which is used for program identification.

3.  Select any other criteria to use to match your applications to the AppHelp message, and then click **Next**.

    By default, Compatibility Administrator selects the basic matching criteria for your application.

    The wizard shows the **Enter Message Type** options.

4.  Click one of the following options:

    -   **Display a message and allow this program to run**. This message is non-blocking, which means that you can alert the user that there might be a problem, but the application isn't prevented from starting.

    -   **Display a message and do not allow this program to run**. This message is blocking, which means that the application won't start. Instead, this message points the user to a location that provides more information about fixing the issue.

5.  Click **Next**.

    The wizard then shows the **Enter Message Information** fields.

6.  Type the website URL and the message text to appear when the user starts the application, and then click **Finish**.

## Issues with AppHelp Messages and Computers Running Windows 2000

The following issues might occur with computers running Windows 2000:

-   You might be unable to create a custom AppHelp message.

-   The AppHelp message text used for system database entries might not appear.

-   Copying an AppHelp entry for a system database or a custom-compatibility fix from a system database might cause Compatibility Administrator to hide the descriptive text.

## Related topics
[Compatibility Administrator User's Guide](compatibility-administrator-users-guide.md)
