---
title: Evaluate infrastructure and tools
ms.reviewer: 
manager: laurawi
description: 
keywords: updates, servicing, current, deployment, semi-annual channel, feature, quality, rings, insider, tools
ms.prod: w10
ms.mktglfcycl: manage
audience: itpro
author: jaimeo
ms.localizationpriority: medium
ms.audience: itpro
author: jaimeo
ms.topic: article
ms.collection: M365-modern-desktop
---

# Evaluate infrastructure and tools

Before you deploy an update, it's best to assess your deployment infrastucture (that is, tools such as Configuration Manager, Microsoft Intune, or similar) and current configurations (such as security baselines, administrative templates, and policies that affect updates). Then, set some criteria to define your operational readiness.

## Infrastructure

Do your deployment tools need updates?

- If you use Configuration Manager, is it on the Current Branch with the latest release installed. This ensures that it supports the next Windows 10 feature update. Configuration Manager releases are supported for 18 months.
- Using a cloud-based management tool like Microsoft Intune reduces support challenges, since no related products need to be updated.
- If you use a non-Microsoft tool, check with its product support to make sure you're using the current version and that it supports the next Windows 10 feature update.

Rely on your experiences and data from previous deployments to help you judge how long infrastructure changes take and identify any problems you've encountered while doing so.

## Configuration

Make sure your security basline, administrative templates, and policies have the right settings to support your devices once the new Windows 10 update is installed.

### Security baseline

Keep security baslines current to help ensure that your environment is secure and that new security feature in the coming Windows 10 update are set properly.

- **Microsoft security baselines**: You should implement security baselines from Microsoft. They are included in the [Security Compliance Toolkit](https://www.microsoft.com/download/details.aspx?id=55319), along with tools for managing them. 
- **Industry- or region-specific baselines**: Your specific industry or region might have particular baselines that you must follow per regulations. Ensure that any new baselines support the version of Windows 10 you are about to deploy.

### Configuration updates

There are a number of Windows policies (set by Group Policy, Intune, or other methods) that affect when Windows updates are installed, deferral, end-user experience, and many other aspects. Check these policies to make sure they are set appropriately.

- **Windows 10 Administrative templates**: Each Windows 10 feature update has a supporting Administrative template (.admx) file. Group Policy tools use Administrative template files to populate policy settings in the user interface. The templates are available in the Download Center, for example, this one for [Windows 10, version 1909](https://www.microsoft.com/download/100591).
- **Update and end-user experience policies**: A number of settings affect when a device installs updates, whether and for how long a user can defer an update, restart behavior after installation, and many other aspects of update behavior. {LINK here or elsewhere}
