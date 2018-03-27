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
ms.date: 04/23/2018
---

# Enable or block Windows Mixed Reality apps in the enterprise

**Applies to**

-   Windows 10


[Windows Mixed Reality](https://blogs.windows.com/windowsexperience/2017/10/03/the-era-of-windows-mixed-reality-begins-october-17/) was introduced in Windows 10, version 1709 (also known as the Fall Creators Update). Organizations that use Windows Server Update Services (WSUS) must take action to [enable Windows Mixed Reality](#enable). Any organization that wants to prohibit use of Windows Mixed Reality can [block the installation of the Mixed Reality Portal](#block).


<span id="enable" />
## Enable Windows Mixed Reality in WSUS

To enable users to download the Windows Mixed Reality software for devices running Windows 10, version 1703, enterprises using WSUS can approve Windows Mixed Reality package by unblocking **KB4016509: FeatureOnDemandOasis - Windows 10 version 1703 for x64-based Systems**. 


Enterprises devices running Windows 10, version 1709, will not be able to install Windows Mixed Reality Feature on Demand (FOD) directly from WSUS. 

Windows Mixed Reality will also require a Data Assets update package, if available. In Windows 10, version 1803, you must import the Data Assets update package from the [Microsoft Update Catalog](http://www.catalog.update.microsoft.com/). In Windows 10, version 1709, you can import the Data Assets update package from the catalog or from WSUS. 


For Windows 10, version 1709 and version 1803, use one of the following options to install Windows Mixed Reality software:

- Manually install the Mixed Reality software 
  
  - [Download the Microsoft Windows Holographic Desktop Feature on Demand package.](http://download.microsoft.com/download/6/F/8/6F816172-AC7D-4F45-B967-D573FB450CB7/Microsoft-Windows-Holographic-Desktop-FOD-Package.cab)

  - Obtain the latest Data Assets update package (which is a stand-alone package and not the feature on demand). *Add instructions on locating asset package when we know what an MR KB title will look like* 
 
  - Use `Add-Capability` to add the Windows Mixed Reality feature on demand package to the image, then use `Add-Package` to apply the latest cumulative update, and then use `Add-Package` to add the Data Assets update package. 
  
    For reference: here are the dism commands available to add feature on demand packages and update packages to the image. 
 
    ```
    Add-Package  
    Dism /Image:C:\test\offline /Add-Package /PackagePath:C:\packages\package1.cab 
    ``` 
    ```
    Add-Capability  
    Dism /Online /Add-Capability /Name: OpenSSH.Client~~~~0.0.1.0  
    ```
 
  - Go to **Settings** > **Update & Security** > **Windows Update** and **Check for updates**.
      
- IT admin can create [Side by side feature store (shared folder)](https://technet.microsoft.com/library/jj127275.aspx)


<span id="block" /> 
## Block the Mixed Reality Portal

You can use the [AppLocker configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/applocker-csp) to block the Mixed Reality software.

In the following example, the **Id** can be any generated GUID and the **Name** can be any name you choose. Note that `BinaryName="*"` allows you to block any app executable in the Mixed Reality Portal package. **Binary/VersionRange**, as shown in the example, will block all versions of the Mixed Reality Portal app.

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