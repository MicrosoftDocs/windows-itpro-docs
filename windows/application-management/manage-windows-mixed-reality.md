---
title: Enable or block Windows Mixed Reality apps in the enterprise (Windows 10)
description: Learn how to enable or block Windows Mixed Reality apps.
keyboards: ["mr", "mr portal", "mixed reality portal", "mixed reality"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: jdeckerms
ms.author: jdecker
ms.date: 10/17/2017
---

# Enable or block Windows Mixed Reality apps in the enterprise

**Applies to**

-   Windows 10

Windows 10, version 1709 (also known as the Fall Creators Update), introduces [Windows Mixed Reality](https://blogs.windows.com/windowsexperience/2017/10/03/the-era-of-windows-mixed-reality-begins-october-17/). Organizations that use Windows Server Update Services (WSUS) must take action to [enable Windows Mixed Reality](#enable). Any organization that wants to prohibit use of Windows Mixed Reality can [block the installation of the Mixed Reality Portal](#block).


<span id="enable" />
## Enable Windows Mixed Reality in WSUS

To enable users to download the Windows Mixed Reality software, enterprises using WSUS can approve Windows Mixed Reality package by unblocking the following KBs:
  
- KB4016509
- KB3180030
- KB3197985
 
Enterprises will not be able to install Windows Mixed Reality Feature on Demand (FOD) directly from WSUS. Instead, use one of the following options to install Windows Mixed Reality software:

- Manually install the Mixed Reality software 
- IT admin can create [Side by side feature store (shared folder)](https://technet.microsoft.com/library/jj127275.aspx)


<span id="block" /> 
## block

You can use the [AppLocker configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/applocker-csp) to block the Mixed Reality software.

In the following example, the **Id** can be any generated GUID and the **Name** can be any name you choose. Note that `BinaryVersionRange="*"` allows you to block any app executable in the Mixed Reality Portal package. **Binary/VersionRange**, as shown in the example, will block all versions of the Mixed Reality Portal app.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Add>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/PolicyManager/My/ApplicationManagement/ApplicationRestrictions</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                    <Type xmlns="syncml:metinf">text/plain</Type>
                </Meta>
                <Data>  
 &lt;RuleCollection Type="Appx" EnforcementMode="Enabled"&gt;
    &lt;FilePublisherRule Id="a9e18c21-ff8f-43cf-b9fc-db40eed693ba" Name="(Default Rule) All signed packaged apps" Description="Allows members of the Everyone group to run packaged apps that are signed." UserOrGroupSid="S-1-1-0" Action="Allow"&gt;
      &lt;Conditions&gt;
        &lt;FilePublisherCondition PublisherName="*" ProductName="*" BinaryName="*"&gt;
          &lt;BinaryVersionRange LowSection="0.0.0.0" HighSection="*" /&gt;
        &lt;/FilePublisherCondition&gt;
      &lt;/Conditions&gt;
    &lt;/FilePublisherRule&gt;
    &lt;FilePublisherRule Id="d26da4e7-0b01-484d-a8d3-d5b5341b2d55" Name="Block Mixed Reality Portal" Description="" UserOrGroupSid="S-1-1-0" Action="Deny"&gt;
      &lt;Conditions&gt;
        &lt;FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.Windows.HolographicFirstRun" BinaryName="*"&gt;
          &lt;BinaryVersionRange LowSection="*" HighSection="*" /&gt;
        &lt;/FilePublisherCondition&gt;
      &lt;/Conditions&gt;
    &lt;/FilePublisherRule&gt;
  &lt;/RuleCollection&gt;&gt;
                </Data>
            </Item>
        </Add>
        <Final/>
    </SyncBody>
</SyncML>

``` 


## Related topics

- [Mixed reality](https://developer.microsoft.com/windows/mixed-reality/mixed_reality)