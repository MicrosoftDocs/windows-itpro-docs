---
title: Deploy Microsoft Defender ATP for Linux with Puppet
ms.reviewer: 
description: Describes how to deploy Microsoft Defender ATP for Linux using Puppet.
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

# Deploy Microsoft Defender ATP for Linux with Puppet

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Linux](microsoft-defender-atp-linux.md)

This topic describes how to deploy Microsoft Defender ATP for Linux using Puppet. A successful deployment requires the completion of all of the following tasks:

- [Download the onboarding package](#download-the-onboarding-package)
- [Create Puppet manifest](#create-a-puppet-manifest)
- [Deployment](#deployment)
- [Check onboarding status](#check-onboarding-status)

## Prerequisites and system requirements

Before you get started, please see [the main Microsoft Defender ATP for Linux page](microsoft-defender-atp-linux.md) for a description of prerequisites and system requirements for the current software version.

In addition, for Puppet deployment, you need to be familiar with Puppet administration tasks, have Puppet configured, and know how to deploy packages. Puppet has many ways to complete the same task. These instructions assume availability of supported Puppet modules, such as *apt* to help deploy the package. Your organization might use a different workflow. Please refer to the [Puppet documentation](https://puppet.com/docs) for details.

## Download the onboarding package

Download the onboarding package from Microsoft Defender Security Center:

1. In Microsoft Defender Security Center, go to **Settings > Machine Management > Onboarding**.
2. In the first drop-down menu, select **Linux Server** as the operating system. In the second drop-down menu, select **Your preferred Linux configuration management tool** as the deployment method.
3. Select **Download onboarding package**. Save the file as WindowsDefenderATPOnboardingPackage.zip.

    ![Microsoft Defender Security Center screenshot](images/atp-portal-onboarding-linux-2.png)

4. From a command prompt, verify that you have the file. Extract the contents of the archive:
  
    ```bash
    $ ls -l
    total 8
    -rw-r--r-- 1 test  staff  4984 Feb 18 11:22 WindowsDefenderATPOnboardingPackage.zip
    $ unzip WindowsDefenderATPOnboardingPackage.zip
    Archive:  WindowsDefenderATPOnboardingPackage.zip
    inflating: mdatp_onboard.json
    ```

## Create a Puppet manifest

You need to create a Puppet manifest for deploying Microsoft Defender ATP for Linux to devices managed by a Puppet server. This example makes use of the *apt* module available from puppetlabs, and assumes that the apt module has been installed on your Puppet server.

Create the folders *install_mdatp/files* and *install_mdatp/manifests* under the modules folder of your Puppet installation. This is typically located in */etc/puppetlabs/code/environments/production/modules* on your Puppet server. Copy the mdatp_onboard.json file created above to the *install_mdatp/files* folder. Create an *init.pp* file that contains the deployment instructions:

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

### Contents of `install_mdatp/manifests/init.pp`

Microsoft Defender ATP for Linux can be deployed from one of the following channels (denoted below as *[channel]*): *insider-fast*, *insider-slow*, or *prod*. Each of these channels corresponds to a Linux software repository.

The choice of the channel determines the type and frequency of updates that are offered to your device. Devices in *insider-fast* and *insider-slow* can try out new features before devices in *prod*.

In order to preview new features and provide early feedback, it is recommended that you configure some devices in your enterprise to use either *insider-fast* or *insider-slow*.

Note your distribution and version and identify the closest entry for it under `https://packages.microsoft.com/config/`.

In the below commands, replace *[distro]* and *[version]* with the information you've identified:

> [!NOTE]
> In case of Oracle EL and CentOS 8, replace *[distro]* with “rhel”.

```puppet
class install_mdatp {

    if ($osfamily == 'Debian') {
        apt::source { 'microsoftpackages' :
            location => 'https://packages.microsoft.com/[distro]/[version]/prod', # change the version and distro based on your OS 
            release  => '[channel]',
            repos    => 'main',
            key      => {
                'id'     => 'BC528686B50D79E339D3721CEB3E94ADBE1229CF',
                'server' => 'https://packages.microsoft.com/keys/microsoft.asc',
            },
        }
    }
    else {
        yumrepo { 'microsoftpackages' :
            baseurl  => 'https://packages.microsoft.com/[distro]/[version]/[channel]', # change the version and distro based on your OS 
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

Include the above manifest in your site.pp file:

```bash
$ cat /etc/puppetlabs/code/environments/production/manifests/site.pp
node "default" {
    include install_mdatp
}
```

Enrolled agent devices periodically poll the Puppet Server, and install new configuration profiles and policies as soon as they are detected.

## Monitor Puppet deployment

On the agent machine, you can also check the onboarding status by running:

```bash
$ mdatp --health
...
licensed                                : true
orgId                                   : "[your organization identifier]"
...
```

- **licensed**: This confirms that the device is tied to your organization.

- **orgId**: This is your Microsoft Defender ATP organization identifier.

## Check onboarding status

You can check that devices have been correctly onboarded by creating a script. For example, the following script checks enrolled devices for onboarding status:

```bash
$ mdatp --health healthy
```

The above command prints `1` if the product is onboarded and functioning as expected.

> [!IMPORTANT]
> When the product starts for the first time, it downloads the latest antimalware definitions. Depending on your Internet connection, this can take up to a few minutes. During this time the above command returns a value of `0`.

If the product is not healthy, the exit code (which can be checked through `echo $?`) indicates the problem:

- 1 if the device is not yet onboarded.
- 3 if the connection to the daemon cannot be established.

## Log installation issues

See [Log installation issues](linux-resources.md#log-installation-issues) for more information on how to find the automatically generated log that is created by the installer when an error occurs.

## Uninstallation

Create a module *remove_mdatp* similar to *install_mdatp* with the following contents in *init.pp* file:

```bash
class remove_mdatp {
    package { 'mdatp':
        ensure => 'purged',
    }
}
```
