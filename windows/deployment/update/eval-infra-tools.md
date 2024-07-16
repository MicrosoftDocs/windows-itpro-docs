---
title: Evaluate infrastructure and tools
description: Review the steps to ensure your infrastructure is ready to deploy updates to clients in your organization.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 10/31/2023
---

# Evaluate infrastructure and tools

Before you deploy an update, assess your deployment infrastructure. For example, management systems like Configuration Manager, Microsoft Intune, or similar. Also assess current configurations such as security baselines, administrative templates, and policies that affect updates. Then set some criteria to define your operational readiness.

## Infrastructure

Do your deployment tools need updates?

- If you use Configuration Manager, is it on the current branch with the latest release installed? Being on this branch ensures that it supports the next Windows client feature update. Configuration Manager releases are supported for 18 months.
- Using a cloud-based management tool like Microsoft Intune reduces support challenges, since no related products need to be updated.
- If you use a non-Microsoft tool, check with its product support to make sure you're using the current version and that it supports the next Windows client feature update.

Rely on your experiences and data from previous deployments to help you judge how long infrastructure changes take and identify any problems you've encountered.

## Device settings

Make sure your security baseline, administrative templates, and policies have the right settings to support your devices once the new Windows client update is installed.

### Security baseline

Keep security baselines current to help ensure that your environment is secure and that new security feature in the coming Windows client update are set properly.

- **Microsoft security baselines**: You should implement security baselines from Microsoft. They're included in the [Security Compliance Toolkit](https://www.microsoft.com/download/details.aspx?id=55319), along with tools for managing them.
- **Industry- or region-specific baselines**: Your specific industry or region might have particular baselines that you must follow per regulations. Ensure that any new baselines support the version of Windows client you're about to deploy.

### Configuration updates

There are several Windows policies that affect when Windows updates are installed, deferral, end-user experience, and many other aspects. For example, policies set by group policy, Intune, or other methods. Check these policies to make sure they're set appropriately.

- **Windows Administrative templates**: Each Windows client feature update has a supporting Administrative template (.admx) file. Group Policy tools use Administrative template files to populate policy settings in the user interface. The templates are available in the Download Center, for example, this one for [Windows 11, version 23H2](https://www.microsoft.com/download/details.aspx?id=105667).

- **Policies for update compliance and end-user experience**: Several settings affect when a device installs updates, whether and for how long a user can defer an update, restart behavior after installation, and many other aspects of update behavior. It's especially important to look for existing policies that are out of date or could conflict with new ones.

## Define operational readiness criteria

When you deploy an update, you need to make sure the update isn't introducing new operational issues. If incidents arise, make sure the needed documentation and processes are available. Work with your operations and support team to define acceptable trends and what documents or processes require updating:

- **Call trend**: Define what percentage increase in calls relating to Windows client feature updates are acceptable or can be supported.
- **Incident trend**: Define what percentage of increase in calls asking for support relating to Windows client feature updates are acceptable or can be supported.
- **Support documentation**: Review supporting documentation that requires an update to support new infrastructure tooling or configuration as part of the Windows client feature update.
- **Process changes:** Define and update any processes that will change as a result of the Windows feature update.

Your operations and support staff can help you determine if the appropriate information is being tracked at the moment. If it isn't, work out how to get this information so you can gain the right insight.

## Tasks

Finally, you can begin to carry out the work needed to ensure your infrastructure and configuration can support the update. To help you keep track, you can classify the work into the following overarching tasks:

- **Review infrastructure requirements**: Go over the details of requirements to support the update, and ensure they've all been defined.
- **Validate infrastructure against requirements**: Compare your infrastructure against the requirements that you identified for the update.
- **Define infrastructure update plan**: Detail how your infrastructure must change to support the update.
- **Review current support volume**: Understand the current support volume to understand how much of an effect the update has when you deploy it.
- **Identify gaps that require attention**: Identify issues that you'll need to address to successfully deploy the update. For example, will your infrastructure engineer have to research how a new feature that comes with the update might affect the infrastructure?
- **Define operational update plan**: Detail how your operational services and processes must change to support the update.
