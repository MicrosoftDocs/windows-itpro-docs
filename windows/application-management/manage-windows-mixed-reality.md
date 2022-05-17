---
title: Enable or block Windows Mixed Reality apps in the enterprise (Windows 10/11)
description: Learn how to enable Windows Mixed Reality apps in WSUS or block the Windows Mixed Reality portal in enterprises.
ms.reviewer: 
manager: dougeby
ms.prod: w10
ms.localizationpriority: medium
author: aczechowski
ms.author: aaroncz
ms.topic: article
---

# Enable or block Windows Mixed Reality apps in enterprises

[!INCLUDE [Applies to Windows client versions](./includes/applies-to-windows-client-versions.md)]


[Windows Mixed Reality](https://blogs.windows.com/windowsexperience/2017/10/03/the-era-of-windows-mixed-reality-begins-october-17/) was introduced in Windows 10, version 1709 (also known as the Fall Creators Update), as a [Windows Feature on Demand (FOD)](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities). Features on Demand are Windows feature packages that can be added at any time. When a Windows client needs a new feature, it can request the feature package from Windows Update.

Organizations that use Windows Server Update Services (WSUS) must take action to [enable Windows Mixed Reality](#enable-windows-mixed-reality-in-wsus). Any organization that wants to prohibit use of Windows Mixed Reality can [block the installation of the Mixed Reality Portal](#block-the-mixed-reality-portal).

## Enable Windows Mixed Reality in WSUS

1. [Check your version of Windows.](https://support.microsoft.com/help/13443/windows-which-operating-system)

   >[!NOTE]
   >You must be on at least Windows 10, version 1709, to run Windows Mixed Reality.

2. Windows Mixed Reality Feature on Demand (FOD) is downloaded from Windows Update. If access to Windows Update is blocked, you must manually install the Windows Mixed Reality FOD.

   1. Download the FOD .cab file:

        - [Windows 11, version 21H2](https://software-download.microsoft.com/download/sg/Microsoft-Windows-Holographic-Desktop-FOD-Package~31bf3856ad364e35~amd_64~~.cab)
        - [Windows 10, version 2004](https://software-download.microsoft.com/download/pr/6cf73b63/Microsoft-Windows-Holographic-Desktop-FOD-Package~31bf3856ad364e35~amd64~~.cab)
        - [Windows 10, version 1903 and 1909](https://software-download.microsoft.com/download/pr/Microsoft-Windows-Holographic-Desktop-FOD-Package-31bf3856ad364e35-amd64.cab)
        - [Windows 10, version 1809](https://software-download.microsoft.com/download/pr/microsoft-windows-holographic-desktop-fod-package31bf3856ad364e35amd64_1.cab)
        - [Windows 10, version 1803](https://download.microsoft.com/download/9/9/3/9934B163-FA01-4108-A38A-851B4ACD1244/Microsoft-Windows-Holographic-Desktop-FOD-Package~31bf3856ad364e35~amd64~~.cab)
        - [Windows 10, version 1709](https://download.microsoft.com/download/6/F/8/6F816172-AC7D-4F45-B967-D573FB450CB7/Microsoft-Windows-Holographic-Desktop-FOD-Package.cab)

        > [!NOTE]
        > You must download the FOD .cab file that matches your operating system version.

   1. Use `Dism` to add Windows Mixed Reality FOD to the image.

        ```powershell
        Dism /Online /Add-Package /PackagePath:(path)
        ```
      
        > [!NOTE]
        > On Windows 10 and 11, you must rename the FOD .CAB file to: **Microsoft-Windows-Holographic-Desktop-FOD-Package~31bf3856ad364e35~amd64~~.cab**

   1. In **Settings** > **Update & Security** > **Windows Update**, select **Check for updates**.


IT admins can also create [Side by side feature store (shared folder)](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj127275(v=ws.11)) to allow access to the Windows Mixed Reality FOD.

## Block the Mixed Reality Portal

You can use the [AppLocker configuration service provider (CSP)](/windows/client-management/mdm/applocker-csp) to block the Mixed Reality software.

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
                  <RuleCollection Type="Appx" EnforcementMode="Enabled">
                   <FilePublisherRule Id="a9e18c21-ff8f-43cf-b9fc-db40eed693ba" Name="(Default Rule) All signed packaged apps" Description="Allows members of the Everyone group to run packaged apps that are signed." UserOrGroupSid="S-1-1-0" Action="Allow">
                    <Conditions>
                      <FilePublisherCondition PublisherName="*" ProductName="*" BinaryName="*">
                        <BinaryVersionRange LowSection="0.0.0.0" HighSection="*" />
                      </FilePublisherCondition>
                    </Conditions>
                  </FilePublisherRule>
                  <FilePublisherRule Id="d26da4e7-0b01-484d-a8d3-d5b5341b2d55" Name="Block Mixed Reality Portal" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
                   <Conditions>
                     <FilePublisherCondition PublisherName="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" ProductName="Microsoft.Windows.HolographicFirstRun" BinaryName="*">
                      <BinaryVersionRange LowSection="*" HighSection="*" />
                      </FilePublisherCondition>
                    </Conditions>
                  </FilePublisherRule>
                 </RuleCollection>>
                </Data>
            </Item>
        </Add>
        <Final/>
    </SyncBody>
</SyncML>
```


## Related articles

- [Mixed reality](https://developer.microsoft.com/windows/mixed-reality/mixed_reality)
