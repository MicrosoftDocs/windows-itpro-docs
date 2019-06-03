---
title: About the Connection Group Virtual Environment
description: About the Connection Group Virtual Environment
author: dansimp
ms.assetid: 535fa640-cbd9-425e-8437-94650a70c264
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# About the Connection Group Virtual Environment


**In this topic:**

-   [How package priority is determined](#bkmk-pkg-priority-deter)

-   [Merging identical package paths into one virtual directory in connection groups](#bkmk-merged-root-ve-exp)

## <a href="" id="bkmk-pkg-priority-deter"></a>How package priority is determined


The virtual environment and its current state are associated with the connection group, not with the individual packages. If an App-V package is removed from the connection group, the state that existed as part of the connection group will not migrate with the package.

If the same package is a part of two different connection groups, you have to indicate which connection group App-V should use. For example, you might have two packages in a connection group that each define the same registry DWORD value.

The connection group that is used is based on the order in which a package appears inside the **AppConnectionGroup** XML document:

-   The first package has the highest precedence.

-   The second package has the second highest precedence.

Consider the following example section:

``` syntax
<appv:Packages><appv:PackagePackageId="A8731008-4523-4713-83A4-CD1363907160"VersionId="E889951B-7F30-418B-A69C-B37283BC0DB9"/><appv:PackagePackageId="1DC709C8-309F-4AB4-BD47-F75926D04276"VersionId="01F1943B-C778-40AD-BFAD-AC34A695DF3C"/><appv:PackagePackageId="04220DCA-EE77-42BE-A9F5-96FD8E8593F2"VersionId="E15EFFE9-043D-4C01-BC52-AD2BD1E8BAFA"/></appv:Packages>
```

Assume that same DWORD value ABC (HKEY\_LOCAL\_MACHINE\\software\\contoso\\finapp\\region) is defined in the first and third package, such as:

-   Package 1 (A8731008-4523-4713-83A4-CD1363907160): HKEY\_LOCAL\_MACHINE\\software\\contoso\\finapp\\region=5

-   Package 3 (04220DCA-EE77-42BE-A9F5-96FD8E8593F2): HKEY\_LOCAL\_MACHINE\\software\\contoso\\finapp\\region=10

Since Package 1 appears first, the AppConnectionGroup's virtual environment will have the single DWORD value of 5 (HKEY\_LOCAL\_MACHINE\\software\\contoso\\finapp\\region=5). This means that the virtual applications in Package 1, Package 2, and Package 3 will all see the value 5 when they query for HKEY\_LOCAL\_MACHINE\\software\\contoso\\finapp\\region.

Other virtual environment resources are resolved similarly, but the usual case is that the collisions occur in the registry.

## <a href="" id="bkmk-merged-root-ve-exp"></a>Merging identical package paths into one virtual directory in connection groups


If two or more packages in a connection group contain identical directory paths, the paths are merged into a single virtual directory inside the connection group virtual environment. This merging of paths allows an application in one package to access files that are in a different package.

When you remove a package from a connection group, the applications in that removed package are no longer able to access files in the remaining packages in the connection group.

The order in which App-V looks up a file’s name in the connection group is specified by the order in which the App-V packages are listed in the connection group manifest file.

The following example shows the order and relationship of a file name lookup in a connection group for **Package A** and **Package B**.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Package A</th>
<th align="left">Package B</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>C:\Windows\System32</p></td>
<td align="left"><p>C:\Windows\System32</p></td>
</tr>
<tr class="even">
<td align="left"><p>C:\AppTest</p></td>
<td align="left"><p>C:\AppTest</p></td>
</tr>
</tbody>
</table>

 

In the example above, when a virtualized application tries to find a specific file, Package A is searched first for a matching file path. If a matching path is not found, Package B is searched, using the following mapping rules:

-   If a file named **test.txt** exists in the same virtual folder hierarchy in both application packages, the first matching file is used.

-   If a file named **bar.txt** exists in the virtual folder hierarchy of one application package, but not in the other, the first matching file is used.






## Related topics


[Managing Connection Groups](managing-connection-groups.md)

 

 





