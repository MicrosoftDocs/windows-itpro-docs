---
title: EnterpriseModernAppManagement DDF
description: EnterpriseModernAppManagement DDF
ms.assetid: 
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
---

# EnterpriseModernAppManagement DDF

This topic shows the OMA DM device description framework (DDF) for the **EnterpriseModernAppManagement** configuration service provider. DDF files are used only with OMA DM provisioning XML.

You can download the DDF files from the links below:

- [Download all the DDF files for Windows 10, version 1703](http://download.microsoft.com/download/C/7/C/C7C94663-44CF-4221-ABCA-BC895F42B6C2/Windows10_1703_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1607](http://download.microsoft.com/download/2/3/E/23E27D6B-6E23-4833-B143-915EDA3BDD44/Windows10_1607_DDF.zip)

The XML below is the current version for this CSP.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>EnterpriseModernAppManagement</NodeName>
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
            <NodeName>AppManagement</NodeName>
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
                    </AccessType>
                    <DFFormat>
                        <node />
                    </DFFormat>
                    <Occurrence>
                        <OneOrMore />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFTitle>EnterpriseID</DFTitle>
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
                        <DFTitle>PackageFamilyName</DFTitle>
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
                            <DFTitle>PackageFullName</DFTitle>
                            <DFType>
                                <DDFName></DDFName>
                            </DFType>
                        </DFProperties>
                        <Node>
                            <NodeName>Name</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
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
                        <Node>
                            <NodeName>Version</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
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
                        <Node>
                            <NodeName>Publisher</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
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
                        <Node>
                            <NodeName>Architecture</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
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
                        <Node>
                            <NodeName>InstallLocation</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
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
                        <Node>
                            <NodeName>IsFramework</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                </AccessType>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                        <Node>
                            <NodeName>IsBundle</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                </AccessType>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                        <Node>
                            <NodeName>InstallDate</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
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
                        <Node>
                            <NodeName>ResourceID</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
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
                        <Node>
                            <NodeName>PackageStatus</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                </AccessType>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                        <Node>
                            <NodeName>RequiresReinstall</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                </AccessType>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                        <Node>
                            <NodeName>Users</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
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
                        <Node>
                            <NodeName>IsProvisioned</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                </AccessType>
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
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                    </Node>
                    <Node>
                        <NodeName>DoNotUpdate</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Delete />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <int />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>DoNotUpdate</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>AppSettingPolicy</NodeName>
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
                                <One />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
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
                                    <chr />
                                </DFFormat>
                                <Occurrence>
                                    <ZeroOrMore />
                                </Occurrence>
                                <Scope>
                                    <Dynamic />
                                </Scope>
                                <DFTitle>SettingValue</DFTitle>
                                <DFType>
                                    <MIME>text/plain</MIME>
                                </DFType>
                            </DFProperties>
                        </Node>
                    </Node>
                </Node>
            </Node>
            <Node>
                <NodeName>UpdateScan</NodeName>
                <DFProperties>
                    <AccessType>
                        <Exec />
                    </AccessType>
                    <DFFormat>
                        <null />
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
            <Node>
                <NodeName>LastScanError</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
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
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>AppInventoryResults</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <xml />
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
            <Node>
                <NodeName>AppInventoryQuery</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                        <Replace />
                    </AccessType>
                    <DFFormat>
                        <xml />
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
            <Node>
                <NodeName>RemovePackage</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <xml />
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
        <Node>
            <NodeName>AppInstallation</NodeName>
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
                    <DFTitle>PackageFamilyName</DFTitle>
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>StoreInstall</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Exec />
                            <Add />
                            <Delete />
                            <Get />
                        </AccessType>
                        <DFFormat>
                            <xml />
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
                <Node>
                    <NodeName>HostedInstall</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Exec />
                            <Add />
                            <Delete />
                            <Get />
                        </AccessType>
                        <DFFormat>
                            <xml />
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
                <Node>
                    <NodeName>LastError</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                        </AccessType>
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
                            <MIME>text/plain</MIME>
                        </DFType>
                    </DFProperties>
                </Node>
                <Node>
                    <NodeName>LastErrorDesc</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
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
                <Node>
                    <NodeName>Status</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                        </AccessType>
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
                            <MIME>text/plain</MIME>
                        </DFType>
                    </DFProperties>
                </Node>
                <Node>
                    <NodeName>ProgressStatus</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                        </AccessType>
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
                            <MIME>text/plain</MIME>
                        </DFType>
                    </DFProperties>
                </Node>
            </Node>
        </Node>
        <Node>
            <NodeName>AppLicenses</NodeName>
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
                <NodeName>StoreLicenses</NodeName>
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
                        <DFTitle>LicenseID</DFTitle>
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>LicenseCategory</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
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
                    <Node>
                        <NodeName>LicenseUsage</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
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
                    <Node>
                        <NodeName>RequesterID</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
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
                    <Node>
                        <NodeName>AddLicense</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Exec />
                            </AccessType>
                            <DFFormat>
                                <xml />
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
                    <Node>
                        <NodeName>GetLicenseFromStore</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Exec />
                            </AccessType>
                            <DFFormat>
                                <xml />
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
            </Node>
        </Node>
    </Node>
</MgmtTree>
```

## Related topics

[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)

 

 






