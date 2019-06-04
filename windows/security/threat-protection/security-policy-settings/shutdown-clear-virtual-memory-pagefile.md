---
title: Shutdown Clear virtual memory pagefile - security policy setting (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Shutdown Clear virtual memory pagefile security policy setting.
ms.assetid: 31400078-6c56-4891-a6df-6dfb403c4bc9
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 08/01/2017
---

# Shutdown: Clear virtual memory pagefile 

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Shutdown: Clear virtual memory pagefile** security policy setting.

## Reference

This policy setting determines whether the virtual memory paging file is cleared when the device is shut down. Virtual memory support uses a system paging file to swap pages of memory to disk when they are not used. On a running device, this paging file is opened exclusively by the operating system, and it is well protected. However, devices that are configured to allow other operating systems to start should verify that the system paging file is cleared as the device shuts down. This confirmation ensures that sensitive information from process memory that might be placed in the paging file is not available to an unauthorized user who manages to directly access the paging file after shutdown.

Important information that is kept in real memory might be written periodically to the paging file. This helps devices handle multitasking functions. A malicious user who has physical access to a server that has been shut down can view the contents of the paging file. The attacker can move the system volume into a different computer and then analyze the contents of the paging file. This is a time-consuming process, but it can expose data that is cached from RAM to the paging file. A malicious user who has physical access to the server can bypass this countermeasure by simply unplugging the server from its power source.

### Possible values

-   Enabled

    The system paging file is cleared when the system shuts down normally. Also, this policy setting forces the computer to clear the hibernation file (hiberfil.sys) when hibernation is disabled on a portable device.

-   Disabled
-   Not defined

### Best practices

-   Set this policy to **Enabled**. This causes Windows to clear the paging file when the system is shut down. Depending on the size of the paging file, this process might take several minutes before the system completely shuts down. This delay in shutting down the server is especially noticeable on servers with large paging files. For a server with 2 gigabytes (GB) of RAM and a 2-GB paging file, this setting can add more than 30 minutes to the shutdown process. For some organizations, this downtime violates their internal service level agreements. Use caution when implementing this countermeasure in your environment.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Disabled| 
| DC Effective Default Settings | Disabled| 
| Member Server Effective Default Settings | Disabled| 
| Client Computer Effective Default Settings | Disabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Important information that is kept in real memory may be written periodically to the paging file to help Windows handle multitasking functions. An attacker who has physical access to a server that has been shut down could view the contents of the paging file. The attacker could move the system volume into a different device and then analyze the contents of the paging file. Although this process is time consuming, it could expose data that is cached from random access memory (RAM) to the paging file.

>**Caution:**  An attacker who has physical access to the device could bypass this countermeasure by unplugging the computer from its power source.
 
### Countermeasure

Enable the **Shutdown: Clear virtual memory page file** setting. This configuration causes the operating system to clear the paging file when the device is shut down. The amount of time that is required to complete this process depends on the size of the page file. Because the process overwrites the storage area that is used by the page file several times, it could be several minutes before the device completely shuts down.

### Potential impact

It takes longer to shut down and restart the device, especially on devices with large paging files. For a device with 2 gigabytes (GB) of RAM and a 2-GB paging file, this policy setting could increase the shutdown process by more than 30 minutes. For some organizations this downtime violates their internal service level agreements. Therefore, use caution before you implement this countermeasure in your environment.

## Related topics

- [Security Options](security-options.md)
