---
title: Troubleshooting MED-V
description: Troubleshooting MED-V
author: dansimp
ms.assetid: f43dae36-6485-4e06-9c66-0a646e27079d
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Troubleshooting MED-V


This section provides information to help troubleshoot general issues with Microsoft Enterprise Desktop Virtualization (MED-V).

## Changing the host resolution and then maximizing the MED-V workspace causes the desktop to appear black


When working in full desktop mode, if you change the host resolution and then maximize the MED-V workspace window, the desktop appears black and the MED-V workspace might not respond.

### Solution

Stop and then start the MED-V workspace.

## Starting a MED-V workspace with a network adapter disabled and then later enabling the adapter does not restore network connectivity


If you configure a MED-V workspace in bridge mode and then start the MED-V workspace while a network adapter is disabled, if the adapter is later enabled, the network connectivity through that adapter is not restored.

### Solution

Stop and then start the MED-V workspace.

## An image can be used by only one Windows user per computer


A MED-V workspace image can be used only by the Windows user who downloaded or imported the image. This user is the only user aside from administrators who have permissions to the folder where the downloaded images are located.

### Solution

Manually change the access control list (ACL) on the image store.

## When installing MED-V by using Configuration Manager with users rights enabled, uninstall fails


If MED-V is installed by using Microsoft System Center Configuration Manager and the run mode of the package is set to users rights, uninstall fails with an error message that says that only administrative users can uninstall MED-V.

### Solution

When creating a Configuration Manager package for MED-V, set the run mode to administrative rights.

## When installing MED-V by using a corporate deployment system, where the installation is configured to run the client following installation, you cannot run the client


If MED-V is installed by using a corporate deployment system and the installation package is configured to run MED-V client following the installation, after the client is running under the system account, you cannot see that the client is running (except in the notification area), and you cannot interact with it.

### Solution

When installing MED-V by using a corporate deployment system, use the *START\_MEDV=0* .msi parameter.

## MED-V test image fails to start


If a MED-V test image fails to start, it will never recover and all future startups will fail with a “GINA fail to load” error message.

### Solution

Delete the existing test image and then re-create it.

## After attempting to join a domain with the wrong credentials, the image never succeeds in joining the domain


If there is a configuration error in the join domain building block, which is part of the virtual machine first-time setup script, it causes the MED-V workspace to fail when attempting to join a domain. After the configuration error is repaired, the image included in the MED-V workspace cannot join the domain.

### Solution

If the image was deployed, redistribute the image. If the image was a test image, re-create the image.

## MED-V does not support multiple monitors


MED-V does not support displaying published applications across multiple monitors. Published applications and other client windows may be displayed in the wrong screen, and sometimes after a screen is disconnected, MED-V attempts to send the screen to the monitor so that the connected monitor appears blank.

### Solution

Disconnect the additional screen, and restart the client.

## MED-V workspace might fail to start if the host crashes during MED-V workspace startup


If the host crashes during the MED-V workspace startup process and an error message appears that says “Root element is missing,” the MED-V workspace might add data to an empty virtual machine configuration (VMC) file, which will cause the startup process to fail.

### Solution

Replace the empty VMC file with a VMC file from the base image.

## The keyboard does not respond in published application windows


In a MED-V workspace, if you press the Windows logo key when a published application is in focus, the keyboard no longer responds in published application windows.

### Solution

Press the Windows logo key while a published application is in focus.

## A domain MED-V workspace does not update domain credentials


When using a persistent MED-V workspace in a domain environment, if you change your domain password, the MED-V client does not update the MED-V workspace domain credentials. When a published application attempts to access a network resource, you will receive an error message notifying you that your credentials expired.

### Solution

Restart the MED-V workspace operating system.

## Maximized published application windows cover the host taskbar


If you maximize a published application window to full screen, it might cover the host taskbar.

### Solution

Do one of the following:

Minimize the published application window to gain access to the notification area, and restart the MED-V workspace.

Minimize the published application window, and then restore the window to its maximized state.

## Adding users or groups in the MED-V Server Configuration Manager does not work


When adding users or groups in the **Select Users or Groups** dialog box, the selected users or groups are not added to the access control list in the MED-V Server Configuration Manager.

### Solution

Add users or groups using the **Enter User or Group names** dialog box. For detailed information, see [How to Install and Configure the MED-V Server Component](how-to-install-and-configure-the-med-v-server-component.md#bkmk-configuringpermissions).

## MED-V does not work on computers with Windows Virtual PC for Windows 7 installed


MED-V requires Windows Virtual PC 2007. Windows Virtual PC for Windows 7 and Virtual PC 2007 SP1 cannot be installed on the same computer.

### Solution

Uninstall Virtual PC for Windows 7 before installing Virtual PC 2007 SP1 and MED-V.

## <a href="" id="med-v-does-not-support-virtual-pc-and-windows-xp-mode-images-"></a>MED-V does not support Virtual PC and Windows XP Mode images


MED-V 1.0 SP1 does not support images created by Windows Virtual PC for Windows 7. If a Virtual PC for Windows 7 image is used, the client will fail during startup.

### Solution

Create MED-V images by using Virtual PC 2007 SP1.

## Windows firewall blocks Virtual PC 2007 SP1 network activity


By default, Windows firewall blocks Virtual PC 2007 SP1 network activity, and when Virtual PC 2007 SP1 initiates on the client computer, there is a firewall message that blocks its startup sequence and all network access.

### Solution

Update the firewall exception by using Group Policy before MED-V is used by the end user.

## When upgrading the client an error message appears


When upgrading the client from MED-V 1.0 to MED-V 1.0 SP1, a message may appear notifying you that no MED-V workspace is defined.

### Solution

Close the client and restart it.

## Related topics


[MED-V 1.0 Release Notes](med-v-10-release-notesmedv-10.md)

[MED-V 1.0 SP1 and SP2 Release Notes](med-v-10-sp1-and-sp2-release-notesmedv-10-sp1.md)

 

 





