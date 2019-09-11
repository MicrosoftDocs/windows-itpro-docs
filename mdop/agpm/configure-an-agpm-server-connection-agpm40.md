---
title: Configure an AGPM Server Connection
description: Configure an AGPM Server Connection
author: dansimp
ms.assetid: 409cbbcf-3b0e-459d-9bd2-75cb7b9430b0
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configure an AGPM Server Connection


To ensure that you are connected to the correct central archive, review the configuration of the AGPM Server connection. If an AGPM Administrator (Full Control) has not configured an AGPM Server connection for you, then you must manually configure it.

**To select an AGPM Server**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  In the details pane, click the **AGPM Server** tab:

    -   If the options on the **AGPM Server** tab are unavailable, they have been centrally configured by an AGPM Administrator.

    -   If the options on the **AGPM Server** tab are available, type the fully-qualified computer name for the AGPM Server (for example, server.contoso.com) and the port on which the AGPM Service listens (by default, port 4600). Click **Apply**, then click **Yes** to confirm.

### Additional considerations

-   The AGPM Servers selected determine which GPOs are displayed on the **Contents** tab and to what location the **Domain Delegation** tab settings are applied. If not centrally managed through the Administrative template, each Group Policy administrator must configure this setting to point to the AGPM Server for the domain.

### Additional references

-   [Performing Reviewer Tasks](performing-reviewer-tasks-agpm40.md)

 

 





