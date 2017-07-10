---
title: Monitor the health of devices with Device Health
description: You can use Device Health in OMS to monitor the frequency and causes of crashes and misbehaving apps on devices in your network.
keywords: oms, operations management suite, wdav, health, log analytics
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: jaimeo
---

# Monitor the health of devices with Device Health

## Introduction

With Windows 10, organizations need to change the way they approach monitoring client computers and other devices in their deployments. Device Health is the newest Windows Analytics solution that complements the existing Upgrade Readiness and Update Compliance solutions by providing IT with reports on some common problems the end users might experience so they can be proactively remediated, thus saving support calls and improving end-user productivity.

Like Upgrade Readiness and Update Compliance, Device Health is a solution built within Operations Management Suite (OMS), a cloud-based monitoring and automation service that has a flexible servicing subscription based on data usage and retention. For more information about OMS, see [Operations Management Suite overview](http://azure.microsoft.com/en-us/documentation/articles/operations-management-suite-overview/).

Device Health uses the Windows telemetry that is part of all Windows 10 devices. If you have already employed Upgrade Readiness or Update Compliance solutions, all you need to do is select Device Health (preview) from the OMS solution gallery and add it to your OMS workspace. Device Health does use enhanced telemetry, so you might need to implement this policy if you've not already done so.


Device Health provides the following:

- [ADDITIONAL SUMMARY BULLETS?]
- Cloud-connected access utilizing Windows 10 telemetry means no need for new complex, customized infrastructure

See the following topics in this guide for detailed information about configuring and using the Device Health solution:

- [Get started with Device Health](device-health-get-started.md): How to add Device Health to your environment.
- [Using Device Health](device-health-using.md): How to begin using Device Health.

An overview of the processes used by the Device Health solution is provided below.

## Device Health architecture
 
The Device Health architecture and data flow is summarized by the following five-step process:



**(1)** User computers send telemetry data to a secure Microsoft data center using the Microsoft Data Management Service.<BR>
**(2)** Telemetry data is analyzed by the Device Health Data Service.<BR>
**(3)** Telemetry data is pushed from the Device Health Data Service to your OMS workspace.<BR>
**(4)** Telemetry data is available in the Device Health solution.<BR>
**(5)** You are able to monitor and troubleshoot Windows updates and Windows Defender AV in your environment.<BR>

These steps are illustrated in following diagram:

 [![](images/analytics-architecture.png)](images/analytics-architecture.png)

>[!NOTE]
>This process assumes that Windows telemetry is enabled and you [have assigned your Commercial ID to devices](update-compliance-get-started#deploy-your-commercial-id-to-your-windows-10-devices.



 
## Related topics

[Get started with Device Health](device-health-get-started.md)<BR>
[Use Device Health to monitor Windows Updates](device-health-using.md)
For the latest information on Windows Analytics, including new features and usage tips, see the [Windows Analytics blog](https://blogs.technet.microsoft.com/upgradeanalytics)