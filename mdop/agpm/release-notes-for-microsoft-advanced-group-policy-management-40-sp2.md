---
title: Release Notes for Microsoft Advanced Group Policy Management 4.0 SP2
description: Release Notes for Microsoft Advanced Group Policy Management 4.0 SP2
author: dansimp
ms.assetid: 0593cd11-3308-4942-bf19-8a7bb9447f01
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Release Notes for Microsoft Advanced Group Policy Management 4.0 SP2


To search these release notes, press Ctrl+F.

Read these release notes thoroughly before you install Microsoft Advanced Group Policy Management (AGPM) 4.0 Service Pack 2 (SP2). These release notes contain information that is required to successfully install AGPM 4.0 SP2 and contain information that is not available in the product documentation. If there is a difference between these release notes and other AGPM documentation, consider the latest change authoritative. These release notes supersede the content included with this product.

## AGPM 4.0 SP2 known issues


This section describes the known issues for AGPM 4.0 SP2.

### <a href="" id="control-panel-s--uninstall--tool-may-not-work-when-you-try-to-change-agpm-server-settings"></a>Control Panel’s “Uninstall” tool may not work when you try to change AGPM Server settings

The tool in Control Panel that you use to uninstall or change a program may not work when you try to change AGPM Server settings.

**Workaround:** Before you try to change AGPM Server settings by using Control Panel, make a copy of the AGPM Archive folder. You can then use Setup.exe to reinstall the AGPM Server and choose the configuration parameters that you want.

### Reports do not display the links that were added to a Group Policy Object

The AGPM settings and difference reports do not display the links that were added to a Group Policy Object (GPO).

**Workaround:** To view the links in the reports, select the GPO in the Group Policy Management Console (GPMC), and then click the **Settings** tab in the right pane.

### Reports do not display all Choice Options Properties settings

The AGPM settings and difference reports do not display all of the settings that were selected in the **Choice Options Properties** window in the Group Policy Object Editor.

**Workaround:** Use the GPMC to view the selected **Choice Options Properties** settings in the reports.

### Reports may not display the Show and Hide tabs in certain browsers

The **Show** and **Hide** tabs, on the right side of the AGPM settings and difference reports, may not appear when you view the reports in Google Chrome or Mozilla Firefox.

**Workaround:** View the reports by using the Internet Explorer browser.

### AGPM settings and difference reports may show different content from GPMC reports

The AGPM settings and difference reports may not show the same content as reports in the GPMC.

**Workaround:** Use the GPMC to view the AGPM reports.

### AGPM Service does not start if the domain controller is offline

When the AGPM Service is installed on a domain controller on the Windows® 8 operating systems or later operating systems, the service does not start if the domain controller is offline.

**Workaround:** Manually start the AGPM Service after the domain controller is online.

### Upgrade of AGPM Server to AGPM 4.0 SP2 is blocked when you upgrade from the AGPM 4.0 release plus hotfix 1

If you try to upgrade the AGPM server to AGPM 4.0. SP2 after installing AGPM 4.0 Server and then installing the AGPM hotfix named AGPM 4.0 reports incorrect differences in the HTML report (see Knowledge Base article [2643502](https://go.microsoft.com/fwlink/?LinkId=254474)), the upgrade fails and cannot be completed.

**Workaround:** Uninstall the AGPM 4.0 Server and then install AGPM 4.0 SP2.

### Reports do not display organizational unit links

If you link an uncontrolled GPO to an organizational unit and then control that GPO by using AGPM, the AGPM settings and difference reports do not display the organizational unit links.

**Workaround:** On the **Controlled** tab of the **Change Settings** node, right-click the GPO, click **Settings**, and then click **GPO Links** to view the organizational links. Alternatively, you can use the GPMC to view the links to a GPO from the **Scope** tab.

### AGPM displays an error if you click the Back button from the Change, Repair, or Remove AGPM Client dialog box

If you browse to **Programs and Features** in Control Panel and then select **Microsoft Advanced Group Policy Management – Client**, AGPM displays an error if you click **Modify** and then click the **Back** button in the **Change, Repair, or Remove AGPM Client** dialog box.

**Workaround:** Click **Cancel** to clear the error, and then start the process again. Do not click the **Back** button after you click **Modify** .

### Comment fails to appear in the History window when the Approver deploys a GPO and enters a comment

If a user who has the Editor role submits a request to deploy a GPO, and the user who has the Approver role then deploys the GPO and enters a comment, the comment fails to appear in the **History** window.

**Workaround:** None.

## Related topics


[Advanced Group Policy Management](index.md)

[What's New in AGPM 4.0 SP2](whats-new-in-agpm-40-sp2.md)

 

 





