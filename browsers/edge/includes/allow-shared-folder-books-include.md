<!-- ## Allow a shared books folder -->
>*Supported versions: Microsoft Edge on Windows 10, version 1803*<br>
>*Default setting: Disabled or not configured (Not allowed)*

[!INCLUDE [allow-a-shared-books-folder-shortdesc](../shortdesc/allow-a-shared-books-folder-shortdesc.md)]

### Allowed values
|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Prevented/not allowed, but Microsoft Edge downloads book files to a per-user folder for each user. |![Most restricted value](../images/check-gn.png) |
|Enabled |1 |1 |Allowed. | |
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
- **Path:** HLKM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\BooksLibrary
- **Value name:** UseSharedFolderForBooks
- **Value type:** REG_DWORD

### Scenarios

Some schools may use a Shared Cart (a physical cart), to store some devices. For example, at the beginning of the lessons, each student picks up a device and returns their device at the end of the of lessons.

<hr>
