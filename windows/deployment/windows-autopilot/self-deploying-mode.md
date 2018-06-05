---
title: Windows Autopilot Self-Deploying mode (Preview) 
description: Gives an overview of Autopilot Plug and Forget and how to use it.
keywords: Autopilot Plug and Forget, Windows 10
ms.prod: w10
ms.technology: Windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype:
ms.localizationpriority: high
author: coreyp-at-msft
ms.author: coreyp
ms.date: 06/01/2018
---

# Windows Autopilot Self-Deploying mode (Preview)

**Applies to: Windows 10 build 17672**

Windows Autopilot self-deploying mode offers truly zero touch provisioning. With this mode, all you need to do is power on a device, plug it into Ethernet, and watch Windows Autopilot do its magic. When a user powers on a device configured with Windows Autopilot self-deploying mode, the only screen they’ll see is a branded page welcoming them to their device and, if they have it configured in Microsoft Intune, the enrollment status page letting them know the details of the provisioning process. 

![The user experience with Windows Autopilot self-deploying mode](images/self-deploy-welcome.png)
 
Figure 2. The user experience with Windows Autopilot self-deploying mode 
 
While today there is a “Next” button that must be clicked to continue the deployment process, and an Activities opt-in page in OOBE, both of these will be removed in future Insider Preview builds to enable a completely automated deployment process – no user authentication or user interaction will be required. 
 
Self-deploying mode can register the device into an organization’s Azure Active Directory (Azure AD) tenant, enroll the device in the organization’s mobile device management (MDM) provider (leveraging Azure AD for automatic MDM enrollment), and ensure that all policies, applications, certificates, and networking profiles are provisioned on the device before the user ever logs on (levering the enrollment status page to prevent access to the desktop until the device is fully provisioned). 
 
With Windows Autopilot self-deploying mode, you can: 
 
Configure language, region, and keyboard settings for the device. 
Skip the “Who owns this device?” page. 
Auto-accept the Windows EULA. 
Skip the Privacy page. 
Skip OEM-added pages. 
Configure user administrator rights. 
 
Because self-deploying mode uses a device’s TPM 2.0 hardware to authenticate the device into an organization’s Azure AD tenant, devices without TPM 2.0 cannot be used with this mode. Self-deploying mode also does not support Hybrid Azure AD Join or Active Directory Join.  
 
Windows Autopilot self-deploying mode enables you to effortlessly deploy Windows 10 as a kiosk, digital signage device, or a shared device.  When setting up a kiosk, you can leverage the new Kiosk Browser, an app built on Microsoft Edge that can be used to create a tailored, MDM-managed browsing experience. When combined with MDM policies to create a local account and configure it to automatically log on, the complete configuration of the device can be automated. Find out more about these options by reading simplifying kiosk management for IT with Windows 10. 
 
 
Windows Autopilot self-deploying mode is available on Windows 10 build 17672 or higher. When configuring an Autopilot profile in Microsoft Intune, you’ll see a new drop-down menu that asks for the deployment mode. In that menu, select Self-deploying (preview) and apply that profile to the devices you’d like to validate. 