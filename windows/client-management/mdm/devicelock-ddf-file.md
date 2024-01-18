---
title: DeviceLock DDF file
description: Learn about the OMA DM device description framework (DDF) for the DeviceLock configuration service provider (CSP).
ms.date: 06/26/2017
---

# DeviceLock DDF file

This policy is deprecated. Use [Policy CSP](policy-configuration-service-provider.md) instead.

<!-- 12.16.2021 mandia: Commenting out, as this CSP is specific to Windows Phone 8.1.

This topic shows the OMA DM device description framework (DDF) for the **DeviceLock** configuration service provider. DDF files are used only with OMA DM provisioning XML.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC "-//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree>
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>DeviceLock</NodeName>
        <Path>./Vendor/MSFT</Path>
        <DFProperties>
            <AccessType>
                <Get />
            </AccessType>
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
                <DDFName>com.microsoft/1.0/WindowsPhone/DeviceLock </DDFName>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>Provider</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
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
                <NodeName></NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Get />
                        <Delete />
                    </AccessType>
                    <DFFormat>
                        <node />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                  <NodeName>DevicePasswordEnabled</NodeName>
                  <DFProperties>
                      <AccessType>
                          <Add />
                          <Get />
                          <Replace />
                      </AccessType>
                      <DefaultValue>1</DefaultValue>
                      <DFFormat>
                          <int />
                      </DFFormat>
                      <Occurrence>
                          <ZeroOrOne />
                      </Occurrence>
                      <Scope>
                          <Dynamic />
                      </Scope>
                      <DFType>
                          <MIME>text/plain</MIME>
                      </DFType>
                  </DFProperties>
                </Node>
                <Node>
                  <NodeName>AllowSimpleDevicePassword</NodeName>
                  <DFProperties>
                      <AccessType>
                          <Add />
                          <Get />
                          <Replace />
                      </AccessType>
                      <DefaultValue>1</DefaultValue>
                      <DFFormat>
                          <int />
                      </DFFormat>
                      <Occurrence>
                          <ZeroOrOne />
                      </Occurrence>
                      <Scope>
                          <Dynamic />
                      </Scope>
                      <DFType>
                          <MIME>text/plain</MIME>
                      </DFType>
                  </DFProperties>
               </Node>
               <Node>
                  <NodeName>MinDevicePasswordLength</NodeName>
                  <DFProperties>
                      <AccessType>
                          <Add />
                          <Get />
                          <Replace />
                      </AccessType>
                      <DefaultValue>4</DefaultValue>
                      <DFFormat>
                          <int />
                      </DFFormat>
                      <Occurrence>
                          <ZeroOrOne />
                      </Occurrence>
                      <Scope>
                          <Dynamic />
                      </Scope>
                      <DFType>
                          <MIME>text/plain</MIME>
                      </DFType>
                  </DFProperties>
              </Node>
              <Node>
                  <NodeName>AlphanumericDevicePasswordRequired</NodeName>
                  <DFProperties>
                      <AccessType>
                        <Add />
                        <Get />
                        <Replace />
                      </AccessType>
                      <DefaultValue>2</DefaultValue>
                      <DFFormat>
                        <int />
                      </DFFormat>
                      <Occurrence>
                        <ZeroOrOne />
                      </Occurrence>
                      <Scope>
                        <Dynamic />
                      </Scope>
                      <DFType>
                        <MIME>text/plain</MIME>
                      </DFType>
                  </DFProperties>
              </Node>
              <Node>
                  <NodeName>DevicePasswordExpiration</NodeName>
                  <DFProperties>
                      <AccessType>
                          <Add />
                          <Get />
                          <Replace />
                      </AccessType>
                      <DefaultValue>0</DefaultValue>
                      <DFFormat>
                          <int />
                      </DFFormat>
                      <Occurrence>
                          <ZeroOrOne />
                      </Occurrence>
                      <Scope>
                          <Dynamic />
                      </Scope>
                      <DFType>
                          <MIME>text/plain</MIME>
                      </DFType>
                  </DFProperties>
              </Node>
              <Node>
                  <NodeName>DevicePasswordHistory</NodeName>
                  <DFProperties>
                      <AccessType>
                          <Add />
                          <Get />
                          <Replace />
                      </AccessType>
                      <DefaultValue>0</DefaultValue>
                      <DFFormat>
                          <int />
                      </DFFormat>
                      <Occurrence>
                          <ZeroOrOne />
                      </Occurrence>
                      <Scope>
                          <Dynamic />
                      </Scope>
                      <DFType>
                          <MIME>text/plain</MIME>
                      </DFType>
                  </DFProperties>
             </Node>
             <Node>
                  <NodeName>MaxDevicePasswordFailedAttempts</NodeName>
                  <DFProperties>
                      <AccessType>
                          <Add />
                          <Get />
                          <Replace />
                      </AccessType>
                      <DefaultValue>0</DefaultValue>
                      <DFFormat>
                          <int />
                      </DFFormat>
                      <Occurrence>
                          <ZeroOrOne />
                      </Occurrence>
                      <Scope>
                          <Dynamic />
                      </Scope>
                      <DFType>
                          <MIME>text/plain</MIME>
                      </DFType>
                  </DFProperties>
             </Node>
             <Node>
                  <NodeName>MaxInactivityTimeDeviceLock</NodeName>
                  <DFProperties>
                      <AccessType>
                          <Add />
                          <Get />
                          <Replace />
                      </AccessType>
                      <DefaultValue>0</DefaultValue>
                      <DFFormat>
                          <int />
                      </DFFormat>
                      <Occurrence>
                          <ZeroOrOne />
                      </Occurrence>
                      <Scope>
                          <Dynamic />
                      </Scope>
                      <DFType>
                          <MIME>text/plain</MIME>
                      </DFType>
                  </DFProperties>
             </Node>
             <Node>
                  <NodeName>MinDevicePasswordComplexCharacters</NodeName>
                  <DFProperties>
                      <AccessType>
                          <Add />
                          <Get />
                          <Replace />
                      </AccessType>
                      <DefaultValue>1</DefaultValue>
                      <DFFormat>
                          <int />
                      </DFFormat>
                      <Occurrence>
                          <ZeroOrOne />
                      </Occurrence>
                      <Scope>
                          <Dynamic />
                      </Scope>
                      <DFType>
                          <MIME>text/plain</MIME>
                      </DFType>
                  </DFProperties>
             </Node>
         </Node>
      </Node>
      <Node>
            <NodeName>DeviceValue</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
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
                <NodeName>DevicePasswordEnabled</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <int />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>AllowSimpleDevicePassword</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <int />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>MinDevicePasswordLength</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <int />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>AlphanumericDevicePasswordRequired</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <int />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>DevicePasswordExpiration</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <int />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>DevicePasswordHistory</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <int />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>MaxDevicePasswordFailedAttempts</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <int />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>MaxInactivityTimeDeviceLock</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <int />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>MinDevicePasswordComplexCharacters</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <int />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
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
    </Node>
</MgmtTree>
```
-->

## Related topics

[Policy CSP](policy-configuration-service-provider.md)

[DeviceLock configuration service provider](devicelock-csp.md)
