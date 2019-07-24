---
title: Planning for Sequencer Security
description: Planning for Sequencer Security
author: eavena
ms.assetid: 8043cb02-476d-4c28-a850-903a8ac5b2d3
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Planning for Sequencer Security


Incorporate recommended implementation practices as early as possible when configuring Application Virtualization (App-V) so that your Sequencer implementation is functional and more secure. If you have already configured the Sequencer, use the following best-practice guidelines to revisit your design decisions and analyze them from a security perspective.

**Important**  
The App-V Sequencer collects and deploys all application information recorded on the computer running the sequencer. You should ensure that all users accessing the computer running the Sequencer have administrative credentials. Users with user account credentials should not have access to control package contents and package files. If you are sequencing on a computer running Remote Desktop Services (formerly Terminal Services), make sure it is a computer that is dedicated to sequencing and that users with user account credentials are not connected to it during sequencing.



## Sequencer Security Best Practices


Consider the following scenarios and the associated best practices when implementing and using the Application Virtualization (App-V) Sequencer:

-   **Virus scanning on the computer running the Sequencer**—It is recommended that you scan the computer running the Sequencer for viruses and then disable all antivirus and malware detection software on the computer running the Sequencer during the sequencing process. This will speed the sequencing process and prevent the antivirus and anti-malware software components from interfering with the sequencing process. Next install the sequenced package on a computer not running the Sequencer, and after successful installation, scan that computer for viruses. If viruses are found, the manufacturer of the software should be contacted to inform them of the infected source files and request an updated installation source without viruses. Optionally, the Sequencer could be scanned after the installation phase and if a virus is found, the software manufacturer should be contacted as mentioned above.

    **Note**  
    If a virus is detected in an application, the application should not be deployed to target computers.



-   **Capturing access control lists (ACLs) on NTFS files**—The App-V Sequencer captures NTFS file system permissions for the files that are monitored during the installation of the product. This capability allows you to more accurately replicate the intended behavior of the application, as if it were installed locally and not virtualized. In some scenarios, an application might store information that users were not intended to access within the application files. For example, an application could store credentials information in a file inside of the application. If ACLs are not enforced on the package, a user could potentially view and then use this information outside of the application.

    **Note**  
    You should not sequence applications that store unencrypted security-specific information, such as passwords, and so on.



~~~
During the installation phase, you can modify the default permissions of the files if necessary. After completion of the sequencing process, but before saving the package, you can choose whether to enforce security descriptors that were captured during the installation of the application. By default, App-V will enforce the security descriptors specified during the installation of the application. If you turn off security descriptor enforcement, you should test the application to ensure the removal of associated Access Control Lists (ACL) will not cause the application to perform unexpectedly.
~~~

-   **Sequencer doesn’t capture registry ACLs**—Although the Sequencer captures the NTFS file system ACLs during the installation phase of sequencing, it does not capture the ACLs for the registry. Users will have full access to all registry keys for virtual applications except for services. However, if a user modifies the registry of a virtual application, the change will be stored in a specific store (**uservol\_sftfs\_v1.pkg**) and will not affect other users.

-   **Application services**—App-V provides support for application services that are part of a virtualized application. However, in the virtual environment, the security context that they will run as is limited. The only security contexts supported in a virtual environment are Local System, Local Service, and Network Service. During sequencing, if a security context is specified for an application service other than the three supported, the Local System security context will be applied in the virtual environment. If the application service is configured to use either Local Service or Network Service, it will be honored in the virtual environment. Configuring the service account can be done during the sequencing process using these three security contexts.

-   **Persisted security information**—When sequencing applications, you can install the application as a user would or you can develop an automated method for installing the application while being monitored. Everything that is not being excluded from the package will be captured as part of that package so that the application will have the necessary assets to run in a virtualized environment. Some applications store sensitive security information (such as passwords) during the installation; if persisted unprotected, this security information could be accessed by other users with access to the package. During installation, if an application installation asks for a password or other security-sensitive information, check with the documentation to ensure that it is either not persisted (removed after installation) or, if persisted, that it is protected (encrypted).

-   **Securing virtual application packages**—Always save virtual application packages in a secure location on the network to protect the package from being tampered with or corrupted.

## Related topics


[Planning for Security and Protection](planning-for-security-and-protection.md)









