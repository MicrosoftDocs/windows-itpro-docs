---
localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about how to set up the Enterprise Mode Site List Portal for your organization.
author: eross-msft
ms.prod: ie11
title: Set up the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
---

# Set up the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

The [Enterprise Mode Site List Portal](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal) is an open-source web tool on GitHub that allows you to manage your Enterprise Mode Site List, hosted by the app, with multiple users. The portal is designed to use IIS and a SQL Server backend, leveraging Active Directory (AD) for employee management. Updates to your site list are made by submitting new change requests, which are then approved by a designated group of people, put into a pre-production environment for testing, and then deployed immediately, or scheduled for deployment later.

Before you can start to use the Enterprise Mode Site List Portal, you must complete these steps:

1. Download the Enterprise Mode Site List Portal source code to your web server (#download-the-enterprise-mode-site-list-portal-source-code-to-your-web-server).

2. Create the Application Pool and portal website, by using Internet Information Service (IIS).

3. Create and prepare the database.

4. Map the **ApplicationPoolIdentity** to a SQL Server Login.

5. Restart the Application Pool and portal website.

6. Register the first user.

7. Configure the SMTP server and port for email notification.

8. Register the scheduler service.

## Download the Enterprise Mode Site List Portal source code to your web server

## Create the Application Pool and portal website, by using IIS
The first thing you need to do is create the Application Pool

