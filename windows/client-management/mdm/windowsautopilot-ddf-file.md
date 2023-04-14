---
title: WindowsAutopilot DDF file
description: Learn how, without the ability to mark a device as remediation required, the device will remain in a broken state for the WindowsAutopilot DDF file configuration service provider (CSP).
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 02/07/2022
ms.reviewer:
manager: aaroncz
---

# WindowsAutopilot DDF file

> [!WARNING]
> Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This topic shows the device description framework (DDF) for the **WindowsAutopilot** configuration service provider.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-ddf.md).

```xml
<NodeName>WindowsAutopilot</NodeName>
        <Path>./Vendor/MSFT</Path>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>These settings enable configuration of Windows Autopilot.</Description>
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
            <MIME>com.microsoft/1.0/MDM/WindowsAutopilot</MIME>
          </DFType>
          <Applicability>
            <OsBuildVersion>99.9.99999, 10.0.19041.1202, 10.0.19042.1202, 10.0.19043.1202</OsBuildVersion>
            <CspVersion>1.0</CspVersion>
          </Applicability>
          <ExposedTo>
            <Mdm />
          </ExposedTo>
        </DFProperties>
        <Node>
          <NodeName>HardwareMismatchRemediationData</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>This data is used to remediate Autopilot hardware mismatches.</Description>
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
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
      </Node>
    </MgmtTree>
  </cspDefinition>
</identity>
```

## Related topics

[WindowsAutopilot configuration service provider](windowsautopilot-csp.md)
