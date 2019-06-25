---
title: Privacy in Microsoft Defender ATP for Mac
ms.reviewer: 
description: Describes privacy controls, how to configure policy settings that impact privacy and information about the diagnostic data collected in Microsoft Defender ATP for Mac.
keywords: microsoft, defender, atp, mac, privacy, diagnostic
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Privacy in Microsoft Defender ATP for Mac

Microsoft is committed to providing you with the information and controls you need to make choices about how your data is collected and used when you’re using Microsoft Defender ATP for Mac.

This topic describes the privacy controls available within the product, how to manage these controls with policy settings and more details on the data events that are collected.

## Overview of privacy controls in Microsoft Defender ATP for Mac

This section describes the privacy controls for the different types of data collected by Microsoft Defender ATP for Mac.

### Diagnostic data

Diagnostic data is used to keep Microsoft Defender ATP secure and up-to-date, detect, diagnose and fix problems, and also make product improvements.

Some diagnostic data is required, while some diagnostic data is optional. We give you the ability to choose whether to send us required or optional diagnostic data through the use of privacy controls, such as policy settings for organizations.

There are two levels of diagnostic data for Microsoft Defender ATP client software that you can choose from:

* **Required** The minimum data necessary to help keep Microsoft Defender ATP secure, up-to-date, and performing as expected on the device it’s installed on.

* **Optional** Additional data that helps us make product improvements and provides enhanced information to help us detect, diagnose, and remediate issues.

By default, both optional and required diagnostic data is sent to Microsoft.

### Cloud delivered protection data

Cloud delivered protection is used to provide increased and faster protection with access to the latest protection data in the cloud.

Enabling the cloud-delivered protection service is optional, however it is highly recommended because it provides very important protection against malware on your endpoints and across your network.

### Sample data

Sample data is used to improve the protection capabilities of the product, by sending Microsoft suspicious samples so they can be analyzed. Enabling automatic sample submission is optional.

When this feature is enabled and the sample being collected is likely to contain personal information, the user is prompted for consent.

## Manage privacy controls with policy settings

If you're an IT administrator, you might be interested in configuring these controls at the enterprise level. 

The privacy controls for the various type of data described in the previous section are described in detail in [Set preferences for Microsoft Defender ATP for Mac](microsoft-defender-atp-mac-preferences.md).

As with any new policy settings, you should carefully test them out in a limited, controlled environment to ensure the settings you configure have the desired effect before you implement the policy settings more widely in your organization.

## Diagnostic data events

This section describes what is considered required diagnostic data and what is considered optional diagnostic data, along with a description of the events and fields that are collected.

### Data fields that are common for all events
There is some information about events that is common to all events, regardless of category or data subtype. 

The following fields are considered common for all events:

| Field                   | Description |
| ----------------------- | ----------- |
| platform                | The broad classification of the platform on which the app is running. Allows us to identify on which platforms an issue may be occurring so that we can correctly prioritize the issue. |
| machine_guid            | Unique identifier associated with the device. Allows us to identify whether issues are impacting a select set of installs and how many users are impacted. |
| sense_guid              | Unique identifier associated with the device. Allows us to identify whether issues are impacting a select set of installs and how many users are impacted. |
| org_id                  | Unique identifier associated with the enterprise that the device belongs to. Allows us to identify whether issues are impacting a select set of enterprises and how many enterprises are impacted. |
| hostname                | Local machine name (without DNS suffix). Allows us to identify whether issues are impacting a select set of installs and how many users are impacted. |
| product_guid            | Unique identifier of the product. Allows us to differentiate issues impacting different flavors of the product. |
| app_version             | Version of the Microsoft Defender ATP for Mac application. Allows us to identify which versions of the product are showing an issue so that we can correctly prioritize it.|
| sig_version             | Version of security intelligence database. Allows us to identify which versions of the security intelligence are showing an issue so that we can correctly prioritize it. |
| supported_compressions  | List of compression algorithms supported by the application, e.g. `['gzip']`. Allows us to understand what types of compressions can be used when communicating with the application. |
| release_ring            | Ring that the device is associated with (e.g. Insider Fast, Insider Slow, Production). Allows us to identify on which release ring an issue may be occurring so that we can correctly prioritize the issue. |


### Required diagnostic data

**Required diagnostic data** is the minimum data necessary to help keep Microsoft Defender ATP secure, up-to-date, and performing as expected on the device it’s installed on.

Required diagnostic data helps to identify problems with Microsoft Defender ATP that may be related to a device or software configuration. For example, it can help determine if an Microsoft Defender ATP feature crashes more frequently on a particular operating system version, with newly introduced features, or when certain Microsoft Defender ATP features are disabled. Required diagnostic data helps us detect, diagnose, and fix these problems more quickly so the impact to users or organizations is reduced.

#### Software setup and inventory data events

**Microsoft Defender ATP installation / uninstallation**

The following fields are collected:

| Field            | Description |
| ---------------- | ----------- |
| correlation_id   | Unique identifier associated with the installation. |
| version          | Version of the package being installed. |
| severity         | Severity of the message (e.g. Informational). |
| code             | Code describing the operation. |
| text             | Additional information associated with the product installation. |

**Microsoft Defender ATP configuration**

The following fields are collected:

| Field                                               | Description |
| --------------------------------------------------- | ----------- |
| antivirus_engine.enable_real_time_protection        | Whether real time protection is enabled on the device or not. |
| cloud_service.enabled                               | Whether cloud delivered protection is enabled on the device or not. |
| cloud_service.timeout                               | Timeout when communicating with the Microsoft Defender ATP cloud. |
| cloud_service.heartbeat_interval                    | Interval between consecutive heartbeats sent by the product to the cloud. |
| cloud_service.service_uri                           | URI used to communicate with the cloud. |
| cloud_service.diagnostic_level                      | Diagnostic level of the device (required, optional). |
| cloud_service.automatic_sample_submission           | Whether automatic sample submission is turned on or not. |
| features.\[optional feature name\]                  | List of preview features, along with whether they are enabled or not. |

#### Product and service performance data events

**Kernel extension statistics**

The following fields are collected:

| Field            | Description |
| ---------------- | ----------- |
| version          | Version of Microsoft Defender ATP for Mac. |
| instance_id      | Unique identifier generated on kernel extension startup. |
| trace_level      | Trace level of the kernel extension. |
| ipc.connects     | Number of connection requests received by the kernel extension. |
| ipc.rejects      | Number of connection requests rejected by the kernel extension. |
| ipc.connected    | Whether there is any active connection to the kernel extension. |

#### Support data

**Diagnostic logs**

Diagnostic logs are collected only with the user's consent as part of the feedback submission feature. The following files are collected as part of the support logs:

- All files under */Library/Logs/Microsoft/mdatp/*
- Subset of files under */Library/Application Support/Microsoft/Defender/* that are created and used by Microsoft Defender ATP for Mac
- Subset of files under */Library/Managed Preferences* that are used by Microsoft Defender ATP for Mac

### Optional diagnostic data

**Optional diagnostic data** is additional data that helps us make product improvements and provides enhanced information to help us detect, diagnose, and fix issues.

If you choose to send us optional diagnostic data, required diagnostic data is also included.

Examples of optional diagnostic data include data we collect about product configuration (e.g. number of exclusions set on the device) and product performance (aggregate measures about the performance of components of the product).

#### Software setup and inventory data events

**Microsoft Defender ATP configuration**

The following fields are collected:

| Field                                              | Description |
| -------------------------------------------------- | ----------- |
| connection_retry_timeout                           | Connection retry timeout when communication with the cloud. |
| file_hash_cache_maximum                            | Size of the product cache. |
| crash_upload_daily_limit                           | Limit of crash logs uploaded daily. |
| antivirus_engine.exclusions[].is_directory         | Whether the exclusion from scanning is a directory or not. |
| antivirus_engine.exclusions[].path                 | Path that was excluded from scanning. |
| antivirus_engine.exclusions[].extension            | Extension excluded from scanning. |
| antivirus_engine.exclusions[].name                 | Name of the file excluded from scanning. |
| antivirus_engine.scan_cache_maximum                | Size of the product cache. |
| antivirus_engine.maximum_scan_threads              | Maximum number of threads used for scanning. |
| antivirus_engine.threat_restoration_exclusion_time | Timeout before a file restored from the quarantine can be detected again. |
| filesystem_scanner.full_scan_directory             | Full scan directory. |
| filesystem_scanner.quick_scan_directories          | List of directories used in quick scan. |
| edr.latency_mode                                   | Latency mode used by the detection and response component. |
| edr.proxy_address                                  | Proxy address used by the detection and response component. |

**Microsoft Auto-Update configuration**

The following fields are collected:

| Field                       | Description |
| --------------------------- | ----------- |
| how_to_check                | Determines how product updates are checked (e.g. automatic, manual). |
| channel_name                | Update channel associated with the device. |
| manifest_server             | Server used for downloading updates. |
| update_cache                | Location of the cache used to store updates. |

### Product and service usage

#### Diagnostic log upload started report

The following fields are collected:

| Field            | Description |
| ---------------- | ----------- |
| sha256           | SHA256 identifier of the support log. |
| size             | Size of the support log. |
| original_path    | Path to the support log (always under */Library/Application Support/Microsoft/Defender/wdavdiag/*). |
| format           | Format of the support log. |

#### Diagnostic log upload completed report

The following fields are collected:

| Field            | Description |
| ---------------- | ----------- |
| request_id       | Correlation ID for the support log upload request. |
| sha256           | SHA256 identifier of the support log. |
| blob_sas_uri     | URI used by the application to upload the support log. |

#### Product and service performance data events

**Unexpected application exit (crash)**

Unexpected application exits and the state of the application when that happens.

**Kernel extension statistics**

The following fields are collected:

| Field                          | Description |
| ------------------------------ | ----------- |
| pkt_ack_timeout                | All properties below are aggregated numerical values, representing count of events that happened since kernel extension startup. |
| pkt_ack_conn_timeout           | |
| ipc.ack_pkts                   | |
| ipc.nack_pkts                  | |
| ipc.send.ack_no_conn           | |
| ipc.send.nack_no_conn          | |
| ipc.send.ack_no_qsq            | |
| ipc.send.nack_no_qsq           | |
| ipc.ack.no_space               | |
| ipc.ack.timeout                | |
| ipc.ack.ackd_fast              | |
| ipc.ack.ackd                   | |
| ipc.recv.bad_pkt_len           | |
| ipc.recv.bad_reply_len         | |
| ipc.recv.no_waiter             | |
| ipc.recv.copy_failed           | |
| ipc.kauth.vnode.mask           | |
| ipc.kauth.vnode.read           | |
| ipc.kauth.vnode.write          | |
| ipc.kauth.vnode.exec           | |
| ipc.kauth.vnode.del            | |
| ipc.kauth.vnode.read_attr      | |
| ipc.kauth.vnode.write_attr     | |
| ipc.kauth.vnode.read_ex_attr   | |
| ipc.kauth.vnode.write_ex_attr  | |
| ipc.kauth.vnode.read_sec       | |
| ipc.kauth.vnode.write_sec      | |
| ipc.kauth.vnode.take_own       | |
| ipc.kauth.vnode.denied         | |
| ipc.kauth.file_op.mask         | |
| ipc.kauth_file_op.open         | |
| ipc.kauth.file_op.close        | |

## Resources

- [Privacy at Microsoft](https://privacy.microsoft.com/)
