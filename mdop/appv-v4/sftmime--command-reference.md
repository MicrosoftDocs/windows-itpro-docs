---
title: SFTMIME Command Reference
description: SFTMIME Command Reference
author: manikadhiman
ms.assetid: a4a69228-9dd3-4623-b773-899d03c0cf10
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# SFTMIME Command Reference


SFTMIME is a command-line interface used by Application Virtualization (App-V) that enables you to manage many client configuration details. This section contains all the commands and their parameters, with a brief description of each.

**Important**  
-   All backslash characters must be escaped using a preceding backslash, or the path will not be parsed correctly.

-   If you are using a calling program to invoke SFTMIME with **CreateProcess**, you must ensure that the first parameter is the path to sftmime.exe.

-   The output of the SFTMIME **QUERY OBJ** command cannot be piped to the **findstr** command to search for a string.

-   Use of the **GLOBAL** switch requires local administrator rights.

-   Use of short paths and relative paths can lead to unexpected results and should be avoided. Always use full paths.

 

## In This Section


[ADD APP](add-app.md)

[ADD PACKAGE](add-package.md)

[ADD SERVER](add-server.md)

[ADD TYPE](add-type.md)

[CLEAR APP](clear-app.md)

[CLEAR OBJ](clear-obj.md)

[CONFIGURE APP](configure-app.md)

[CONFIGURE PACKAGE](configure-package.md)

[CONFIGURE SERVER](configure-server.md)

[CONFIGURE TYPE](configure-type.md)

[DELETE APP](delete-app.md)

[DELETE OBJ](delete-obj.md)

[DELETE PACKAGE](delete-package.md)

[DELETE SERVER](delete-server.md)

[DELETE TYPE](delete-type.md)

[HELP](help.md)

[LOAD APP](load-app.md)

[LOAD PACKAGE](load-package.md)

[LOCK APP](lock-app.md)

[PUBLISH APP](publish-app.md)

[PUBLISH PACKAGE](publish-package.md)

[QUERY OBJ](query-obj.md)

[REFRESH SERVER](refresh-server.md)

[REPAIR APP](repair-app.md)

[UNLOAD APP](unload-app.md)

[UNLOAD PACKAGE](unload-package.md)

[UNLOCK APP](unlock-app.md)

[UNPUBLISH PACKAGE](unpublish-package.md)

 

 





