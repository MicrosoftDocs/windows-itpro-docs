---
title: Managing Printers on a MED-V Workspace
description: Managing Printers on a MED-V Workspace
author: levinec
ms.assetid: ba0a65ad-444f-4d18-95eb-8b9fa1a3ffba
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Managing Printers on a MED-V Workspace


In Microsoft Enterprise Desktop Virtualization (MED-V) 2.0, printer redirection provides end users with a consistent printing experience between the MED-V virtual machine and the host computer.

This topic provides information about how to manage printing in a MED-V workspace.

## Managing Printers in MED-V Workspaces


In most cases, MED-V handles printer redirection automatically. After first time setup finishes, MED-V identifies all network printers installed on the host, retrieves the corresponding drivers from the network print server, and if found, installs the relevant drivers in the MED-V workspace. After all drivers are found and installed, MED-V reboots the MED-V workspace. Only after the MED-V workspace restarts, the host printers are present and available on the guest, typically in a few minutes.

**Note**  
If applications are running on the MED-V workspace, the end user is prompted to let the restart continue or postpone it until later. If no applications are running, the restart is automatic and not shown to the end user.

 

Every time MED-V is re-started, it checks whether any new printers are installed on the host and, if found, retrieves the corresponding drivers from the network print server and installs them on the guest. MED-V then restarts the MED-V workspace just as when first time setup was completed.

**Important**  
After the relevant drivers are installed on the guest, the printers only become visible on the guest after the restart occurs.

 

If at any time a driver cannot be located or installed, it must be manually installed on the guest for the network printer to be available to the end user.

The following list offers some additional guidance:

**MED-V only manages network printers**. Drivers for printers that are installed locally on the host are not automatically installed on the guest.

**MED-V only installs printer drivers if found on the print server**. If not found, printer drivers must be manually installed.

**Printers manually installed on the guest are not accessible to the host**. By default, MED-V only supports printer redirection from the guest to the host.

**Warning**  
If a printer is manually installed on the guest, and the same printer is later installed on the host, the result is that the printer is installed two times in the guest. To avoid this situation, a MED-V best practice is to manage printer redirection in one manner only: either disable redirection and install printers manually on the guest, or enable redirection and do not install printers manually on the guest.

 

## Related topics


[Manage MED-V Workspace Settings](manage-med-v-workspace-settings.md)

 

 





