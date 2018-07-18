<!-- ## Do not sync -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Disabled or not configured (Turned on)*

[!INCLUDE [do-not-sync-shortdesc](../shortdesc/do-not-sync-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Allowed/turned on. Users can choose what to sync to their device. | |
|Enabled |2 |2 |Prevented/turned off. Disables the Sync your Settings toggle and prevents syncing. |![Most restricted value](../images/check-gn.png) |
---

### ADMX info and settings
| |
|---|
|**ADMX info**<ul><li>**GP English name:** Do not sync</li><li>**GP name:** AllowSyncMySettings</li><li>**GP path:** Windows Components/Microsoft Edge</li><li>**GP ADMX file name:** MicrosoftEdge.admx</li></ul>**MDM settings**<ul><li>**MDM name:** Experience/[AllowSyncMySettings](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#experience-allowsyncmysettings)</li><li>**Supported devices:** Desktop</li><li>**URI full path:** ./Vendor/MSFT/Policy/Config/Experience/AllowSyncMySettings </li><li>**Data type:** Integer</li></ul>**Registry**<ul><li>**Path:** HKLM\Software\Policies\Microsoft\Windows\SettingSync</li><li>**Value name:** DisableSettingSync</li><li>**Value type:** REG_DWORD</li></ul>  |
---

### Related topics 
[About sync setting on Microsoft Edge on Windows 10 devices](http://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices): Learn about what settings are sync'ed.


<hr>