---
title: Sign-in to Azure AD and manage notebook with Cortana (Windows 10)
description: A test scenario walking you through signing in and managing the notebook.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.date: 10/05/2017
ms.reviewer:
manager: dansimp
---

# Test scenario 1 – Sign into Azure AD, enable the wake word, and try a voice query

>[!NOTE]
>The wake word has been temporarily disabled in the latest version of Cortana in Windows but will be restored soon.

1. Select the **Cortana** icon in the task bar and sign in using your Azure AD account.

2. Select the &quot;…&quot; menu and select **Talking to Cortana**.

3. Toggle **Wake word** to **On** and close Cortana.

4. Say **Cortana, what can you do?**.

When you say **Cortana**, Cortana will open in listening mode to acknowledge the wake word.

:::image type="content" source="../screenshot4.png" alt-text="Screenshot: Cortana listening mode":::

Once you finish saying your query, Cortana will open with the result.

>[!NOTE]
>If you've disabled the wake word using MDM or Group Policy, you will need to manually activate the microphone by selecting Cortana, then the mic button.
