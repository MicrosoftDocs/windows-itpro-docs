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

- [Download installation and onboarding packages](#download-onboarding-package)
- [Create Puppet manifest](#create-puppet-manifest)
- [Deployment](#deployment)
- [Check onboarding status](#check-onboarding-status)

## Prerequisites and system requirements

Before you get started, please see [the main Microsoft Defender ATP for Linux page](microsoft-defender-atp-linux.md) for a description of prerequisites and system requirements for the current software version.

In addition, for Puppet deployment, you need to be familiar with Puppet administration tasks, have a Puppet configured, and know how to deploy packages. Puppet has many ways to complete the same task. These instructions assume availability of supported puppet modules such as *apt* to help deploy the package. Your organization might use a different workflow. Please refer to [Puppet documentation](https://puppet.com/docs) for details.

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

## Create Puppet manifest

You need to create a puppet manifest for deploying Microsoft Defender ATP for Linux to devices managed by puppet server. This example makes use of *apt* module available from puppetlabs and assumes that apt module has been installed on your puppet server.

Create a folders *install_mdatp/files* and *install_mdatp/manifests* under the modules folder of your puppet installation. This typically is located in */etc/puppetlabs/code/environments/production/modules* on your puppet server. Copy the mdatp_onboard.json file created in above step to *install_mdatp/files* folder. Create *init.pp* file which will contain the deployment instructions.

```bash
$ pwd
/etc/puppetlabs/code/environments/production/modules

$ tree install_mdatp
install_mdatp
├── files
│   └── mdatp_onboard.json
└── manifests
    └── init.pp
```

Contents of *install_mdatp/manifests/init.pp*

```puppet
class install_mdatp {

    if ($osfamily == 'Debian') {
        apt::source { 'microsoftpackages' :
            location => 'https://packages.microsoft.com/ubuntu/18.04/prod', # change the version and distro based on your OS 
            release  => 'stable',
            repos    => 'main',
            key      => {
                'id'     => 'BC528686B50D79E339D3721CEB3E94ADBE1229CF',
                'server' => 'https://packages.microsoft.com/keys/microsoft.asc',
            },
        }
    }
    else {
        yumrepo { 'microsoftpackages' :
            baseurl  => 'https://packages.microsoft.com/rhel/7/prod', # change the version and distro based on your OS 
            enabled  => 1,
            gpgcheck => 1,
            gpgkey   => 'https://packages.microsoft.com/keys/microsoft.asc'
        }
    }

    package { 'mdatp':
        ensure => 'installed',
    }

    file { ['/etc', '/etc/opt', '/etc/opt/microsoft', '/etc/opt/microsoft/mdatp']:
        ensure => directory,
    }
    file { '/etc/opt/microsoft/mdatp/mdatp_onboard.json':
        mode => "0644",
        source => 'puppet:///modules/install_mdatp/mdatp_onboard.json',
    }
}
```

## Deployment

Include the above manifest in your site.pp file.

```bash
$ cat /etc/puppetlabs/code/environments/production/manifests/site.pp
node "default" {
    include install_mdatp
}
```

Enrolled agent devices periodically poll the Puppet Server, and install new configuration profiles and policies as soon as they are detected.

## Monitoring puppet deployment

On the agent machine, you can also check the onboarding status by running:

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

See [Logging installation issues](linux-resources.md#logging-installation-issues) for more information on how to find the automatically generated log that is created by the installer when an error occurs.

## Uninstallation

Create a module *remove_mdatp* similar to *install_mdatp* with following contents in *init.pp* file

```bash
class remove_mdatp {
    package { 'mdatp':
        ensure => 'purged',
    }
}
```
