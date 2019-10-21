---
title: Installing Microsoft Defender ATP for Linux with Puppet
ms.reviewer: 
description: Describes how to install Microsoft Defender ATP for Linux, using Puppet.
keywords: microsoft, defender, atp, linux, installation, deploy, uninstallation, puppet, ansible, linux, redhat, ubuntu, debian, sles, suse, centos
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Puppet based deployment

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Linux](microsoft-defender-atp-linux.md)

This topic describes how to deploy Microsoft Defender ATP for Linux through Puppet. A successful deployment requires the completion of all of the following steps:
- [Download installation and onboarding packages](#download-installation-and-onboarding-packages)
- [Create Puppet policies](#create-jamf-policies)
- [Client device setup](#client-device-setup)
- [Deployment](#deployment)
- [Check onboarding status](#check-onboarding-status)

## Prerequisites and system requirements

Before you get started, please see [the main Microsoft Defender ATP for Linux page](microsoft-defender-atp-linux.md) for a description of prerequisites and system requirements for the current software version.

In addition, for Puppet deployment, you need to be familiar with Puppet administration tasks, have a Puppet configured, and know how to deploy packages. Puppet has many ways to complete the same task. These instructions assume availability of supported puppet modules such as *apt*, *lsb-release* to help deploy the package. Your organization might use a different workflow.

## Download onboarding package

Download the onboarding package from Windows Defender Security Center:

1. In Windows Defender Security Center, go to **Settings > Machine Management > Onboarding**.
2. In Section 1 of the page, set operating system to **Linux, macOS, iOS, and Android** and Deployment method to **Local script**.
3. In Section 2 of the page, select **Download onboarding package**. Save it as WindowsDefenderATPOnboardingPackage.zip to the same directory.

    ![Windows Defender Security Center screenshot](images/ATP_Portal_Onboarding_page.png)

4. From a command prompt, verify that you have the file.
    Extract the contents of the .zip file:
  
    ```bash
    $ ls -l
    total 8
    -rw-r--r-- 1 test  staff  6287 Oct 21 11:22 WindowsDefenderATPOnboardingPackage.zip
    $ unzip WindowsDefenderATPOnboardingPackage.zip
    Archive:  WindowsDefenderATPOnboardingPackage.zip
    inflating: WindowsDefenderATPOnboarding.py
    ```

## Create Puppet manifests

You need to create a puppet manifest for deploying Microsoft Defender ATP for Linux to devices managed by puppet server.

## Deployment

Enrolled agent devices periodically poll the Puppet Server, and install new configuration profiles and policies as soon as they are detected.

## Monitoring puppet deployment


You can also check the onboarding status:

```bash
$ mdatp --health
...
licensed                                : true
orgId                                   : "4751b7d4-ea75-4e8f-a1f5-6d640c65bc45"
...
```

- **licensed**: This confirms that the device has an ATP license.

- **orgid**: Your Microsoft Defender ATP org id; it will be the same for your organization.

## Check onboarding status

You can check that devices have been correctly onboarded by creating a script. For example, the following script checks enrolled devices for onboarding status:

```bash
$ mdatp --health healthy
```

The above command prints "1" if the product is onboarded and functioning as expected.

If the product is not healthy, the exit code (which can be checked through `echo $?`) indicates the problem:
- 1 if the device is not yet onboarded
- 3 if the connection to the daemon cannot be established—for example, if the daemon is not running

## Logging installation issues

See [Logging installation issues](microsoft-defender-atp-linux-resources.md#logging-installation-issues) for more information on how to find the automatically generated log that is created by the installer when an error occurs.

## Uninstallation

