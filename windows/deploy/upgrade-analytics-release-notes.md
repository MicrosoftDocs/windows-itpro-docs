---
title: Upgrade Analytics release notes (Windows 10)
description: Provides release notes for Upgrade Analytics.
ms.prod: w10
author: MaggiePucciEvans
---

# Upgrade Analytics release notes

## Supported versions of Windows

The compatibility update KB that sends data from user computers to Upgrade Analytics works only with Windows 7 SP1 and Windows 8.1. Upgrade Analytics cannot evaluate Windows XP or Windows Vista for upgrade eligibility.

With Windows 10 edition 1607, the compatibility update KB is installed automatically.

## Telemetry

User computers communicate with Upgrade Analytics through Windows telemetry. The Windows telemetry client runs in System context and requires a connection to various Microsoft telemetry endpoints. User authenticated proxies are not supported at this time. Work with your Network Administrator to ensure that user computers can communicate with telemetry endpoints.

## Upgrade Analytics does not support on-premise Windows deployments

Upgrade Analytics is built as a cloud service, which allows Upgrade Analytics to provide you with insights based on the data from user computers and other Microsoft compatibility services. Cloud services are easy to get up and running and are cost-effective because there is no requirement to physically implement and maintain services on-premise.

## In-region data storage requirements

Windows telemetry data from user computers is encrypted, sent to, and processed at Microsoft-managed secure data centers located in the US. Our analysis of the upgrade readiness-related data is then provided to you through the Upgrade Analytics solution in the Microsoft Operations Management Suite (OMS) portal. At the time this topic is being published, only OMS workspaces created in the East US and West Europe are supported. We’ll be frequently adding support for additional regions and we’ll update this information when new international regions are supported.

## Known issues

When viewing inventory items in table view, the maximum number of rows that can be viewed and exported is limited to 5,000. If you need to view or export more than 5,000 items, reduce the scope of the query so you can export a list with fewer items.

Clicking a column heading a client-side sort. Which means it basically only sorts what’s currently displayed…kind of (it actually does what’s shown + a little more but not the complete query result, not really sure if this is the intended behavior but currently investigating). The bottom line is, if they want sort to work as they expect, they need to write a new query, something like | sort TotalInstalls desc. So I’d recommend removing this line for now.

