---
title: Evaluate infrastructure and tools
manager: laurawi
description: Steps to make sure your infrastructure is ready to deploy updates
keywords: updates, servicing, current, deployment, semi-annual channel, feature, quality, rings, insider, tools
ms.prod: w10
ms.mktglfcycl: manage
audience: itpro
author: jaimeo
ms.localizationpriority: medium
ms.audience: itpro
ms.topic: article
ms.collection: m365initiative-coredeploy
---

# Evaluate infrastructure and tools

Before you deploy an update, it's best to assess your deployment infrastructure (that is, tools such as Configuration Manager, Microsoft Intune, or similar) and current configurations (such as security baselines, administrative templates, and policies that affect updates). Then, set some criteria to define your operational readiness.

## Infrastructure

Do your deployment tools need updates?

- If you use Configuration Manager, is it on the Current Branch with the latest release installed. Being on this branch ensures that it supports the next Windows 10 feature update. Configuration Manager releases are supported for 18 months.
- Using a cloud-based management tool like Microsoft Intune reduces support challenges, since no related products need to be updated.
- If you use a non-Microsoft tool, check with its product support to make sure you're using the current version and that it supports the next Windows 10 feature update.

Rely on your experiences and data from previous deployments to help you judge how long infrastructure changes take and identify any problems you've encountered while doing so.

## Device settings

Make sure your security baseline, administrative templates, and policies have the right settings to support your devices once the new Windows 10 update is installed.

### Security baseline

Keep security baselines current to help ensure that your environment is secure and that new security feature in the coming Windows 10 update are set properly.

- **Microsoft security baselines**: You should implement security baselines from Microsoft. They are included in the [Security Compliance Toolkit](https://www.microsoft.com/download/details.aspx?id=55319), along with tools for managing them. 
- **Industry- or region-specific baselines**: Your specific industry or region might have particular baselines that you must follow per regulations. Ensure that any new baselines support the version of Windows 10 you are about to deploy.

### Configuration updates

There are a number of Windows policies (set by Group Policy, Intune, or other methods) that affect when Windows updates are installed, deferral, end-user experience, and many other aspects. Check these policies to make sure they are set appropriately.

- **Windows 10 Administrative templates**: Each Windows 10 feature update has a supporting Administrative template (.admx) file. Group Policy tools use Administrative template files to populate policy settings in the user interface. The templates are available in the Download Center, for example, this one for [Windows 10, version 1909](https://www.microsoft.com/download/100591).
- **Policies for update compliance and end-user experience**: A number of settings affect when a device installs updates, whether and for how long a user can defer an update, restart behavior after installation, and many other aspects of update behavior. It's especially important to look for existing policies that are out of date or could conflict with new ones. 


## Define operational readiness criteria

When you’ve deployed an update, you’ll need to make sure the update isn’t introducing new operational issues. And you’ll also ensure that if incidents arise, the needed documentation and processes are available. Work with your operations and support team to define acceptable trends and what documents or processes require updating:

- **Call trend**: Define what percentage increase in calls relating to Windows 10 feature updates are acceptable or can be supported.
- **Incident trend**: Define what percentage of increase in calls asking for support relating to Windows 10 feature updates are acceptable or can be supported.
- **Support documentation**: Review supporting documentation that requires an update to support new infrastructure tooling or configuration as part of the Windows 10 feature update.
- **Process changes:** Define and update any processes that will change as a result of the Windows 10 feature update.

Your operations and support staff can help you determine if the appropriate information is being tracked at the moment. If it isn't, work out how to get this information so you can gain the right insight. 

## Tasks

Finally, you can begin to carry out the work needed to ensure your infrastructure and configuration can support the update. To help you keep track, you can classify the work into the following overarching tasks:

- **Review infrastructure requirements**: Go over the details of requirements to support the update, and ensure they’ve all been defined.
- **Validate infrastructure against requirements**: Compare your infrastructure against the requirements that have been identified for the update.
- **Define infrastructure update plan**: Detail how your infrastructure must change to support the update.
- **Review current support volume**: Understand the current support volume to understand how much of an effect the update has when it’s been deployed.
- **Identify gaps that require attention**: Identify issues that will need to be addressed to successfully deploy the update. For example, will your infrastructure engineer have to research how a new feature that comes with the update might affect the infrastructure?
- **Define operational update plan**: Detail how your operational services and processes must change to support the update.
