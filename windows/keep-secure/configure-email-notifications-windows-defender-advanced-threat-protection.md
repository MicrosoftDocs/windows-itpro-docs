---
title: Configure Email Notifications
description: Use Group Policy to deploy the configuration package on endpoints so that they are onboarded to the service.
keywords: configure endpoints using group policy, endpoint management, configure Windows ATP endpoints, configure Windows Defender Advanced Threat Protection endpoints, group policy
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: eavena
localizationpriority: high
---

# Configure email notifications

## second

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Windows Defender ATP supports email notifications to be sent to recipients list on every new alert in the portal. 
Email notifications are equivalent to ‘New Alerts’ queue, so that every new alert added to the queue will be sent over email to recipients according to the chosen severities.
Every email includes basic information on the new alert and a link to the portal specific alert’s page for further investigation.

To configure email notifications open email notifications preferences page on the right pane:
Preferences Setup  Email Notifications 
In email notifications preferences page, you can define the following:
    
    1.	Alert Severity - severity of alerts to be notified on.  By default, High and Medium alerts will be sent.

    2.	Email recipients - define the email recipients within your organization to be notified on new alerts.
    
    3.	Click ‘Save Preferences’.
Note: to check that email recipients are able to receive the emails click ‘Send a test Email’.
Emails are sent from <no-reply>@WDATP.microsoft.com

Troubleshooting: consider adding info in case emails are not received (maybe due to rules blocking the domain, emails moved to junk/….)


1.

2. 

3. 

- one
- two

><!NOTE>
> Not a note 

gfghf
--- | ---|


[Hyperlink](actual link)
