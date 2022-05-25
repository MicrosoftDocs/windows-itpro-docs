---
title: Use Quick Assist to help users
description: How IT Pros can use Quick Assist to help users.
ms.prod: w10
ms.topic: article
author: aczechowski
ms.technology: windows
ms.localizationpriority: medium
author: aczechowski
ms.author: aaroncz
manager: dougeby
ms.reviewer: pmadrigal
ms.collection: highpri
---

# Use Quick Assist to help users

Quick Assist is a Windows application that enables a person to share their device with another person over a remote connection. Your support staff can use it to remotely connect to a user's device and then view its display, make annotations, or take full control. In this way, they can troubleshoot, diagnose technological issues, and provide instructions to users directly on their devices.

## Before you begin

All that's required to use Quick Assist is suitable network and internet connectivity. No particular roles, permissions, or policies are involved. Neither party needs to be in a domain. The helper must have a Microsoft account. The sharer doesn't have to authenticate.

> [!NOTE]
> In case the helper and sharer use different keyboard layouts or mouse settings, the ones from the sharer are used during the session.

### Authentication

The helper can authenticate when they sign in by using a Microsoft Account (MSA) or Azure Active Directory (Azure AD). Local Active Directory authentication isn't currently supported.

### Network considerations

Quick Assist communicates over port 443 (https) and connects to the Remote Assistance Service at `https://remoteassistance.support.services.microsoft.com` by using the Remote Desktop Protocol (RDP). The traffic is encrypted with TLS 1.2.

Both the helper and sharer must be able to reach these endpoints over port 443:

| Domain/Name | Description |
|--|--|
| `*.support.services.microsoft.com` | Primary endpoint used for Quick Assist application |
| `*.login.microsoftonline.com` | Required for logging in to the application (MSA) |
| `*.channelwebsdks.azureedge.net` | Used for chat services within Quick Assist |
| `*.aria.microsoft.com` | Used for accessibility features within the app |
| `*.api.support.microsoft.com` | API access for Quick Assist |
| `*.vortex.data.microsoft.com` | Used for diagnostic data |
| `*.channelservices.microsoft.com` | Required for chat services within Quick Assist |
| `*.skype.com` | Skype requests may vary based on geography. If connection issues persist, test this endpoint. |
| `*.remoteassistanceprodacs.communication.azure.com` | Azure Communication Services (ACS) technology the Quick Assist app uses. |
| `*.turn.azure.com` | Protocol used to help endpoint. |
| `browser.pipe.aria.microsoft.com` | Required diagnostic data for client and services used by Quick Assist. |
| `browser.events.data.microsoft.com` | Required diagnostic data for client and services used by Quick Assist. |
| `ic3.events.data.microsoft.com` | Required diagnostic data for client and services used by Quick Assist. |

## How it works

1. Both the helper and the sharer start Quick Assist.

2. The helper selects **Assist another person**. Quick Assist on the helper's side contacts the Remote Assistance Service to obtain a session code. An RCC chat session is established and the helper's Quick Assist instance joins it. The helper then provides the code to the sharer.

3. After the sharer enters the code in their Quick Assist app, Quick Assist uses that code to contact the Remote Assistance Service and join that specific session. The sharer's Quick Assist instance joins the RCC chat session.

4. The helper is prompted to select **View Only** or **Full Control**.

5. The sharer is prompted to confirm allowing the helper to share their desktop with the helper.

6. Quick Assist starts RDP control and connects to the RDP Relay service.

7. RDP shares the video to the helper over https (port 443) through the RDP relay service to the helper's RDP control. Input is shared from the helper to the sharer through the RDP relay service.

:::image type="content" source="images/quick-assist-flow.png" lightbox="images/quick-assist-flow.png" alt-text="Schematic flow of connections when a Quick Assist session is established.":::

### Data and privacy

Microsoft logs a small amount of session data to monitor the health of the Quick Assist system. This data includes the following information:

- Start and end time of the session

- Errors arising from Quick Assist itself, such as unexpected disconnections

- Features used inside the app such as view only, annotation, and session pause

No logs are created on either the helper's or sharer's device. Microsoft can't access a session or view any actions or keystrokes that occur in the session.

The sharer sees only an abbreviated version of the helper's name (first name, last initial) and no other information about them. Microsoft doesn't store any data about either the sharer or the helper for longer than three days.

In some scenarios, the helper does require the sharer to respond to application permission prompts (User Account Control), but otherwise the helper has the same permissions as the sharer on the device.

## Working with Quick Assist

Either the support staff or a user can start a Quick Assist session.

1. Support staff ("helper") starts Quick Assist in any of a few ways:

    - Type *Quick Assist* in the search box and press ENTER.
    - From the Start menu, select **Windows Accessories**, and then select **Quick Assist**.
    - Type CTRL+Windows+Q

2. In the **Give assistance** section, helper selects **Assist another person**. The helper might be asked to choose their account or sign in. Quick Assist generates a time-limited security code.

3. Helper shares the security code with the user over the phone or with a messaging system.

4. Quick Assist opens on the sharer's device. The user enters the provided code in the **Code from assistant** box, and then selects **Share screen**.

5. The helper receives a dialog offering the opportunity to take full control of the device or just view its screen. After they choose an option, the helper selects **Continue**.

6. The sharer receives a dialog asking for permission to show their screen or allow access. The sharer gives permission by selecting the **Allow** button.

## If Quick Assist is missing

If for some reason a user doesn't have Quick Assist on their system or it's not working properly, try to uninstall and reinstall it.

### Uninstall Quick Assist

1. Start the Settings app, and then select **Apps**.
2. Select **Optional features**.
3. In the **Installed features** search bar, type *Quick Assist*.
4. Select **Microsoft Quick Assist**, and then select **Uninstall**.

### Reinstall Quick Assist

1. Start the Settings app, and then select **Apps**.
2. Select **Optional features**.
3. Select **Add a feature**.
4. In the new dialog that opens, in the **Add an optional feature** search bar, type *Quick Assist*.
5. Select the check box for **Microsoft Quick Assist**, and then select **Install**.
6. Restart the device.

## Next steps

If you have any problems, questions, or suggestions for Quick Assist, contact us by using the [Feedback Hub app](https://support.microsoft.com/windows/send-feedback-to-microsoft-with-the-feedback-hub-app-f59187f8-8739-22d6-ba93-f66612949332).
