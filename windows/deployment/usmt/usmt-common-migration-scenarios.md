---
title: Common Migration Scenarios
description: See how the User State Migration Tool (USMT) is used when planning hardware and/or operating system upgrades.
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 01/09/2024
ms.topic: conceptual
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Common Migration Scenarios

The User State Migration Tool (USMT) can be used when hardware and/or operating system upgrades are planned for a large number of computers. USMT manages the migration of an end-user's digital identity by capturing from a source computer the following user's items:

- Operating-system settings.
- Application settings.
- Personal files.

Once these items are capture, they're reinstalled on a destination computer after the upgrade completes.

One common scenario is when the operating system is upgraded on existing hardware without the hardware being replaced. This scenario is referred to as **PC-refresh**. A second common scenario is known as **PC replacement**, where one piece of hardware is being replaced, typically by newer hardware and a newer operating system.

## PC-refresh

The following diagram shows a PC-refresh migration, also known as a computer refresh migration. First, the administrator migrates the user state from a source computer to an intermediate store. After the administrator installs the operating system, they migrate the user state back to the source computer.

![usmt pc refresh scenario.](images/dep-win8-l-usmt-pcrefresh.jpg)

### Scenario One: PC-refresh offline using Windows PE and a hard-link migration store

An organization receives funds to update the operating system on all of its computers in the accounting department to the latest supported version of Windows. Each employee keeps the same computer, but the operating system on each computer will be updated. In this scenario, the update is being handled offline, without a network connection. An administrator uses Windows Preinstallation Environment (WinPE) and a hard-link migration store to save each user state to their respective computer.

1. On each computer, the administrator boots the machine into WinPE and runs the **ScanState** command-line tool, specifying the `/hardlink /nocompress` command-line options. **ScanState** saves the user state to a hard-link migration store on each computer, improving performance by minimizing network traffic and minimizing migration failures on computers with limited space available on the hard drive.

1. On each computer, the administrator installs the organization's standard operating environment (SOE) which includes the latest supported version of Windows and other organization applications.

1. The administrator runs the **LoadState** command-line tool on each computer. **LoadState** restores each user state back to each computer.

### Scenario Two: PC-refresh using a compressed migration store

An organization receives funds to update the operating system on all of its computers to the latest supported version of Windows. Each employee keeps the same computer, but the operating system on each computer will be updated. In this scenario, an administrator uses a compressed migration store to save the user states to a server.

1. The administrator runs the **ScanState** command-line tool on each computer. **ScanState** saves each user state to a server.

1. On each computer, the administrator installs the organization's standard SOE that includes the latest supported version of Windows and other organization applications.

1. The administrator runs the **LoadState** command-line tool on each source computer, and **LoadState** restores each user state back to the computer.

### Scenario Three: PC-refresh using a hard-link migration store

An organization receives funds to update the operating system on all of its computers to the latest supported version of Windows. Each employee keeps the same computer, but the operating system on each computer will be updated. In this scenario, an administrator uses a hard-link migration store to save each user state to their respective computer.

1. The administrator runs the **ScanState** command-line tool on each computer, specifying the `/hardlink /nocompress` command-line options. **ScanState** saves the user state to a hard-link migration store on each computer, improving performance by minimizing network traffic and minimizing migration failures on computers with limited space available on the hard drive.

1. On each computer, the administrator installs the organization's SOE that includes the latest supported version of Windows and other organization applications.

1. The administrator runs the **LoadState** command-line tool on each computer. **LoadState** restores each user state back on each computer.

### Scenario Four: PC-refresh using Windows.old folder and a hard-link migration store

An organization decides to update the operating system on all of its computers to the latest supported version of Windows. Each employee keeps the same computer, but the operating system on each computer will be updated. In this scenario, an administrator uses **Windows.old** and a hard-link migration store to save each user state to their respective computer.

1. The administrator clean installs the latest supported version of Windows on each computer. During the install, they make sure that the **Windows.old** directory is created by taking the following actions:

    - Performing the install without formatting or repartitioning the disk.
    - Selecting a partition that contains the previous version of Windows.

1. On each computer, the administrator installs the organization's SOE that includes organization applications.

1. The administrator runs the **ScanState** and **LoadState** command-line tools successively on each computer while specifying the `/hardlink /nocompress` command-line options.

## PC-replacement

The following diagram shows a PC-replacement migration. First, the administrator migrates the user state from the source computer to an intermediate store. After the administrator installs the operating system on the destination computer, they migrate the user state from the store to the destination computer.

![usmt pc replace scenario.](images/dep-win8-l-usmt-pcreplace.jpg)

### Scenario One: Offline migration using Windows PE and an external migration store

An organization is allocating 20 new computers to users in the accounting department. The users each have a source computer with their files and settings. In this scenario, migration is being handled offline, without a network connection.

1. On each source computer, an administrator boots the machine into WinPE and runs **ScanState** to collect the user state to either a server or an external hard disk.

1. On each new computer, the administrator installs the organization's SOE that includes the latest supported version of Windows and other organization applications.

1. On each of the new computers, the administrator runs the **LoadState** tool, restoring each user state from the migration store to one of the new computers.

### Scenario Two: Manual network migration

An organization receives 50 new laptops for their managers and needs to reallocate 50 older laptops to new employees. In this scenario, an administrator runs the **ScanState** tool from the cmd prompt on each computer to collect the user states and save them to a server in a compressed migration store.

1. The administrator runs the **ScanState** tool on each of the manager's old laptops, and saves each user state to a server.

1. On the new laptops, the administrator installs the organization's SOE, which includes the latest supported version of Windows and other organization applications.

1. The administrator runs the **LoadState** tool on the new laptops to migrate the managers' user states to the appropriate computer. The new laptops are now ready for the managers to use.

1. On the old computers, the administrator installs the organization's SOE, which includes the latest supported version of Windows, Microsoft Office, and other organization applications. The old computers are now ready for the new employees to use.

### Scenario Three: Managed network migration

An organization is allocating 20 new computers to users in the accounting department. The users each have a source computer that contains their files and settings. An administrator uses a management technology such as a sign-in script or a batch file to run **ScanState** on each source computer to collect the user states and save them to a server in a compressed migration store.

1. On each source computer, the administrator runs the **ScanState** tool using Microsoft Configuration Manager, Microsoft Deployment Toolkit (MDT), a sign-in script, a batch file, or a non-Microsoft management technology. **ScanState** collects the user state from each source computer and then saves it to a server.

1. On each new computer, the administrator installs the organization's SOE, which includes the latest supported version of Windows and other organization applications.

1. On each of the new computers, the administrator runs the **LoadState** tool using Microsoft Configuration Manager, a sign-in script, a batch file, or a non-Microsoft management technology. **LoadState** migrates each user state from the migration store to one of the new computers.

## Related articles

- [Plan the migration](usmt-plan-your-migration.md).
- [Choose a migration store type](usmt-choose-migration-store-type.md).
- [Offline migration reference](offline-migration-reference.md).
