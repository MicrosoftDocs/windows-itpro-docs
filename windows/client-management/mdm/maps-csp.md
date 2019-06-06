---
title: Maps CSP
description: The Maps configuration service provider (CSP) is used to configure the maps to download to the device. This CSP was added in Windows 10, version 1511.
ms.assetid: E5157296-7C31-4B08-8877-15304C9F6F26
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
---

# Maps CSP


The Maps configuration service provider (CSP) is used to configure the maps to download to the device. This CSP was added in Windows 10, version 1511.

> **Note**  The Maps CSP is only supported in Windows 10 Mobile.

 

The following diagram shows the Maps configuration service provider in tree format.

![maps csp diagram](images/provisioning-csp-maps.png)

<a href="" id="maps"></a>**Maps**  
Root node.

<a href="" id="packages"></a>**Packages**  
Represents the map packages installed on the device.

<a href="" id="packages-package"></a>**Packages/****_Package_**  
A GUID that represents a map package. When you add a *Package* node, Windows adds it to the queue for download to the device. See the table below for the list of various maps and corresponding GUIDS.

<a href="" id="packages-package-status"></a>**Packages/*Package*/Status**  
Represents the stat of the package installed on the device.

Valid values:

-   1 - the specified map package is queued for download.
-   2 - the specified map package is downloading or installed.

Supported operation is Get. If the map is neither queued, downloading, or installed, then you will get a 404 from a Get request.

## Examples


Here is a list of GUIDs of the most downloaded reqions.

| Region                        | GUID                                 |
|-------------------------------|--------------------------------------|
| **Germany**                   |                                      |
| Baden-Wuerttemberg            | bab02b93-31c4-413a-b0fe-95a43e186d8c |
| Bavaria                       | dceea482-12e9-458e-9f0f-21def9a70ed7 |
| Berlin/Brandenburg            | d8a80d64-07ef-4145-82e5-97910f1012df |
| Hesse                         | b28e2071-678b-4671-8eff-97e1c124f2fb |
| Lower Saxony/Bremen           | e3ac0f21-7209-4f42-93bf-a0d12c7df2e5 |
| Mecklenburg-Western Pomerania | 75760c3d-e651-4b4a-abfb-c22e2bf1ed93 |
| North Rhine-Westphalia        | 3846905a-891e-46a9-bc6a-53ec43edcab0 |
| Rhineland-Palatinate/Saarland | b4c18bb5-1bfe-4da8-a951-833046e37c90 |
| Saxony                        | 8899e1a8-fc79-4f3a-a591-85f15dfb1adb |
| Saxony-Anhalt                 | fdd9a3eb-4253-4c4b-b34d-66265775518d |
| Schleswig-Holstein/Hamburg    | 74d868dd-99a7-492f-93ee-2b9c0a6b7ebc |
| Thuringia                     | 399a3387-a545-4249-9925-04660426ef1c |
| **United Kingdom**            |                                      |
| England                       | bf612bb8-4094-4158-ac06-96171fa7ffdf |
| Northern Ireland              | 07f1d10f-cd72-4801-912a-7ba75ef5a627 |
| Scotland                      | cade44ea-4421-4023-9498-bf1f92025c9e |
| Wales                         | 869f9131-e3c7-41df-b106-9d787c633a10 |
| **USA**                       |                                      |
| Alabama                       | 4fdaabf4-0160-4075-b7ad-7a8a71e69e7e |
| Alaska                        | f691e35f-a6b9-4d6c-b657-0f092d5f2f0e |
| Arizona                       | 4a179b8e-c993-4c4b-a242-51f69068d73b |
| Arkansas                      | 4d152d48-92aa-4696-b8b2-c0bbacd421b6 |
| California                    | 1859bd60-854a-40e3-9216-6e9cf1fcfdce |
| Colorado                      | d7b4de3d-370c-44dc-8dc7-dcafe676d5ff |
| Connecticut                   | 47fbdbe0-6c4d-4966-9a02-8decc94a5a1c |
| Delaware                      | b2882156-e75c-4bdf-8f9f-45cbfac6b915 |
| Florida                       | 1769c37c-f22a-4212-bd4b-47036693b034 |
| Georgia                       | ad34ec5d-d84c-42fa-bec1-fe6143d2e68d |
| Hawaii                        | 4019c8a1-0d8f-43c6-baa6-7ff5a7888f21 |
| Idaho                         | 008d318b-5004-4e13-a4a4-f520e7969026 |
| Illinois                      | a2c35505-daf5-432d-a4df-544a5c2987c2 |
| Indiana                       | 4c3b6963-e380-45a9-8b25-2bdc4ce1ab26 |
| Iowa                          | e07df1bc-01e6-4ffb-9a20-a142a6d38218 |
| Kansas                        | 3397467d-3fb9-4ded-b6ad-3ab7313f8ff1 |
| Kentucky                      | bc751324-a591-4ecd-b27a-af15b5518051 |
| Louisiana                     | d11a119c-9e25-40d9-aef9-ed2f161113b0 |
| Maine                         | db5e6077-f4dd-4548-b50e-ebd147d20c37 |
| Maryland                      | 17739d09-a70a-4a23-859c-eabc57418d2f |
| Massachusetts                 | d168d0d5-7683-45a4-afd4-767fd1359ad8 |
| Michigan                      | 0abd961b-9602-4a2e-b093-c43a2a80aab5 |
| Minnesota                     | 2946ed46-b171-4e38-9278-e33a6967f143 |
| Mississippi                   | 78a38671-a8e8-48f1-a23b-3576df370437 |
| Missouri                      | 5c885acb-5fdc-4305-84f1-e18d3163724b |
| Montana                       | baf84353-89cf-4abd-9226-b932fd2294a4 |
| Nebraska                      | e389c2f8-41a0-4121-a654-77c52fbd61ed |
| Nevada                        | 8c321bdc-8e37-4be6-96e0-1d85c77c89f0 |
| New Hampshire                 | 38c35895-98ce-4ee4-bb47-7291b5e8543a |
| New Jersey                    | 70b1d647-ff93-415f-b2be-da06ee800516 |
| New Mexico                    | b434ea36-03ca-405c-8332-044b602e7b49 |
| New York                      | 93f2ba61-e03d-4b30-9be3-6e10728302d4 |
| North Carolina                | d07208ed-50da-42f2-bade-cb26f283e113 |
| North Dakota                  | 8c6f0ebb-f282-431e-b4be-8faca5f12be0 |
| Ohio                          | 36553594-8197-497f-911e-f1cd976c2e00 |
| Oklahoma                      | 4e3a77ff-9dca-4add-93e9-2a9d6bc244a6 |
| Oregon                        | cf99c8ce-1b11-4972-9e12-f8c2717ade98 |
| Pennsylvania                  | cb7c0dea-1f9d-41ae-b81c-e683488d260c |
| Rhode Island                  | 737c2fca-efd3-4f5a-9359-0c301ecc0813 |
| South Carolina                | c0a5542f-5efb-49ae-9d80-3914faa4cf77 |
| South Dakota                  | dbd8268b-7502-4f71-ba1c-2d452d496b18 |
| Tennessee                     | b51f7ae4-9eac-4a2b-b605-c2f9736b3481 |
| Texas                         | 4cc26a23-596f-4164-b9c2-ce0267b1ada7 |
| Utah                          | 50b2e947-e7b3-41b2-b595-8446f3f425ca |
| Vermont                       | a888d9cc-9f2a-4f18-a00a-15fa860d355d |
| Virginia                      | bfb4cce0-8fa5-4e70-a3c7-a69adce17fc9 |
| Washington                    | 1734acf4-3f87-47db-aec2-2b24c08f5a60 |
| Washington D.C.               | 271328d6-8409-4975-ba8c-ba44e02fd3e0 |
| West Virginia                 | 638b6499-749b-4908-bfe6-1b9dcf5eb675 |
| Wisconsin                     | 0b5a98f7-489d-4a07-859b-4e01fe9e1b32 |
| Wyoming                       | 360e0c25-a3bb-4e29-939a-3631eae46e9a |

 

Here is an example queuing a map package of New York for download.

``` syntax
<SyncML>
    <SyncBody>
       <Add>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/Maps/Packages/93f2ba61-e03d-4b30-9be3-6e10728302d4</LocURI>
                </Target>
            </Item>
        </Add>
        <Final/>
    </SyncBody>
</SyncML>
```

Here is an example that gets the status of the New York map package on the device.

``` syntax
<SyncML>
    <SyncBody>
       <Get>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/Maps/Packages/93f2ba61-e03d-4b30-9be3-6e10728302d4/Status</LocURI>
                </Target>
            </Item>
        </Get>
        <Final/>
    </SyncBody>
</SyncML>
```

 

 






