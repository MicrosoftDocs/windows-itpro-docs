<!-- Configure collection of browsing data for Microsoft 365 Analytics -->  
>*Supported versions: Microsoft Edge on Windows 10, next major update to Windows*<br>
>*Default setting:  Disabled or not configured (No data collected or sent)*

[!INCLUDE [configure-browser-telemetry-for-m365-analytics-shortdesc](../shortdesc/configure-browser-telemetry-for-m365-analytics-shortdesc.md)]


>[!IMPORTANT]
>For this policy to work, enable the Allow Telemetry policy with the _Enhanced_ option and enable the Configure the Commercial ID policy by providing the Commercial ID.

### Supported values

[!div class="mx-tableFixed"]
|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |No data collected or sent |![Most restricted value](../images/check-gn.png) |
|Enabled |1 |1 |Send intranet history only | |
|Enabled |2 |2 |Send Internet history only | |
|Enabled |3 |3 |Send both intranet and Internet history | |
---

>>You can find this policy and the related policies in the following location of the Group Policy Editor:
>> 
>>**_Computer Configuration\\Administrative Templates\\Windows Components\\Data Collection and Preview Builds\\_**
>><ul><li>Allow Telemetry = Enabled, _Enhanced_</li><li>Configure the Commercial ID = String of the Commercial ID</li><li>Configure collection of browsing data for Microsoft 365 Analytics</li></ul> 



### ADMX info and settings
#### ADMX info
- **GP English name:** Configure collection of browsing data for Microsoft 365 Analytics
- **GP name:** ConfigureTelemetryForMicrosoft365Analytics
- **GP element:** ZonesListBox
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx


#### MDM settings
- **MDM name:** Browser/[ConfigureTelemetryForMicrosoft365Analytics](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configuretelemetryformicrosoft365analytics)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureTelemetryForMicrosoft365Analytics
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection
- **Value name:** MicrosoftEdgeDataOptIn
- **Value type:** REG_DWORD

### Related policies
- Allow Telemetry: Allows Microsoft to run diagnostics on the device and troubleshoot. The default setting for Allow Telemetry is set to _Enhanced_  (2 for MDM). 

- Configure the Commercial ID: Define the Commercial ID used to associate the device's telemetry data as belonging to a given organization.

<hr>
