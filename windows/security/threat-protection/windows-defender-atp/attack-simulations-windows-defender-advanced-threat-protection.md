---
title: Experience Windows Defender ATP through simulated attacks
description: Run the provided attack scenario simulations to experience how Windows Defender ATP can detect, investigate, and respond to breaches.
keywords: wdatp, test, scenario, attack, simulation, simulated, diy, windows defender advanced threat protection
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: high
ms.date: 28/02/2018
---

# Experience Windows Defender ATP through simulated attacks 

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

You might want to experience Windows Defender ATP before you onboard more than a few machines to the service. To do this, you can run controlled attack simulations on a few test machines. After running the simulated attacks, you can review how Windows Defender ATP surfaces malicious activity and explore how it enables an efficient response.

## Before you begin

To run any of the provided simulations, you need at least [one onboarded machine](onboard-configure-windows-defender-advanced-threat-protection.md). 

Read the walkthrough document provided with each attack scenario. Each document includes OS and application requirements as well as detailed instructions that are specific to an attack scenario.

## Run a simulation

1. In **Help** > **Simulations & tutorials**, select which of the available attack scenarios you would like to simulate:

  - **Scenario 1: Document drops backdoor** - simulates delivery of a socially engineered lure document. The document launches a specially crafted backdoor that gives attackers control.

  - **Scenario 2: PowerShell script in fileless attack** - simulates a fileless attack that relies on PowerShell, showcasing attack surface reduction and machine learning detection of malicious memory activity.
    
  - **Scenario 3: Automated incident response** - triggers Automated investigation, which automatically hunts for and remediates breach artifacts to scale your incident response capacity.

2. Download and read the corresponding walkthrough document provided with your selected scenario.

3. Use the onboarded test machine to access then the Windows Defender ATP portal and go to **Help** > **Simulations & tutorials**. From there, download the simulation file or copy the simulation script.

4. Run the simulation file or script on the test machine as instructed in the walkthrough document.

>[!NOTE]
>Simulation files or scripts mimic attack activity but are actually benign and will not harm or compromise the test machine.

## Related topics
- [Onboard Windows 10 machines](configure-endpoints-windows-defender-advanced-threat-protection.md)