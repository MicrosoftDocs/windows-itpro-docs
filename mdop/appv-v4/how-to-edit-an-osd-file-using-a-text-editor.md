---
title: How to Edit an OSD File Using a Text Editor
description: How to Edit an OSD File Using a Text Editor
author: dansimp
ms.assetid: f4263a1b-824f-49b9-8060-b8229c9d9960
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Edit an OSD File Using a Text Editor


Use the following procedure to edit an Open Software Descriptor (OSD) file by using a text editor.

**To edit an OSD file by using a text editor**

1.  Open the OSD file using any XML or ASCII text editor—for example, Microsoft Notepad.

    **Note**  
    Before modifying the OSD file, read the schema prescribed by the XSD file in the install directory. Failing to follow this schema might introduce errors that prevent a sequenced application from starting successfully.

     

2.  Edit the OSD file using your XML or ASCII text editor of choice, adhering to the prescribed schema and the following guidelines:

    1.  Ensure that named elements are nested within the &lt;SOFTPKG&gt; root element.

    2.  Ensure that element names are in all uppercase letters.

    3.  Be aware that attribute values are case sensitive.

    4.  Type carefully, and observe the XML specifications.

## Related topics


[About the OSD Tab](about-the-osd-tab.md)

[How to Edit an OSD File](how-to-edit-an-osd-file.md)

[OSD File Elements](osd-file-elements.md)

 

 





