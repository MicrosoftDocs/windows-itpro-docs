<!-- ## Allow a shared books folder -->
>*Supported versions: Microsoft Edge on Windows 10, version 1803*<br>
>*Default setting: Disabled or not configured (Not allowed)*

[!INCLUDE [allow-a-shared-books-folder-shortdesc](../shortdesc/allow-a-shared-books-folder-shortdesc.md)]

### Supported values
|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Prevented/not allowed, but Microsoft Edge downloads book files to a per-user folder for each user. |![Most restricted value](../images/check-gn.png) |
|Enabled |1 |1 |Allowed. Microsoft Edge downloads book files to a shared folder.| |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow a shared Books folder
- **GP name:** UseSharedFolderForBooks 
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[UseSharedFolderForBooks](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-usesharedfolderforbooks)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/UseSharedFolderForBooks 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\BooksLibrary
- **Value name:** UseSharedFolderForBooks
- **Value type:** REG_DWORD

<hr>
