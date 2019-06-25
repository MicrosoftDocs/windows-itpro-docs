---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Allow a shared books folder -->
>*Supported versions: Microsoft Edge on Windows 10, version 1803*<br>
>*Default setting: Disabled or not configured (Not allowed)*

[!INCLUDE [allow-a-shared-books-folder-shortdesc](../shortdesc/allow-a-shared-books-folder-shortdesc.md)]



### Supported values

|                Group Policy                 | MDM | Registry |                                                                                                                                                                                              Description                                                                                                                                                                                               |                 Most restricted                  |
|---------------------------------------------|:---:|:--------:|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------:|
| Disabled or not configured<br>**(default)** |  0  |    0     |                                                                                                                                                           Prevented. Microsoft Edge downloads book files to a per-user folder for each user.                                                                                                                                                           | ![Most restricted value](/images/check-gn.png) |
|                   Enabled                   |  1  |    1     | Allowed. Microsoft Edge downloads book files to a shared folder. For this policy to work correctly, you must also enable the **Allow a Windows app to share application data between users** group policy, which you can find:<p>**Computer Configuration\\Administrative Templates\\Windows Components\\App Package Deployment\\**<p>Also, the users must be signed in with a school or work account. |                                                  |

---

![Allow a shared books folder](/images/allow-shared-books-folder_sm.png)

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow a shared Books folder
- **GP name:** UseSharedFolderForBooks 
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[UseSharedFolderForBooks](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-usesharedfolderforbooks)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/UseSharedFolderForBooks 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\BooksLibrary
- **Value name:** UseSharedFolderForBooks
- **Value type:** REG_DWORD

### Related policies 

**Allow a Windows app to share application data between users:** [!INCLUDE [allow-windows-app-to-share-data-users-shortdesc](../shortdesc/allow-windows-app-to-share-data-users-shortdesc.md)]

<hr>
