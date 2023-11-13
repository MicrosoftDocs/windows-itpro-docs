---
title: Checklist Creating Outbound Firewall Rules 
description: Use these tasks for creating outbound firewall rules in your GPOs for Windows Defender Firewall with Advanced Security.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 11/10/2023
---

# Checklist: create outbound firewall rules

This checklist includes tasks for creating outbound firewall rules in your GPOs.

> [!IMPORTANT]
> By default, outbound filtering is disabled. Because all outbound network traffic is permitted, outbound rules are typically used to block traffic that is not wanted on the network. However, it is a best practice for an administrator to create outbound allow rules for those applications that are approved for use on the organization's network. If you do this, then you have the option to set the default outbound behavior to block, preventing any network traffic that is not specifically authorized by the rules you create.

| Task | Reference |
| - | - |
| Create a rule that allows a program to send any outbound network traffic on any port it requires. | [Create an Outbound Program or Service Rule](create-an-outbound-program-or-service-rule.md)|
| Create a rule that allows outbound network traffic on a specified port number. | [Create an Outbound Port Rule](create-an-outbound-port-rule.md)|
| Enable a predefined rule or a group of predefined rules. Some predefined rules for basic network services are included as part of the installation of Windows; others can be created when you install a new application or network service. | [Enable Predefined Outbound Rules](enable-predefined-outbound-rules.md)|
