---
title: XML File Requirements
description: Learn about the XML file requirements for creating custom .xml files, like the file must be in UTF-8 and have a unique migration URL ID.
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 01/09/2024
ms.topic: conceptual
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# XML file requirements

When creating custom **.xml** files, note the following requirements:

- **The file must be in Unicode Transformation Format-8 (UTF-8).** Save the file in this format and the following syntax must be specified at the beginning of each **.xml** file:

    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    ```

- **The file must have a unique migration URL ID**. The URL ID of each file that is specified on the command line must be different. If two migration **.xml** files have the same URL ID, the second **.xml** file that is specified on the command line isn't processed. The second file isn't processed because USMT uses the URL ID to define the components within the file. For example, the following syntax must be specified at the beginning of each file:

    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    <migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/<CustomFileName>">
    ```

- **Each component in the file must have a display name in order for it to appear in the Config.xml file.** This condition is because the `Config.xml` file defines the components by the display name and the migration URL ID. For example, specify the following syntax:

    ```xml
    <displayName>My Application</displayName>
    ```

For examples of custom **.xml** files, see [Custom XML examples](usmt-custom-xml-examples.md).
