<!-- Disable Lockdown of Start Pages -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting: Enabled (Start pages are not editable)*

[!INCLUDE [disable-lockdown-of-start-pages-shortdesc](../shortdesc/disable-lockdown-of-start-pages-shortdesc.md)]
 
### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Not configured |0 |0 |Lockdown Start pages configured in either the Configure Open Microsoft Edge With policy and Configure Start Pages policy. |![Most restricted value](../images/check-gn.png) |
|Enabled |1 |1 |Unlocked. Users can make changes to all configured start pages.<p><p>When you enable this policy and define a set of URLs in the Configure Start Pages policy, Microsoft Edge uses the URLs defined in the Configure Open Microsoft Edge With policy. | |
---

### Configuration options

For more details about configuring the Start pages, see [Start pages configuration options](../group-policies/start-pages-gp.md).


### ADMX info and settings
#### ADMX info
- **GP English name:** Disable lockdown of Start pages
- **GP name:** DisableLockdownOfStartPages
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[DisableLockdownOfStartPages](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-disablelockdownofstartpages)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/DisableLockdownOfStartPages 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings
- **Value name:** DisableLockdownOfStartPages
- **Value type:** REG_SZ





### Related Policies
- [Configure Start pages](../available-policies.md#configure-start-pages): [!INCLUDE [configure-start-pages-shortdesc](../shortdesc/configure-start-pages-shortdesc.md)]  

- [Configure Open Microsoft Edge With](../new-policies.md#configure-open-microsoft-edge-with): [!INCLUDE [configure-open-microsoft-edge-with-shortdesc](../shortdesc/configure-open-microsoft-edge-with-shortdesc.md)]

### Related topics

[!INCLUDE [browser-extension-policy-shortdesc-include](browser-extension-policy-shortdesc-include.md)]

<hr>