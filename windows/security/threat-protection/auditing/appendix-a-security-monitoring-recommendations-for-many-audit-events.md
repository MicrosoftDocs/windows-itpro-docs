---
title: Appendix A, Security monitoring recommendations for many audit events 
description: Learn about recommendations for the type of monitoring required for certain classes of security audit events.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/06/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# Appendix A: Security monitoring recommendations for many audit events


This document, the [Advanced security audit policy settings](advanced-security-audit-policy-settings.md) reference, provides information about individual audit events, and lists them within audit categories and subcategories. However, there are many events for which the following overall recommendations apply. There are links throughout this document from the “Recommendations” sections of the relevant events to this appendix.

| **Type of monitoring required**                                                                                                                                                                                                                                                                                   | **Recommendation**                                                                                                                                                              |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **High-value accounts**: You might have high-value domain or local accounts for which you need to monitor each action.<br>Examples of high-value accounts are database administrators, built-in local administrator account, domain administrators, service accounts, domain controller accounts and so on. | Monitor relevant events for the **“Subject\\Security ID”** that corresponds to the high-value account or accounts.                                                              |
| **Anomalies or malicious actions**: You might have specific requirements for detecting anomalies or monitoring potential malicious actions. For example, you might need to monitor for use of an account outside of working hours.                                                                                | When you monitor for anomalies or malicious actions, use the **“Subject\\Security ID”** (with other information) to monitor how or when a particular account is being used.     |
| **Non-active accounts**: You might have non-active, disabled, or guest accounts, or other accounts that should never be used.                                                                                                                                                                                     | Monitor relevant events for the **“Subject\\Security ID”** that corresponds to the accounts that should never be used.                                                          |
| **Account allowlist**: You might have a specific allowlist of accounts that are the only ones allowed to perform actions corresponding to particular events.                                                                                                                                                      | Monitor the relevant events for **“Subject\\Security ID”** accounts that are outside the allowlist of accounts.                                                                 |
| **Accounts of different types**: You might want to ensure that certain actions are performed only by certain account types, for example, local or domain account, machine or user account, vendor or employee account, and so on.                                                                                 | Identify events that correspond to the actions you want to monitor, and for those events, review the **“Subject\\Security ID”** to see whether the account type is as expected. |
| **External accounts**: You might be monitoring accounts from another domain, or “external” accounts that are not allowed to perform certain actions (represented by certain specific events).                                                                                                                     | Monitor the specific events for the **“Subject\\Account Domain”** corresponding to accounts from another domain or “external” accounts.                                         |
| **Restricted-use computers or devices**: You might have certain computers, machines, or devices on which certain people (accounts) should not typically perform any actions.                                                                                                                                      | Monitor the target **Computer:** (or other target device) for actions performed by the **“Subject\\Security ID”** that you are concerned about.                                 |
| **Account naming conventions**: Your organization might have specific naming conventions for account names.                                                                                                                                                                                                       | Monitor “**Subject\\Account Name”** for names that don’t comply with naming conventions.                                                                                        |
