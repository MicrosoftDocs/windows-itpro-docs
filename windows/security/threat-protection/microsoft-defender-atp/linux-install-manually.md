---
title: Installing Microsoft Defender ATP for Linux manually
ms.reviewer: 
description: Describes how to install Microsoft Defender ATP for Linux manually, from the command line.
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

Follow the steps given in [Configure Microsoft's Linux Software Repository](https://docs.microsoft.com/windows-server/administration/linux-package-repository-for-microsoft-software) to setup the repository.

## Download onboarding package

Download the onboarding package from Microsoft Defender Security Center:

1. In Microsoft Defender Security Center, go to **Settings > Machine Management > Onboarding**.
2. In the first drop down, set operating system to **Windows 10** and in second drop down, Deployment method to **Mobile Device Management / Microsoft Intune**.
3. Click on **Download package**. Save it as WindowsDefenderATPOnboardingPackage.zip.

    ![Windows Defender Security Center screenshot](images/atp-portal-onboarding-win-intune.png)

4. From a command prompt, verify that you have the file.
    Extract the contents of the .zip file and create mdatp_onboard.json file as follows:
  
    ```bash
    $ ls -l
    total 8
    -rw-r--r-- 1 test  staff  6287 Oct 21 11:22 WindowsDefenderATPOnboardingPackage.zip
    $ unzip -p WindowsDefenderATPOnboardingPackage.zip | python -c 'import sys,json;data={"onboardingInfo":"\n".join(sys.stdin.readlines())};print(json.dumps(data));' >mdatp_onboard.json
    ```

## Application installation

To complete this process, you must have admin privileges on the machine.

1. Install Microsoft Defender ATP for Linux

    - ### Enterprise Linux (RHEL and variants)

    ```bash
    sudo yum -y install mdatp
    ```

    - ### Ubuntu and Debian systems

    ```bash
    sudo apt-get -y install mdatp
    ```


## Client configuration

1. Copy WindowsDefenderATPOnboarding.py to the machine where you deploy Microsoft Defender ATP for Linux.

    The client machine is not associated with orgId. Note that the *orgId* attribute is blank.

    ```bash
    $ mdatp --health orgId
    ```

2. Copy the mdatp_onboard.json created in earlier step to /etc/opt/microsoft/mdatp_onboard.json

    ```bash
    $ sudo cp mdatp.json /etc/opt/microsoft/mdatp/mdatp_onboard.json
    ```

3. Verify that the machine is now associated with your organization and reports a valid *orgId*:

    ```bash
    $ mdatp --health orgId
    E6875323-A6C0-4C60-87AD-114BBE7439B8
    ```

4. After installation, you can see the status by running the following command:

    ```bash
    $ mdatp --health healthy
    1
    ```

5. Run a detection test
To verify that the machine is properly onboarded and reporting to the service, take the following steps on the newly onboarded machine:

    - Ensure Real-time protection setting is ON ```mdatp --health realTimeProtectionEnabled```
    - Open a Terminal window
Copy and run the command below:

    ``` bash
    curl -o ~/Downloads/eicar.com.txt http://www.eicar.org/download/eicar.com.txt
    ```

## Logging installation issues

See [Logging installation issues](linux-resources.md#logging-installation-issues) for more information on how to find the automatically generated log that is created by the installer when an error occurs.

## Uninstallation

See [Uninstalling](linux-resources.md#uninstalling) for details on how to remove Microsoft Defender ATP for Linux from client devices.
