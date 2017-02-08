---
title: Monitor Windows Updates with Upgrade Compliance (Windows 10)
description: Introduction to Update Compliance.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Monitor Windows Updates with Upgrade Compliance

## Introduction

With Windows 10, organizations need to change the way they approach monitoring and deploying updates. Update Compliance is a powerful set of tools that enable organizations to monitor and track all important aspects of Microsoft’s new servicing strategy: [Windows as a Service](waas-overview.md).

Update Compliance is a solution built within Operations Management Suite (OMS), a cloud-based monitoring and automation service which has a flexible servicing subscription based off data usage/retention.

Update Compliance uses the Windows telemetry that is part of all Windows 10 devices. It collects system data including update installation progress, Windows Update for Business (WUfB) configuration data, and other update-specific information, and then sends this data privately to a secure cloud to be stored for analysis and usage within the solution. 

Update Compliance provides the following:

- An overview of your organization’s devices that just works.
- Dedicated drill-downs for devices that might need attention.
- An inventory of devices, including the version of Windows they are running and their update status.
- An overview of WUfB deferral configurations (Windows 10 Anniversary Update [1607] and later).
- Powerful built-in [log analytics](https://www.microsoft.com/en-us/cloud-platform/insight-and-analytics?WT.srch=1&WT.mc_id=AID529558_SEM_%5B_uniqid%5D&utm_source=Bing&utm_medium=CPC&utm_term=log%20analytics&utm_campaign=Hybrid_Cloud_Management) to create useful custom queries.
- Cloud-connected access utilizing Windows 10 telemetry means no need for new complex, customized infrastructure.

## In this guide

See the following topics for more information about the Update Compliance solution:

- [Get started with Update Compliance](update-compliance-get-started.md): How to add Update Compliance to your environment.
- [Using Update Compliance](update-compliance-using.md): How to begin using Update Compliance.
- [Update Compliance architecture](update-compliance-architecture.md): A summary of the Update Compliance data flow.
 

