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

Before you can begin using the Enterprise Mode Site List Portal, you must complete these steps:

1. Download the Enterprise Mode Site List Portal source code(#download-the-enterprise-mode-site-list-portal-source-code).

2. Create the Application Pool and website, by using Internet Information Service (IIS).

3. Create and prepare the database.

4. Map the **ApplicationPoolIdentity** to a SQL Server Login.

5. Restart the Application Pool and website.

6. Register the first user.

7. Configure the SMTP server and port for email notification.

8. Register the scheduler service.

## Download the Enterprise Mode Site List Portal source code
You must download the deployment folder from the Enterprise Mode Site List Portal source code to your web server. <!-- There is no deployment folder in the source code -->

**To download the source code**

1. Download the deployment folder from the [Enterprise Mode Site List Portal](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal) source code to your web server.

2. Install the Node.js® package manager, [npm](https://www.npmjs.com/). <!-- Why? What is this used for? We should also add this to the required software if we're going to include it here -->

3. Open File Explorer and then open the **EMIEWebPortal/** folder.

4.	Press and hold Shift, right-click the window, then click Open command window here. <!-- I'm only seeing an option to open in PowerShell, is that what you mean? Or am I missing the right option? -->

5.	Type _npm i_ into the command prompt, then press Enter. <!-- Why? What does this do? -->

6.	Go back up a directory, open the solution file **EMIEWebPortal.sln** in a development tool such as Visual Studio, and then build the entire solution. <!-- We need to include Visual Studio in the requirements. -->

7.	Copy the contents of the **EMIEWebPortal/** folder to the deployment directory of your website. <!-- What website? We haven't said anything about it yet...and there are instructions for creating the website after this step  -->

## Create the Application Pool and website, by using IIS
Next, you must create a new Application Pool and the website by using the IIS Manager.

**To create a new Application Pool**
1. text

**To create the website**
1. text

