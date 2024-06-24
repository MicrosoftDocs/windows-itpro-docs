---
title: WindowsDefenderApplicationGuard DDF file
description: View the XML file containing the device description framework (DDF) for the WindowsDefenderApplicationGuard configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# WindowsDefenderApplicationGuard DDF file

The following XML file contains the device description framework (DDF) for the WindowsDefenderApplicationGuard configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>WindowsDefenderApplicationGuard</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>Root Node</Description>
      <DFFormat>
        <node />
      </DFFormat>
      <Occurrence>
        <One />
      </Occurrence>
      <Scope>
        <Permanent />
      </Scope>
      <DFType>
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.1</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>Settings</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Interior Node for Settings</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <DDFName />
        </DFType>
      </DFProperties>
      <Node>
        <NodeName>AllowWindowsDefenderApplicationGuard</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Turn on Microsoft Defender Application Guard in Enterprise Mode.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Disable Microsoft Defender Application Guard</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Enable Microsoft Defender Application Guard for Microsoft Edge ONLY</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Enable Microsoft Defender Application Guard for isolated Windows environments ONLY</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>Enable Microsoft Defender Application Guard for Microsoft Edge AND isolated Windows environments</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:GpMapping GpEnglishName="AllowAppHVSI" GpAreaPath="Windows Components~Microsoft Defender Application Guard" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ClipboardFileType</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Determines the type of content that can be copied from the host to Application Guard environment and vice versa.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Allow text copying.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Allow image copying.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>Allow text and image copying.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:GpMapping GpEnglishName="AppHVSIClipboardFileType" GpAreaPath="Windows Components~Microsoft Defender Application Guard" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ClipboardSettings</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This policy setting allows you to decide how the clipboard behaves while in Application Guard.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Completely turns Off the clipboard functionality for the Application Guard.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Turns On clipboard operation from an isolated session to the host.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Turns On clipboard operation from the host to an isolated session.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>Turns On clipboard operation in both the directions.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:GpMapping GpEnglishName="AppHVSIClipboardSettings" GpAreaPath="Windows Components~Microsoft Defender Application Guard" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>PrintingSettings</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This policy setting allows you to decide how the print functionality behaves while in Application Guard.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Disables all print functionality.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Enables only XPS printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Enables only PDF printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>Enables both PDF and XPS printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>4</MSFT:Value>
              <MSFT:ValueDescription>Enables only local printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>5</MSFT:Value>
              <MSFT:ValueDescription>Enables both local and XPS printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>6</MSFT:Value>
              <MSFT:ValueDescription>Enables both local and PDF printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>7</MSFT:Value>
              <MSFT:ValueDescription>Enables local, PDF, and XPS printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>8</MSFT:Value>
              <MSFT:ValueDescription>Enables only network printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>9</MSFT:Value>
              <MSFT:ValueDescription>Enables both network and XPS printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>10</MSFT:Value>
              <MSFT:ValueDescription>Enables both network and PDF printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>11</MSFT:Value>
              <MSFT:ValueDescription>Enables network, PDF, and XPS printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>12</MSFT:Value>
              <MSFT:ValueDescription>Enables both network and local printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>13</MSFT:Value>
              <MSFT:ValueDescription>Enables network, local, and XPS printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>14</MSFT:Value>
              <MSFT:ValueDescription>Enables network, local, and PDF printing.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>15</MSFT:Value>
              <MSFT:ValueDescription>Enables all printing.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:GpMapping GpEnglishName="AppHVSIPrintingSettings" GpAreaPath="Windows Components~Microsoft Defender Application Guard" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>BlockNonEnterpriseContent</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This policy setting allows you to decide whether websites can load non-enterprise content in Microsoft Edge and Internet Explorer.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Non-enterprise content embedded in enterprise sites is allowed to open outside of the Microsoft Defender Application Guard container, directly in Internet Explorer and Microsoft Edge.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Non-enterprise content embedded on enterprise sites are stopped from opening in Internet Explorer or Microsoft Edge outside of Microsoft Defender Application Guard.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:GpMapping GpEnglishName="BlockNonEnterpriseContent" GpAreaPath="Windows Components~Microsoft Defender Application Guard" />
          <MSFT:Deprecated />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AllowPersistence</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>This policy setting allows you to decide whether data should persist across different sessions in Application Guard.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Application Guard discards user-downloaded files and other items (such as, cookies, Favorites, and so on) during machine restart or user log-off.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Application Guard saves user-downloaded files and other items (such as, cookies, Favorites, and so on) for use in future Application Guard sessions.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:GpMapping GpEnglishName="AllowPersistence" GpAreaPath="Windows Components~Microsoft Defender Application Guard" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AllowVirtualGPU</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This policy setting allows you to determine whether Application Guard can use the virtual Graphics Processing Unit (GPU) to process graphics. If you enable this setting, Microsoft Defender Application Guard uses Hyper-V to access supported, high-security rendering graphics hardware (GPUs). These GPUs improve rendering performance and battery life while using Microsoft Defender Application Guard, particularly for video playback and other graphics-intensive use cases. If you enable this setting without connecting any high-security rendering graphics hardware, Microsoft Defender Application Guard will automatically revert to software-based (CPU) rendering.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.2</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Cannot access the vGPU and uses the CPU to support rendering graphics. When the policy is not configured, it is the same as disabled (0).</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Turns on the functionality to access the vGPU offloading graphics rendering from the CPU. This can create a faster experience when working with graphics intense websites or watching video within the container.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:GpMapping GpEnglishName="AllowVirtualGPU" GpAreaPath="Windows Components~Microsoft Defender Application Guard" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SaveFilesToHost</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This policy setting allows you to determine whether users can elect to download files from Edge in the container and persist files them from container to the host operating system.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.2</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>The user cannot download files from Edge in the container to the host file system. When the policy is not configured, it is the same as disabled (0).</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Turns on the functionality to allow users to download files from Edge in the container to the host file system.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:GpMapping GpEnglishName="SaveFilesToHost" GpAreaPath="Windows Components~Microsoft Defender Application Guard" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>CertificateThumbprints</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>This policy setting allows certain device level Root Certificates to be shared with the Microsoft Defender Application Guard container. If you enable this setting, certificates with a thumbprint matching the ones specified will be transferred into the container. Multiple certificates can be specified by using a comma to separate the thumbprints for each certificate you want to transfer. Here's an example: b4e72779a8a362c860c36a6461f31e3aa7e58c14,1b1d49f06d2a697a544a1059bd59a7b058cda924. If you disable or don’t configure this setting, certificates are not shared with the Microsoft Defender Application Guard container.</Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <CaseSense>
            <CIS />
          </CaseSense>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="None">
            <MSFT:List Delimiter="," />
          </MSFT:AllowedValues>
          <MSFT:GpMapping GpEnglishName="CertificateThumbprints" GpAreaPath="Windows Components~Microsoft Defender Application Guard" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AllowCameraMicrophoneRedirection</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This policy setting allows you to determine whether applications inside Microsoft Defender Application Guard can access the device’s camera and microphone when these settings are enabled on the user’s device. If you enable this policy setting, applications inside Microsoft Defender Application Guard will be able to access the camera and microphone on the user’s device. If you disable or don't configure this policy setting, applications inside Microsoft Defender Application Guard will be unable to access the camera and microphone on the user’s device.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Microsoft Defender Application Guard cannot access the device’s camera and microphone. When the policy is not configured, it is the same as disabled (0).</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Turns on the functionality to allow Microsoft Defender Application Guard to access the device’s camera and microphone.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:GpMapping GpEnglishName="AllowCameraMicrophoneRedirection" GpAreaPath="Windows Components~Microsoft Defender Application Guard" />
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>Status</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns bitmask that indicates status of Application Guard installation and pre-requisites on the device. Bit 0 - Set to 1 when Application Guard is enabled into enterprise manage mode. Bit 1 - Set to 1 when the client machine is Hyper-V capable. Bit 2 - Set to 1 when the client machine has a valid OS license and SKU. Bit 3 - Set to 1 when Application Guard installed on the client machine. Bit 4 - Set to 1 when required Network Isolation Policies are configured. Bit 5 - Set to 1 when the client machine meets minimum hardware requirements. Bit 6 - Set to 1 when system reboot is required.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>PlatformStatus</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns bitmask that indicates status of Application Guard platform installation and prerequisites on the device.  Bit 0 - Set to 1 when Application Guard is enabled into enterprise manage mode. Bit 1 - Set to 1 when the client machine is Hyper-V capable. Bit 2 - Reserved for Microsoft. Bit 3 - Set to 1 when Application Guard is installed on the client machine. Bit 4 - Reserved for Microsoft. Bit 5 - Set to 1 when the client machine meets minimum hardware requirements.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.4</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>InstallWindowsDefenderApplicationGuard</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
          <Get />
        </AccessType>
        <Description>Initiates remote installation of Application Guard feature.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>Install</MSFT:Value>
            <MSFT:ValueDescription>Will initiate feature install.</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>Uninstall</MSFT:Value>
            <MSFT:ValueDescription>Will initiate feature uninstall.</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>Audit</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Interior node for Audit</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <DDFName />
        </DFType>
      </DFProperties>
      <Node>
        <NodeName>AuditApplicationGuard</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This policy setting allows you to decide whether auditing events can be collected from Application Guard.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Audit event logs aren't collected for Application Guard.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Application Guard inherits its auditing policies from system and starts to audit security events for Application Guard container.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:GpMapping GpEnglishName="AuditApplicationGuard" GpAreaPath="Windows Components~Microsoft Defender Application Guard" />
        </DFProperties>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[WindowsDefenderApplicationGuard configuration service provider reference](windowsdefenderapplicationguard-csp.md)
