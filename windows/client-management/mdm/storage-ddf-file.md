---
title: Storage DDF file
description: Learn about the OMA DM device description framework (DDF) for the Storage configuration service provider (CSP).
ms.date: 12/05/2017
---

# Storage DDF file

Storage CSP is deprecated. Use System/AllowStorageCard in [Policy CSP](policy-configuration-service-provider.md) instead.

<!-- 12.16.2021 mandia: Commenting out, as this CSP is specific to Windows 10 Mobile.

This topic shows the OMA DM device description framework (DDF) for the **Storage** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-ddf.md).

The XML below is the current version for this CSP.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC "-//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [
  <?oma-dm-ddf-ver supported-versions="1.2"?>
]>
<MgmtTree>
  <VerDTD>1.2</VerDTD>
  <Node>
    <NodeName>Storage</NodeName>
    <Path>./Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>Root node for Storage CSP.</Description>
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
        <DDFName></DDFName>
      </DFType>
    </DFProperties>
    <Node>
      <NodeName>Disable</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
          <Replace />
        </AccessType>
        <Description>Specifies whether to enable or disable a storage card. A Boolean value of true disables the storage card. The default value is False. The value is case sensitive.</Description>
        <DFFormat>
          <bool />
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
```

-->

## Related topics

System/AllowStorageCard in [Policy CSP](policy-configuration-service-provider.md)

[Storage CSP (deprecated)](storage-csp.md)

[Configuration service provider reference](index.yml)
