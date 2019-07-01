---
title: About the Virtual Registry Tab
description: About the Virtual Registry Tab
author: dansimp
ms.assetid: ca8d837f-8218-4f86-95fd-13a44dccd022
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# About the Virtual Registry Tab


A virtual registry is created during sequencing. The **Virtual Registry** tab displays all the registry keys and values that are required for a sequenced application package to run. Use this tab to add, edit, and delete registry keys and registry values.

You can also choose to ignore the hosting system’s keys by selecting **Override Local Key**, or you can create a merged view of the key from within the virtual environment by selecting **Merge with Local Key**.

The changes to the virtual registry **Settings** tab affect applications that are part of the specific sequenced application package, but they do not affect the operation of other applications that are streamed to or locally installed on the Application Virtualization Desktop Client.

**Note**  
  Exercise caution when changing virtual registry keys and values. Changing these keys and values might render your sequenced application package inoperable.

 

The left pane of the **Virtual Registry** tab displays the full list of virtual registries created during the sequencing of an application.

## Columns


<a href="" id="name"></a>**Name**  
The name for the entry in the virtual registry.

<a href="" id="type"></a>**Type**  
How the entry stores its data.

<a href="" id="data"></a>**Data**  
The value stored by the entry.

<a href="" id="attributes"></a>**Attributes**  
Displays the file attributes.

## Related topics


[How to Modify Virtual Registry Key Information](how-to-modify-virtual-registry-key-information.md)

[Sequencer Console](sequencer-console.md)

 

 





