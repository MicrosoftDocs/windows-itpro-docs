---
title: About the connection group virtual environment (Windows 10)
description: Overview of how the connection group virtual environment works.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/25/2018
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# About the connection group virtual environment

>Applies to: Windows 10, version 1607

## How package priority is determined

The virtual environment and its current state are associated with the connection group, not with the individual packages. If you remove an App-V package from the connection group, the state that existed as part of the connection group will not migrate with the package.

If the same package is a part of two different connection groups, you have to indicate which connection group App-V should use. For example, you might have two packages in a connection group that each define the same registry DWORD value.

The connection group that is used is based on the order in which a package appears inside the **AppConnectionGroup** XML document:

- The first package has the highest precedence.
- The second package has the second highest precedence.

Consider the following example section:

```XML
<appv:Packages><appv:PackagePackageId="A8731008-4523-4713-83A4-CD1363907160"VersionId="E889951B-7F30-418B-A69C-B37283BC0DB9"/><appv:PackagePackageId="1DC709C8-309F-4AB4-BD47-F75926D04276"VersionId="01F1943B-C778-40AD-BFAD-AC34A695DF3C"/><appv:PackagePackageId="04220DCA-EE77-42BE-A9F5-96FD8E8593F2"VersionId="E15EFFE9-043D-4C01-BC52-AD2BD1E8BAFA"/></appv:Packages>
```

Assume that same DWORD value ABC (HKEY\_LOCAL\_MACHINE\\software\\contoso\\finapp\\region) is defined in the first and third package.

For this example, the DWORD value definition would be the following:

- Package 1 (A8731008-4523-4713-83A4-CD1363907160): HKEY\_LOCAL\_MACHINE\\software\\contoso\\finapp\\region=5
- Package 3 (04220DCA-EE77-42BE-A9F5-96FD8E8593F2): HKEY\_LOCAL\_MACHINE\\software\\contoso\\finapp\\region=10

Since Package 1 appears first, the AppConnectionGroup's virtual environment will have the single DWORD value of 5 (HKEY\_LOCAL\_MACHINE\\software\\contoso\\finapp\\region=5). This means that the virtual applications in Package 1, Package 2, and Package 3 will all see the value 5 when they query for HKEY\_LOCAL\_MACHINE\\software\\contoso\\finapp\\region.

Other virtual environment resources are resolved in a similar way, but usually collisions occur in the registry.

## Merging identical package paths into one virtual directory in connection groups

If two or more packages in a connection group contain identical directory paths, the paths are merged into a single virtual directory inside the connection group's virtual environment. Merging these paths allows an application in one package to access files that are in a different package.

When you remove a package from a connection group, the removed package's applications can no longer access files from packages in the connection group it was removed from.

App-V looks up a file’s name in the connection group in the order App-V packages are listed in the connection group manifest file.

The following example shows the order and relationship of a file name lookup in a connection group for **Package A** and **Package B**.

|Package A|Package B|
|---|---|
|C:\Windows\System32|C:\Windows\System32|
|C:\AppTest|C:\AppTest|

When a virtualized application tries to find a specific file, App-V will first for a matching file path in Package A. If it doesn't find a matching path in Package A, it will then search Package B using the following mapping rules:

- If a file named **test.txt** exists in the same virtual folder hierarchy in both application packages, App-V will use the first matching file.
- If a file named **bar.txt** exists in the virtual folder hierarchy of one application package, but not in the other, App-V will use the first matching file.





## Related topics

- [Managing Connection Groups](appv-managing-connection-groups.md)
