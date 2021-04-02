---
title: Prepare to deploy Windows
description: Final steps to get ready to deploy Windows, including preparing infrastructure, environment, applications, devices, network, capability, and users
keywords: updates, servicing, current, deployment, semi-annual channel, feature, quality, rings, insider, tools
ms.prod: w10
ms.mktglfcycl: manage
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.reviewer: 
manager: laurawi
ms.topic: article
ms.collection: m365initiative-coredeploy
---

# Prepare to deploy Windows

Having worked through the activities in the planning phase, you should be in a good position to prepare your environment and process to deploy Windows 10. The planning phase will have left you with these useful items:

- A clear understanding of necessary personnel and their roles and criteria for [rating app readiness](plan-define-readiness.md)
- A plan for [testing and validating](plan-determine-app-readiness.md) apps
- An assessment of your [deployment infrastructure](eval-infra-tools.md) and definitions for operational readiness
- A [deployment plan](create-deployment-plan.md) that defines the rings you want to use 

Now you're ready to actually start making changes in your environment to get ready to deploy.

## Prepare infrastructure and environment

- Deploy site server updates for Configuration Manager.
- Update non-Microsoft security tools like security agents or servers.
- Update non-Microsoft management tools like data loss prevention agents.

Your infrastructure probably includes many different components and tools. You’ll need to ensure your environment isn’t affected by issues due to the changes you make to the various parts of the infrastructure. Follow these steps:

1.	Review all of the infrastructure changes that you’ve identified in your plan. It’s important to understand the changes that need to be made and to detail how to implement them.  This process prevents problems later on.

2.	Validate your changes. You’ll validate the changes for your infrastructure’s components and tools, to help you understand how your changes could affect your production environment. 

3.	Implement the changes. Once the changes have been validated, you can implement the changes across the wider infrastructure.


You should also look at your organization’s environment’s configuration and outline how you’ll implement any necessary changes previously identified in the plan phase to support the update. Consider what you’ll need to do for the various settings and policies that currently underpin the environment. For example:

- Implement new draft security guidance. New versions of Windows can include new features that improve your environment’s security. Your security teams will want to make appropriate changes to security-related configurations.

- Update security baselines. Security teams understand the relevant security baselines and will have to work to make sure all baselines fit into whatever guidance they have to adhere to.

However, your configuration will consist of many different settings and policies. It’s important to only apply changes where they are necessary, and where you gain a clear improvement. Otherwise, your environment might face issues that will slow down the update process. You want to ensure your environment isn’t affected adversely because of changes you make. For example:

1.	Review new security settings. Your security team will review the new security settings to understand how they can best be set to facilitate the update, and to also investigate the potential effects they might have on your environment.

2.	Review security baselines for changes. Security teams will also review all the necessary security baselines, to ensure the changes can be implemented, and ensure your environment remains compliant.

3.	Implement and validate security settings and baseline changes. Your security teams will then implement all of the security settings and baselines, having addressed any potential outstanding issues.


## Prepare applications and devices

You've previously decided on which validation methods you want to use to validate apps in the upcoming pilot deployment phase. Now is a good time to make sure that individual devices are ready and able to install the next update without difficulty.

### Ensure updates are available

Enable update services on devices. Ensure that every device is running all the services Windows Update relies on. Sometimes users or even malware can disable the services Windows Update requires to work correctly. Make sure the following services are running:

- Background Intelligent Transfer Service
- Background Tasks Infrastructure Service
- BranchCache (if you use this feature for update deployment)
- ConfigMgr Task Sequence Agent (if you use Configuration Manager to deploy updates)
- Cryptographic Services
- DCOM Server Process Launcher
- Device Install
- Delivery Optimization
- Device Setup Manager
- License Manager
- Microsoft Account Sign-in Assistant
- Microsoft Software Shadow Copy Provider
- Remote Procedure Call (RPC)
- Remote Procedure Call (RPC) Locator
- RPC Endpoint Mapper
- Service Control Manager
- Task Scheduler
- Token Broker
- Update Orchestrator Service
- Volume Shadow Copy Service
- Windows Automatic Update Service
- Windows Backup
- Windows Defender Firewall
- Windows Management Instrumentation
- Windows Management Service
- Windows Module Installer
- Windows Push Notification
- Windows Security Center Service
- Windows Time Service
- Windows Update
- Windows Update Medic Service

You can check these services manually by using Services.msc, or by using PowerShell scripts, Desktop Analytics, or other methods.

### Network configuration

Ensure that devices can reach necessary Windows Update endpoints through the firewall. For example, for Windows 10, version 2004, the following protocols must be able to reach these respective endpoints:


|Protocol  |Endpoint URL  |
|---------|---------|
|TLS 1.2         |  `*.prod.do.dsp.mp.microsoft.com`      |
|HTTP     | `emdl.ws.microsoft.com`        |
|HTTP     | `*.dl.delivery.mp.microsoft.com`        |
|HTTP     |  `*.windowsupdate.com`       |
|HTTPS     |  `*.delivery.mp.microsoft.com`       |
|TLS 1.2     | `*.update.microsoft.com`        |
|TLS 1.2     |  `tsfe.trafficshaping.dsp.mp.microsoft.com`       |

> [!NOTE]
> Be sure not to use HTTPS for those endpoints that specify HTTP, and vice versa. The connection will fail.

The specific endpoints can vary between Windows 10 versions. See, for example, [Windows 10 2004 Enterprise connection endpoints](/windows/privacy/manage-windows-2004-endpoints). Similar articles for other Windows 10 versions are available in the table of contents nearby.


### Optimize download bandwidth
Set up [Delivery Optimization](waas-delivery-optimization.md) for peer network sharing or Microsoft Connected Cache.

### Address unhealthy devices

In the course of surveying your device population, either with Desktop Analytics or by some other means, you might find devices that have systemic problems that could interfere with update installation. Now is the time to fix those problems.

- **Low disk space:** Quality updates require a minimum of 2 GB to successfully install. Feature updates require between 8 GB and 15 GB depending upon the configuration. On Windows 10, version 1903 and later you can proactively use the "reserved storage" feature (for wipe and loads, rebuilds, and new builds) to avoid running out of disk space. If you find a group of devices that don't have enough disk space, you can often resolve the problem by cleaning up log files and asking users to clean up data if necessary. A good place to start is to delete the following files:

  - C:\Windows\temp
  - C:\Windows\cbstemp (though this file might be necessary to investigate update failures)
  - C:\Windows\WindowsUpdate.log (though this file might be necessary to investigate update failures)
  - C:\Windows.Old (these files should automatically clean up after 10 days or might ask the device user for permission to clean up sooner when constrained for disk space)

You can also create and run scripts to perform additional cleanup actions on devices, with administrative rights, or use Group Policy settings.

- Clean up the Windows Store Cache by running C:\Windows\sytem32\wsreset.exe.

- Optimize the WinSxS folder on the client machine by using **Dism.exe /online /Cleanup-Image /StartComponentCleanup**.

- Compact the operating system by running **Compact.exe /CompactOS:always**.

- Remove Windows Features on Demand that the user doesn't need. See [Features on Demand](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities) for more guidance.

- Move Windows Known Folders to OneDrive. See [Use Group Policy to control OneDrive sync settings](/onedrive/use-group-policy) for more information.

- Clean up the Software Distribution folder. Try deploying these commands as a batch file to run on devices to reset the download state of Windows Updates:

  ```console
  net stop wuauserv
  net stop cryptSvc
  net stop bits
  net stop msiserver
  ren C:\Windows\SoftwareDistribution C:\Windows\SoftwareDistribution.old
  net start wuauserv
  net start cryptSvc
  net start bits
  net start msiserver
  ```

- **Application and driver updates:** Out-of-date app or driver software can prevent devices from updating successfully. Desktop Analytics will help you identify drivers and applications that need attention. You can also check for known issues in order to take any appropriate action. Deploy any updates from the vendor(s) for any problematic application or driver versions to resolve issues.

- **Corruption:** In rare circumstances, a device that has repeated installation errors might be corrupted in a way that prevents the system from applying a new update. You might have to repair the Component-Based Store from another source. You can fix the problem with the [System File Checker](https://support.microsoft.com/help/929833/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system).


## Prepare capability

In the plan phase, you determined the specific infrastructure and configuration changes that needed to be implemented to add new capabilities to the environment. Now you can move on to implementing those changes defined in the plan phase. You'll need to complete these higher-level tasks to gain those new capabilities:

- Enable capabilities across the environment by implementing the changes. For example, implement updates to relevant ADMX templates in Active Directory. New Windows versions will come with new policies that you use to update ADMX templates. 

- Validate new changes to understand how they affect the wider environment.

- Remediate any potential problems that have been identified through validation. 

## Prepare users

Users often feel like they are forced into updating their devices randomly. They often don't fully understand why an update is needed, and they don't know when updates would be applied to their devices ahead of time. It's best to ensure that upcoming updates are communicated clearly and with adequate warning.

You can employ a variety of measures to achieve this goal, for example:

- Send overview email about the update and how it will be deployed to the entire organization.
- Send personalized emails to users about the update with specific details.
- Set an opt-out deadline for employees that need to remain on the current version for a bit longer, due to a business need.
- Provide the ability to voluntarily update at users’ convenience.
- Inform users of a mandatory installation date when the update will be installed on all devices.