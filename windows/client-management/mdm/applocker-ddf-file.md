---
title: AppLocker DDF file
description: AppLocker DDF file
ms.assetid: 79E199E0-5454-413A-A57A-B536BDA22496
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 12/05/2017
---

# AppLocker DDF file


This topic shows the OMA DM device description framework (DDF) for the **AppLocker** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>AppLocker</NodeName>
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
                <DDFName></DDFName>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>ApplicationLaunchRestrictions</NodeName>
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
                <CaseSense>
                    <CIS />
                </CaseSense>
                <DFType>
                    <DDFName></DDFName>
                </DFType>
            </DFProperties>
            <Node>
                <NodeName></NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Delete />
                        <Get />
                        <Replace />
                    </AccessType>
                    <DFFormat>
                        <node />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrMore />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFTitle>Grouping</DFTitle>
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>EXE</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
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
                        <NodeName>Policy</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
                        <NodeName>EnforcementMode</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
                        <NodeName>NonInteractiveProcessEnforcement</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
                <Node>
                    <NodeName>MSI</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
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
                        <NodeName>Policy</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
                        <NodeName>EnforcementMode</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
                <Node>
                    <NodeName>Script</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
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
                        <NodeName>Policy</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
                        <NodeName>EnforcementMode</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
                <Node>
                    <NodeName>StoreApps</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
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
                        <NodeName>Policy</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
                        <NodeName>EnforcementMode</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
                <Node>
                    <NodeName>DLL</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
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
                        <NodeName>Policy</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
                        <NodeName>EnforcementMode</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
                        <NodeName>NonInteractiveProcessEnforcement</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
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
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                </Node>
                <Node>
                    <NodeName>CodeIntegrity</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
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
                        <NodeName>Policy</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <b64 />
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
        </Node>
        <Node>
            <NodeName>EnterpriseDataProtection</NodeName>
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
                        <Delete />
                        <Get />
                        <Replace />
                    </AccessType>
                    <DFFormat>
                        <node />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrMore />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFTitle>Grouping</DFTitle>
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>EXE</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
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
                        <NodeName>Policy</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
                <Node>
                    <NodeName>StoreApps</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                            <Replace />
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
                        <NodeName>Policy</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
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
        </Node>
    </Node>
</MgmtTree>
```

## Related topics


[AppLocker configuration service provider](applocker-csp.md)

 

 






