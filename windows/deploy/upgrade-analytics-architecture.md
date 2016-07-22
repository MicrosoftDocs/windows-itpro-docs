---
title: Upgrade Analytics architecture (Windows 10)
description: Describes Upgrade Analytics architecture.
ms.prod: w10
author: MaggiePucciEvans
---

# Upgrade Analytics architecture

The diagram below illustrates how Upgrade Analytics components work together in a typical installation. After you enable Windows telemetry on user computers and install the Compatibility Update (1), user computers send system, application and driver data to a Microsoft telemetry data repository (2). Once you configure Upgrade Analytics, telemetry data is queried from the repository, analyzed by the Upgrade Analytics Service (3) and pushed into your OMS workspace (4). You can then use the Upgrade Analytics solution (5) to determine your organization’s upgrade readiness.

<!-- PRESERVING ORIGINAL IMAGE CODING JUST IN CASE 
<img src="media/image1.png" width="624" height="401" />
-->

![Upgrade Analytics architecture](images/upgrade-analytics-architecture.png)

