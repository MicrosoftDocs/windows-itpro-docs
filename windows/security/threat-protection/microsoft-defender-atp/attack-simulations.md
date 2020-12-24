---
title: Experience Microsoft Defender ATP through simulated attacks
description: Run the provided attack scenario simulations to experience how Microsoft Defender ATP can detect, investigate, and respond to breaches.
keywords: wdatp, test, scenario, attack, simulation, simulated, diy, microsoft defender advanced threat protection
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 11/20/2018
---

# Experience Microsoft Defender for Endpoint through simulated attacks 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-attacksimulations-abovefoldlink)

>[!TIP]
>- Learn about the latest enhancements in Microsoft Defender ATP: [What's new in Defender for Endpoint?](https://cloudblogs.microsoft.com/microsoftsecure/2018/11/15/whats-new-in-windows-defender-atp/).
>- Defender for Endpoint demonstrated industry-leading optics and detection capabilities in the recent MITRE evaluation. Read: [Insights from the MITRE ATT&CK-based evaluation](https://cloudblogs.microsoft.com/microsoftsecure/2018/12/03/insights-from-the-mitre-attack-based-evaluation-of-windows-defender-atp/).

You might want to experience Defender for Endpoint before you onboard more than a few devices to the service. To do this, you can run controlled attack simulations on a few test devices. After running the simulated attacks, you can review how Defender for Endpoint surfaces malicious activity and explore how it enables an efficient response.

## Before you begin

To run any of the provided simulations, you need at least [one onboarded device](onboard-configure.md). 

Read the walkthrough document provided with each attack scenario. Each document includes OS and application requirements as well as detailed instructions that are specific to an attack scenario.

## Run a simulation

1. In **Help** > **Simulations & tutorials**, select which of the available attack scenarios you would like to simulate:

   - **Scenario 1: Document drops backdoor** - simulates delivery of a socially engineered lure document. The document launches a specially crafted backdoor that gives attackers control.

   - **Scenario 2: PowerShell script in fileless attack** - simulates a fileless attack that relies on PowerShell, showcasing attack surface reduction and device learning detection of malicious memory activity.
    
   - **Scenario 3: Automated incident response** - triggers automated investigation, which automatically hunts for and remediates breach artifacts to scale your incident response capacity.

2. Download and read the corresponding walkthrough document provided with your selected scenario.

3. Download the simulation file or copy the simulation script by navigating to **Help** > **Simulations & tutorials**. You can choose to download the file or script on the test device but it's not mandatory.

4. Run the simulation file or script on the test device as instructed in the walkthrough document.

> [!NOTE]
> Simulation files or scripts mimic attack activity but are actually benign and will not harm or compromise the test device.
> 
> 
> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-attacksimulations-belowfoldlink)


## Related topics

- [Onboard devices](onboard-configure.md)
- [Onboard Windows 10 devices](configure-endpoints.md)
