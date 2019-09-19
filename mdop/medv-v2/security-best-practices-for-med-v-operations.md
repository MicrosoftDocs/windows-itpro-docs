---
title: Security Best Practices for MED-V Operations
description: Security Best Practices for MED-V Operations
author: dansimp
ms.assetid: 231e2b9a-8b49-42fe-93b5-2ef12fe17bac
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Security Best Practices for MED-V Operations


As an authorized administrator, you are responsible to protect the information of the users and maintain security of your organization during and after the deployment of MED-V workspaces. In particular, consider the following issues.

**Customizing Internet Explorer in the MED-V workspace**. Earlier versions of the Windows operating system and of Internet Explorer are not as secure as current versions. Therefore, Internet Explorer in the MED-V workspace is configured to prevent browsing and other activities that can pose security risks. In addition, the Internet security zone setting for Internet Explorer in the MED-V workspace is set to the highest level. By default, both of these configurations are set in the MED-V Workspace Packager when you create your MED-V workspace package.

By using Internet Explorer Administration Kit (IEAK) or by changing the defaults in the MED-V Workspace Packager, you can customize Internet Explorer in the MED-V workspace. However, realize that if you customize Internet Explorer in the MED-V workspace in such a way as to make it less secure, you can expose your organization to those security risks that are present in older versions of Internet Explorer.

From a security perspective, best practices for managing Internet Explorer in the MED-V workspace are as follows:

-   When creating your MED-V workspace package, leave the defaults set so that Internet Explorer in the MED-V workspace is configured to prevent browsing and other activities that can pose security risks.

-   When creating your MED-V workspace package, leave the defaults set so that the security setting for the Internet security zone remains at the highest level.

-   Configure your enterprise proxy or Internet Explorer Content Advisor to block domains that are outside your company’s intranet.

**Configuring a MED-V workspace for all users on a shared computer.** When configuring a MED-V workspace so that it can be accessed by all users on a shared computer, realize that the guest virtual machine (VHD) is put in a location that gives Read and Write access to all users on that system.

**Configuring a proxy account for domain joining.** When configuring a proxy account for joining virtual machines to the domain, you must know that it is possible for an end user to obtain the proxy account credentials. Thus, necessary precautions must be taken, such as limiting account user rights, to prevent an end user from using the credentials for causing harm.

**Sysprep Configuration.** Although the Sysprep.inf file is encrypted by default, its contents can be decrypted and read by any determined end user who can successfully log on to the virtual machine. This raises security concerns because the Sysprep.inf file can contain credentials in addition to a Windows product key.

You can lessen this risk by setting up a limited account for joining virtual machines to the domain and specifying the credentials for that account when configuring Sysprep. Alternately, you can also configure Sysprep and first time setup to run in **Attended** mode and require end users to provide their credentials for joining the virtual machine to the domain.

A MED-V best practice is to specify that FtsCompletion.exe is run under an account that gives the end user rights to connect to the guest through the Remote Desktop Connection (RDC) Client.

**End-user authentication.** Enabling the caching of end-user credentials provides the best user experience of MED-V, but creates the potential that someone could gain access to the end user’s credentials. The only way to lessen this risk is by specifying on the **MED-V Workspace Packager** that end-user credentials are not stored. For more information about authentication of end users, see [Authentication of MED-V End Users](authentication-of-med-v-end-users.md).

## Related topics


[Operations Troubleshooting](operations-troubleshooting-medv2.md)

[Microsoft Enterprise Desktop Virtualization 2.0](index.md)

 

 





