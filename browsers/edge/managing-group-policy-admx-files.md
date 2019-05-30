---
title: Managing group policy ADMX files
description: Learn how to centrally administer and incorporate ADMX files when editing the administrative template policy settings inside a local or domain-based Group Policy object.
ms.assetid: 
ms.reviewer: 
manager: dansimp
author: eavena
ms.author: eravena
ms.prod: edge
ms.sitesec: library
ms.localizationpriority: medium
ms.date: 10/19/2018 
---

# Managing group policy ADMX files

>Applies to: Microsoft Edge on Windows 10

ADMX files, which are registry-based policy settings provide an XML-based structure for defining the display of the Administrative Template policy settings in the Group Policy Object Editor. The ADMX files replace ADM files, which used a different markup language. 

>[!NOTE] 
>The administrative tools you use—Group Policy Object Editor and Group Policy Management Console—remain mostly unchanged. In the majority of situations, you won’t notice the presence of ADMX files during your day-to-day Group Policy administration tasks. 

Unlike ADM files, ADMX files are not stored in individual GPOs by default; however, this behavior supports less common scenarios. For domain-based enterprises, you can create a central store location of ADMX files accessible by anyone with permission to create or edit GPOs. Group Policy tools continue to recognize other earlier ADM files you have in your existing environment. The Group Policy Object Editor automatically reads and displays Administrative Template policy settings from both the ADMX and ADM files.

Some situations require a better understanding of how ADMX files are structured and the location of the files. In this article, we show you how ADMX files are incorporated when editing Administrative Template policy settings in a local or domain-based Group Policy object (GPO). 
