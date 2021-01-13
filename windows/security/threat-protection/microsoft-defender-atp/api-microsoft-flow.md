---
title: Microsoft Defender ATP Flow connector
ms.reviewer: 
description: Use Microsoft Defender ATP Flow connector to automate security and create a flow that will be triggered any time a new alert occurs on your tenant.
keywords: flow, supported apis, api, Microsoft flow, query, automation
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Microsoft Power Automate (formerly Microsoft Flow), and Azure Functions

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

Automating security procedures is a standard requirement for every modern Security Operations Center. The lack of professional cyber defenders forces SOC to work in the most efficient way and automation is a must. Microsoft Power Automate supports different connectors that were built exactly for that. You can build an end-to-end procedure automation within a few minutes.

Microsoft Defender API has an official Flow Connector with many capabilities.

![Image of edit credentials](images/api-flow-0.png)

## Usage example

The following example demonstrates how to create a Flow that is triggered any time a new Alert occurs on your tenant.

1. Log in to [Microsoft Power Automate](https://flow.microsoft.com).

2. Go to **My flows** > **New** > **Automated-from blank**.

    ![Image of edit credentials](images/api-flow-1.png)

3. Choose a name for your Flow, search for "Microsoft Defender ATP Triggers" as the trigger, and then select the new Alerts trigger.

    ![Image of edit credentials](images/api-flow-2.png)

Now you have a Flow that is triggered every time a new Alert occurs.

![Image of edit credentials](images/api-flow-3.png)

All you need to do now is choose your next steps.
For example, you can isolate the device if the Severity of the Alert is High and send an email about it.
The Alert trigger provides only the Alert ID and the Machine ID. You can use the connector to expand these entities.

### Get the Alert entity using the connector

1. Choose **Microsoft Defender ATP** for the new step.

2. Choose **Alerts - Get single alert API**.

3. Set the **Alert ID** from the last step as **Input**.

    ![Image of edit credentials](images/api-flow-4.png)

### Isolate the device if the Alert's severity is High

1. Add **Condition** as a new step.

2. Check if the Alert severity **is equal to** High.

   If yes, add the **Microsoft Defender ATP - Isolate machine** action with the Machine ID and a comment.

    ![Image of edit credentials](images/api-flow-5.png)

3. Add a new step for emailing about the Alert and the Isolation. There are multiple email connectors that are very easy to use, such as Outlook or Gmail.

4. Save your flow.

You can also create a **scheduled** flow that runs Advanced Hunting queries and much more!

## Related topic
- [Microsoft Defender for Endpoint APIs](apis-intro.md)
