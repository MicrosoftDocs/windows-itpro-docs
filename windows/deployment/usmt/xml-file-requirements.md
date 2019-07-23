---
title: XML File Requirements (Windows 10)
description: XML File Requirements
ms.assetid: 4b567b50-c50a-4a4f-8684-151fe3f8275f
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# XML File Requirements


When creating custom .xml files, note the following requirements:

-   **The file must be in Unicode Transformation Format-8 (UTF-8).** You must save the file in this format, and you must specify the following syntax at the beginning of each .xml file:

    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    ```

-   **The file must have a unique migration urlid**. The urlid of each file that you specify on the command line must be different. If two migration .xml files have the same urlid, the second .xml file that is specified on the command line will not be processed. This is because USMT uses the urlid to define the components within the file. For example, you must specify the following syntax at the beginning of each file:

    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    <migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/<CustomFileName>">
    ```

-   **Each component in the file must have a display name in order for it to appear in the Config.xml file.** This is because the Config.xml file defines the components by the display name and the migration urlid. For example, specify the following syntax:

    ```xml
    <displayName>My Application</displayName>
    ```

For examples of custom .xml files, see [Custom XML Examples](usmt-custom-xml-examples.md).

 

 





