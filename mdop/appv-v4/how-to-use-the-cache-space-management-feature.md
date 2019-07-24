---
title: How to Use the Cache Space Management Feature
description: How to Use the Cache Space Management Feature
author: eavena
ms.assetid: 60965660-c015-46a8-88ac-54cbc050fe33
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Use the Cache Space Management Feature


The FileSystem cache space management feature uses a Least Recently Used (LRU) algorithm and is enabled by default. If the space that is required for a new package would exceed the available free space in the cache, the Application Virtualization (App-V) Client uses this feature to determine which, if any, existing packages it can delete from the cache to make room for the new package. The client deletes the package with the oldest last-accessed date if it is older than the value specified in the MinPkgAge registry value. Use of the FileSystem cache space management feature can also help to avoid low cache space problems.

More than one package is deleted if necessary. Packages that are locked are not deleted.

**Note**  
To ensure that the cache has sufficient space allocated for all packages that might be deployed, use the **Use free disk space threshold** setting when you configure the client so that the cache can grow as needed. Alternatively, determine in advance how much disk space will be needed for the App-V cache, and at installation time, set the cache size accordingly.

 

The cache space management feature is controlled by the UnloadLeastRecentlyUsed registry value. A value of 1 enables the feature, and a value of 0 (zero) disables it.

**To enable or disable the cache space management feature**

-   Set the following registry value to 1 to enable the LRU algorithm. Set it to 0 (zero) to disable the feature.

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\AppFS\\UnloadLeastRecentlyUsed

**To control which packages can be discarded**

-   To determine when the package can be selected for discard, set the following registry value to equal the minimum number of days you want to elapse since the package was last accessed. Packages that have been used more recently are not discarded.

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\AppFS\\MinPkgAge

    **Caution**  
    The maximum value for this registry key is 0x00011111. Larger values will prevent the correct operation of the cache space management feature.

     

## Related topics


[How to Configure the App-V Client Registry Settings by Using the Command Line](how-to-configure-the-app-v-client-registry-settings-by-using-the-command-line.md)

 

 





