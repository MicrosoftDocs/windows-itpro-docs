---
title: Installing Microsoft Defender ATP for Linux manually
ms.reviewer: 
description: Describes how to install Microsoft Defender ATP for Linux manually, from the command line.
keywords: microsoft, defender, atp, linux, installation, deploy, uninstallation, puppet, ansible, linux, edhat, ubuntu, debian, sles, suse, centos
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

# Manual deployment

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Linux](microsoft-defender-atp-linux.md)

This topic describes how to deploy Microsoft Defender ATP for Linux manually. A successful deployment requires the completion of all of the following steps:

- [Configure Microsoft's Linux Software Repository](#configure-microsoft's-linux-software-repository)
- [Download onboarding packages](#download-onboarding-package)
- [Application installation](#application-installation)
- [Client configuration](#client-configuration)

## Prerequisites and system requirements

Before you get started, see [the main Microsoft Defender ATP for Linux page](microsoft-defender-atp-linux.md) for a description of prerequisites and system requirements for the current software version.

## Configure Microsoft's Linux Software Repository

Follow the steps given in [Configure Microsoft's Linux Software Repository](https://docs.microsoft.com/en-us/windows-server/administration/linux-package-repository-for-microsoft-software) to setup the repository.

> [!NOTE]
> * **TODO:** Use a forward link for above instead of URL  
> * I am assuming that ring 0 customers will download the onboarding package from ATP portal

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

## Application installation

To complete this process, you must have admin privileges on the machine.

1. Install Microsoft Defender ATP for Linux

    - ### Enterprise Linux (RHEL and variants)

    ```bash
    sudo yum install mdatp
    ```

    - ### Ubuntu and Debian systems

    ```bash
    sudo apt-get install mdatp
    ```


## Client configuration

1. Copy WindowsDefenderATPOnboarding.py to the machine where you deploy Microsoft Defender ATP for Linux.

    The client machine is not associated with orgId. Note that the *orgId* attribute is blank.

    ```bash
    $ mdatp --health orgId
    ```

2. Run the Python script to install the configuration file:

    ```bash
    $ /usr/bin/python WindowsDefenderATPOnboarding.py
    Generating /etc/opt/microsoft/mdatp/mdatp_onboard.json ... (You may be required to enter sudo password)
    ```
> [!NOTE]
> **TODO:** verify the path associated with above command.

3. Verify that the machine is now associated with your organization and reports a valid *orgId*:

    ```bash
    $ mdatp --health orgId
    E6875323-A6C0-4C60-87AD-114BBE7439B8
    ```

After installation, you can see the status by running the following command:

```bash
$ mdatp --health healthy
1
```

> [!NOTE]
> **TODO:** Should we add eicar detection step?

## Logging installation issues

See [Logging installation issues](microsoft-defender-atp-linux-resources.md#logging-installation-issues) for more information on how to find the automatically generated log that is created by the installer when an error occurs.

## Uninstallation

See [Uninstalling](microsoft-defender-atp-linux-resources.md#uninstalling) for details on how to remove Microsoft Defender ATP for Linux from client devices.
