---
title: Deploy multiple Windows Defender Application Control Policies  (Windows 10)
description: Windows Defender Application Control supports multiple code integrity policies for one device.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: jsuther1974
ms.date: 05/10/2019
---

# Deploy multiple Windows Defender Application Control Policies 

**Applies to:**

-   Windows 10
-   Windows Server 2016

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Beginning with Windows 10 version 1903, WDAC supports multiple code integrity policies for one device. 

## Precedence

- Multiple base policies: intersection
  - Only applications allowed by both policies run without generating block events
- Base + supplemental policy: union
  - Files that are allowed by the base policy or the supplemental policy are not blocked

## Newly Supported Scenarios

WDAC brings you the ability to support multiple CI policies. Three scenarios are now supported:

1.	Enforce and Audit Side-by-Side (Intersection)
    - To validate policy changes before deploying in enforcement mode, deploy an audit-mode base policy side-by-side with an existing enforcement-mode base policy
2.	Multiple Base Policies (Intersection)
    - Enforce two or more base policies simultaneously to allow simpler policy targeting for policies with different scope/intent
    - Ex. Base1 is a corporate standard policy that is relatively loose to accommodate all organizations while forcing minimum corp standards (e.g. Windows works + Managed Installer + path rules). Base2 is a team-specific policy that further restricts what is allowed to run (e.g. Windows works + Managed Installer + corporate signed apps only)
3.	Supplemental Policies (Union)
    - Deploy a supplemental policy (or policies) to expand a base policy
    - Ex. The Azure host base policy restricts tightly to just allow Windows and hardware drivers. Can add a supplemental policy to allow just the additional signer rules needed to support signed code from the Exchange team.
