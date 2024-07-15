---
title: EnterpriseModernAppManagement DDF file
description: View the XML file containing the device description framework (DDF) for the EnterpriseModernAppManagement configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# EnterpriseModernAppManagement DDF file

The following XML file contains the device description framework (DDF) for the EnterpriseModernAppManagement configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>EnterpriseModernAppManagement</NodeName>
    <Path>./User/Vendor/MSFT</Path>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>AppManagement</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Used for inventory and app management (post-install).</Description>
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
        <NodeName>AppStore</NodeName>
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
          <DFType>
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.</Description>
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
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ClientInventory />
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>Full name of the package installed.</Description>
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
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:ClientInventory />
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>Name</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Name of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Version</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Version of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Publisher</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Publisher name of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Architecture</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Architecture of installed package. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InstallLocation</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Install location of the app on the device. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsFramework</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsBundle</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InstallDate</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description> Date the app was installed. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ResourceID</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>PackageStatus</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Provides information about the status of the package. Value type is int. Valid values are: OK (0) - The package is usable. LicenseIssue (1) - The license of the package is not valid. Modified (2) - The package payload was modified by an unknown source. Tampered (4) - The package payload was tampered intentionally. Disabled (8) - The package is not available for use. It can still be serviced.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>RequiresReinstall</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed. </Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Users</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Registered users of the app and the package install state. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsProvisioned</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsStub</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>This node is used to identify whether the package is a stub package. A stub package is a version of the package with minimal functionality that will reduce the size of the app.</Description>
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
                  <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                  <MSFT:CspVersion>1.2</MSFT:CspVersion>
                </MSFT:Applicability>
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
              <Description>Specifies whether you want to block a specific app from being updated via auto-updates.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
              <Description>Interior node for all managed app setting values.</Description>
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
                <DDFName />
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>
              </NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>The SettingValue and data represent a key value pair to be configured for the app. The node represents the name of the key and the data represents the value. You can find this value in LocalSettings in the Managed.App.Settings container.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:DynamicNodeNaming>
                  <MSFT:UniqueName>SettingValue represents a Key in a Key Value Pair.  Values can be found in LocalSettings in the Managed.App.Settings container.</MSFT:UniqueName>
                </MSFT:DynamicNodeNaming>
              </DFProperties>
            </Node>
          </Node>
          <Node>
            <NodeName>MaintainProcessorArchitectureOnUpdate</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specify whether on a AMD64 device, across an app update, the architecture of the installed app must not change. For example if you have the x86 flavor of a Windows app installed, with this setting enabled, across an update, the x86 flavor will be installed even when x64 flavor is available.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>MaintainProcessorArchitectureOnUpdate</DFTitle>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>ReleaseManagement</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Interior node for the managing updates through the Microsoft Store. These settings allow the IT admin to specify update channels for apps that they want their users to use for receiving updates. It allows the IT admin to assign a specific release to a smaller group for testing before the large deployment to the rest of the organization.</Description>
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
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description> Identifier for the app or set of apps. If there is only one app, it is the PackageFamilyName. If it is for a set of apps, it is the PackageFamilyName of the main app.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <DFTitle>ReleaseManagementKey</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:UniqueName>If there is only one app, the name is the PackageFamilyName. If it is for a set of apps, the name is the PackageFamilyName of the main app.</MSFT:UniqueName>
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>ChannelId</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Specifies the app channel ID.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ReleaseManagementId</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>The IT admin can specify a release ID to indicate a specific release that they would like the user or device to be on.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>EffectiveRelease</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Interior node used to specify the effective app release to use when multiple user policies are set on the device. The device policy or last user policy is used.</Description>
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
                <NodeName>ChannelId</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Returns the last user channel ID on the device.</Description>
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
                    <MIME />
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>ReleaseManagementId</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Returns the last user release ID on the device.</Description>
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
                    <MIME />
                  </DFType>
                </DFProperties>
              </Node>
            </Node>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>nonStore</NodeName>
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
          <DFType>
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.</Description>
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
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ClientInventory />
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>Full name of the package installed.</Description>
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
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:ClientInventory />
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>Name</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Name of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Version</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Version of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Publisher</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Publisher name of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Architecture</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Architecture of installed package. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InstallLocation</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Install location of the app on the device. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsFramework</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsBundle</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InstallDate</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description> Date the app was installed. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ResourceID</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>PackageStatus</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Provides information about the status of the package. Value type is int. Valid values are: OK (0) - The package is usable. LicenseIssue (1) - The license of the package is not valid. Modified (2) - The package payload was modified by an unknown source. Tampered (4) - The package payload was tampered intentionally. Disabled (8) - The package is not available for use. It can still be serviced.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>RequiresReinstall</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed. </Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Users</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Registered users of the app and the package install state. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsProvisioned</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsStub</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>This node is used to identify whether the package is a stub package. A stub package is a version of the package with minimal functionality that will reduce the size of the app.</Description>
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
                  <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                  <MSFT:CspVersion>1.2</MSFT:CspVersion>
                </MSFT:Applicability>
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
              <Description>Specifies whether you want to block a specific app from being updated via auto-updates.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
              <Description>Interior node for all managed app setting values.</Description>
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
                <DDFName />
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>
              </NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>The SettingValue and data represent a key value pair to be configured for the app. The node represents the name of the key and the data represents the value. You can find this value in LocalSettings in the Managed.App.Settings container.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:DynamicNodeNaming>
                  <MSFT:UniqueName>SettingValue represents a Key in a Key Value Pair.  Values can be found in LocalSettings in the Managed.App.Settings container.</MSFT:UniqueName>
                </MSFT:DynamicNodeNaming>
              </DFProperties>
            </Node>
          </Node>
          <Node>
            <NodeName>MaintainProcessorArchitectureOnUpdate</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specify whether on a AMD64 device, across an app update, the architecture of the installed app must not change. For example if you have the x86 flavor of a Windows app installed, with this setting enabled, across an update, the x86 flavor will be installed even when x64 flavor is available.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>MaintainProcessorArchitectureOnUpdate</DFTitle>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>ReleaseManagement</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Interior node for the managing updates through the Microsoft Store. These settings allow the IT admin to specify update channels for apps that they want their users to use for receiving updates. It allows the IT admin to assign a specific release to a smaller group for testing before the large deployment to the rest of the organization.</Description>
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
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description> Identifier for the app or set of apps. If there is only one app, it is the PackageFamilyName. If it is for a set of apps, it is the PackageFamilyName of the main app.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <DFTitle>ReleaseManagementKey</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:UniqueName>If there is only one app, the name is the PackageFamilyName. If it is for a set of apps, the name is the PackageFamilyName of the main app.</MSFT:UniqueName>
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>ChannelId</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Specifies the app channel ID.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ReleaseManagementId</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>The IT admin can specify a release ID to indicate a specific release that they would like the user or device to be on.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>EffectiveRelease</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Interior node used to specify the effective app release to use when multiple user policies are set on the device. The device policy or last user policy is used.</Description>
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
                <NodeName>ChannelId</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Returns the last user channel ID on the device.</Description>
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
                    <MIME />
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>ReleaseManagementId</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Returns the last user release ID on the device.</Description>
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
                    <MIME />
                  </DFType>
                </DFProperties>
              </Node>
            </Node>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>System</NodeName>
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
          <DFType>
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.</Description>
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
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ClientInventory />
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>Full name of the package installed.</Description>
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
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:ClientInventory />
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>Name</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Name of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Version</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Version of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Publisher</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Publisher name of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Architecture</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Architecture of installed package. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InstallLocation</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Install location of the app on the device. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsFramework</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsBundle</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InstallDate</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description> Date the app was installed. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ResourceID</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>PackageStatus</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Provides information about the status of the package. Value type is int. Valid values are: OK (0) - The package is usable. LicenseIssue (1) - The license of the package is not valid. Modified (2) - The package payload was modified by an unknown source. Tampered (4) - The package payload was tampered intentionally. Disabled (8) - The package is not available for use. It can still be serviced.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>RequiresReinstall</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed. </Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Users</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Registered users of the app and the package install state. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsProvisioned</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsStub</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>This node is used to identify whether the package is a stub package. A stub package is a version of the package with minimal functionality that will reduce the size of the app.</Description>
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
                  <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                  <MSFT:CspVersion>1.2</MSFT:CspVersion>
                </MSFT:Applicability>
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
              <Description>Specifies whether you want to block a specific app from being updated via auto-updates.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
              <Description>Interior node for all managed app setting values.</Description>
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
                <DDFName />
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>
              </NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>The SettingValue and data represent a key value pair to be configured for the app. The node represents the name of the key and the data represents the value. You can find this value in LocalSettings in the Managed.App.Settings container.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:DynamicNodeNaming>
                  <MSFT:UniqueName>SettingValue represents a Key in a Key Value Pair.  Values can be found in LocalSettings in the Managed.App.Settings container.</MSFT:UniqueName>
                </MSFT:DynamicNodeNaming>
              </DFProperties>
            </Node>
          </Node>
          <Node>
            <NodeName>MaintainProcessorArchitectureOnUpdate</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specify whether on a AMD64 device, across an app update, the architecture of the installed app must not change. For example if you have the x86 flavor of a Windows app installed, with this setting enabled, across an update, the x86 flavor will be installed even when x64 flavor is available.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>MaintainProcessorArchitectureOnUpdate</DFTitle>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>ReleaseManagement</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Interior node for the managing updates through the Microsoft Store. These settings allow the IT admin to specify update channels for apps that they want their users to use for receiving updates. It allows the IT admin to assign a specific release to a smaller group for testing before the large deployment to the rest of the organization.</Description>
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
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description> Identifier for the app or set of apps. If there is only one app, it is the PackageFamilyName. If it is for a set of apps, it is the PackageFamilyName of the main app.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <DFTitle>ReleaseManagementKey</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:UniqueName>If there is only one app, the name is the PackageFamilyName. If it is for a set of apps, the name is the PackageFamilyName of the main app.</MSFT:UniqueName>
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>ChannelId</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Specifies the app channel ID.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ReleaseManagementId</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>The IT admin can specify a release ID to indicate a specific release that they would like the user or device to be on.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>EffectiveRelease</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Interior node used to specify the effective app release to use when multiple user policies are set on the device. The device policy or last user policy is used.</Description>
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
                <NodeName>ChannelId</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Returns the last user channel ID on the device.</Description>
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
                    <MIME />
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>ReleaseManagementId</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Returns the last user release ID on the device.</Description>
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
                    <MIME />
                  </DFType>
                </DFProperties>
              </Node>
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
          <Description>Used to start the Windows Update scan.</Description>
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
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>LastScanError</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Reports the last error code returned by the update scan.</Description>
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
        <NodeName>AppInventoryResults</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Returns the results for app inventory that was created after the AppInventoryQuery operation.</Description>
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
            <MIME />
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
          <Description>Specifies the query for app inventory.</Description>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>RemovePackage</NodeName>
        <DFProperties>
          <AccessType>
            <Exec />
            <Get />
          </AccessType>
          <Description>Used to remove packages.</Description>
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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.2</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ResetPackage</NodeName>
        <DFProperties>
          <AccessType>
            <Exec />
            <Get />
          </AccessType>
          <Description>Used to restore the Windows app to its initial configuration.</Description>
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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.2</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>AppInstallation</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Used to perform app installation.</Description>
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
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description> Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.</Description>
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
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Package family name (PFN) of the app.</MSFT:UniqueName>
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>StoreInstall</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Exec />
              <Get />
            </AccessType>
            <Description>Command to perform an install of an app and a license from the Microsoft Store.</Description>
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
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>HostedInstall</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Exec />
              <Get />
            </AccessType>
            <Description>Command to perform an install of an app package from a hosted location (this can be a local drive, a UNC, or https data source).</Description>
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
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LastError</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Last error relating to the app installation.</Description>
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
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LastErrorDesc</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Description of last error relating to the app installation.</Description>
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
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Status</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Status of app installation. The following values are returned: NOT_INSTALLED (0) - The node was added, but the execution has not completed. INSTALLING (1) - Execution has started, but the deployment has not completed. If the deployment completes regardless of success, this value is updated. FAILED (2) - Installation failed. The details of the error can be found under LastError and LastErrorDescription. INSTALLED (3) - Once an install is successful this node is cleaned up, however in the event the clean up action has not completed, this state may briefly appear.</Description>
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
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProgressStatus</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>An integer the indicates the progress of the app installation. For https locations, this indicates the download progress. ProgressStatus is not available for provisioning and it is only for user-based installations. In provisioning, the value is always 0 (zero).</Description>
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
        <Description>Used to manage licenses for app scenarios.</Description>
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
        <NodeName>StoreLicenses</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Used to manage licenses for store apps.</Description>
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
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>License ID for a store installed app. The license ID is generally the PFN of the app.</Description>
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
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>License ID for a store installed app. The license ID is generally the PFN of the app.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>LicenseCategory</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Category of license that is used to classify various license sources. Valid value: Unknown - unknown license category. Retail - license sold through retail channels, typically from the Microsoft Store. Enterprise - license sold through the enterprise sales channel, typically from the Store for Business. OEM - license issued to an OEM. Developer - developer license, typically installed during the app development or side-loading scenarios.</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>LicenseUsage</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Indicates the allowed usage for the license. Valid values: Unknown - usage is unknown. Online - the license is only valid for online usage. This is for applications with concurrence requirements, such as an app used on several computers, but can only be used on one at any given time. Offline - license is valid for use offline. You don't need a connection to the internet to use this license. Enterprise Root - The license is valid for line of business apps.</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RequesterID</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Identifier for the entity that requested the license, such as the client who acquired the license. For example, all licenses issued by the Store for Business for a particular enterprise client has the same RequesterID.</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AddLicense</NodeName>
            <DFProperties>
              <AccessType>
                <Exec />
              </AccessType>
              <Description>Command to add license.</Description>
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
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>GetLicenseFromStore</NodeName>
            <DFProperties>
              <AccessType>
                <Exec />
              </AccessType>
              <Description>Command to get license from the store.</Description>
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
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
  </Node>
  <Node>
    <NodeName>EnterpriseModernAppManagement</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>AppManagement</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Used for inventory and app management (post-install).</Description>
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
        <NodeName>AppStore</NodeName>
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
          <DFType>
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.</Description>
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
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ClientInventory />
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>Full name of the package installed.</Description>
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
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:ClientInventory />
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>Name</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Name of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Version</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Version of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Publisher</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Publisher name of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Architecture</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Architecture of installed package. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InstallLocation</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Install location of the app on the device. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsFramework</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsBundle</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InstallDate</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description> Date the app was installed. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ResourceID</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>PackageStatus</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Provides information about the status of the package. Value type is int. Valid values are: OK (0) - The package is usable. LicenseIssue (1) - The license of the package is not valid. Modified (2) - The package payload was modified by an unknown source. Tampered (4) - The package payload was tampered intentionally. Disabled (8) - The package is not available for use. It can still be serviced.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>RequiresReinstall</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed. </Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Users</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Registered users of the app and the package install state. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsProvisioned</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsStub</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>This node is used to identify whether the package is a stub package. A stub package is a version of the package with minimal functionality that will reduce the size of the app.</Description>
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
                  <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                  <MSFT:CspVersion>1.2</MSFT:CspVersion>
                </MSFT:Applicability>
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
              <Description>Specifies whether you want to block a specific app from being updated via auto-updates.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>MaintainProcessorArchitectureOnUpdate</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specify whether on a AMD64 device, across an app update, the architecture of the installed app must not change. For example if you have the x86 flavor of a Windows app installed, with this setting enabled, across an update, the x86 flavor will be installed even when x64 flavor is available.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>MaintainProcessorArchitectureOnUpdate</DFTitle>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>NonRemovable</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>This setting allows the IT admin to set an app to be nonremovable, or unable to be uninstalled by a user. This is useful in enterprise and education scenarios, where the IT admin might want to ensure that everyone always has certain apps and they won't be removed accidentally. This is also useful when there are multiple users per device, and you want to ensure that one user doesn’t remove it for all users.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>NonRemovable</DFTitle>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>app is not in the nonremovable app policy list</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>app is included in the nonremovable app policy list</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>ReleaseManagement</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Interior node for the managing updates through the Microsoft Store. These settings allow the IT admin to specify update channels for apps that they want their users to use for receiving updates. It allows the IT admin to assign a specific release to a smaller group for testing before the large deployment to the rest of the organization.</Description>
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
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description> Identifier for the app or set of apps. If there is only one app, it is the PackageFamilyName. If it is for a set of apps, it is the PackageFamilyName of the main app.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <DFTitle>ReleaseManagementKey</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:UniqueName>If there is only one app, the name is the PackageFamilyName. If it is for a set of apps, the name is the PackageFamilyName of the main app.</MSFT:UniqueName>
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>ChannelId</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Specifies the app channel ID.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ReleaseManagementId</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>The IT admin can specify a release ID to indicate a specific release that they would like the user or device to be on.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>EffectiveRelease</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Interior node used to specify the effective app release to use when multiple user policies are set on the device. The device policy or last user policy is used.</Description>
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
                <NodeName>ChannelId</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Returns the last user channel ID on the device.</Description>
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
                    <MIME />
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>ReleaseManagementId</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Returns the last user release ID on the device.</Description>
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
                    <MIME />
                  </DFType>
                </DFProperties>
              </Node>
            </Node>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>nonStore</NodeName>
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
          <DFType>
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.</Description>
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
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ClientInventory />
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>Full name of the package installed.</Description>
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
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:ClientInventory />
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>Name</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Name of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Version</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Version of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Publisher</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Publisher name of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Architecture</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Architecture of installed package. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InstallLocation</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Install location of the app on the device. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsFramework</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsBundle</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InstallDate</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description> Date the app was installed. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ResourceID</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>PackageStatus</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Provides information about the status of the package. Value type is int. Valid values are: OK (0) - The package is usable. LicenseIssue (1) - The license of the package is not valid. Modified (2) - The package payload was modified by an unknown source. Tampered (4) - The package payload was tampered intentionally. Disabled (8) - The package is not available for use. It can still be serviced.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>RequiresReinstall</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed. </Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Users</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Registered users of the app and the package install state. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsProvisioned</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsStub</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>This node is used to identify whether the package is a stub package. A stub package is a version of the package with minimal functionality that will reduce the size of the app.</Description>
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
                  <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                  <MSFT:CspVersion>1.2</MSFT:CspVersion>
                </MSFT:Applicability>
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
              <Description>Specifies whether you want to block a specific app from being updated via auto-updates.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>MaintainProcessorArchitectureOnUpdate</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specify whether on a AMD64 device, across an app update, the architecture of the installed app must not change. For example if you have the x86 flavor of a Windows app installed, with this setting enabled, across an update, the x86 flavor will be installed even when x64 flavor is available.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>MaintainProcessorArchitectureOnUpdate</DFTitle>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>NonRemovable</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>This setting allows the IT admin to set an app to be nonremovable, or unable to be uninstalled by a user. This is useful in enterprise and education scenarios, where the IT admin might want to ensure that everyone always has certain apps and they won't be removed accidentally. This is also useful when there are multiple users per device, and you want to ensure that one user doesn’t remove it for all users.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>NonRemovable</DFTitle>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>app is not in the nonremovable app policy list</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>app is included in the nonremovable app policy list</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>ReleaseManagement</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Interior node for the managing updates through the Microsoft Store. These settings allow the IT admin to specify update channels for apps that they want their users to use for receiving updates. It allows the IT admin to assign a specific release to a smaller group for testing before the large deployment to the rest of the organization.</Description>
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
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description> Identifier for the app or set of apps. If there is only one app, it is the PackageFamilyName. If it is for a set of apps, it is the PackageFamilyName of the main app.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <DFTitle>ReleaseManagementKey</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:UniqueName>If there is only one app, the name is the PackageFamilyName. If it is for a set of apps, the name is the PackageFamilyName of the main app.</MSFT:UniqueName>
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>ChannelId</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Specifies the app channel ID.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ReleaseManagementId</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>The IT admin can specify a release ID to indicate a specific release that they would like the user or device to be on.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>EffectiveRelease</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Interior node used to specify the effective app release to use when multiple user policies are set on the device. The device policy or last user policy is used.</Description>
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
                <NodeName>ChannelId</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Returns the last user channel ID on the device.</Description>
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
                    <MIME />
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>ReleaseManagementId</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Returns the last user release ID on the device.</Description>
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
                    <MIME />
                  </DFType>
                </DFProperties>
              </Node>
            </Node>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>System</NodeName>
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
          <DFType>
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.</Description>
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
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ClientInventory />
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>Full name of the package installed.</Description>
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
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:ClientInventory />
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>Name</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Name of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Version</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Version of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Publisher</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Publisher name of the app. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Architecture</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Architecture of installed package. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InstallLocation</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Install location of the app on the device. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsFramework</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsBundle</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>InstallDate</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description> Date the app was installed. Value type is string.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ResourceID</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>PackageStatus</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Provides information about the status of the package. Value type is int. Valid values are: OK (0) - The package is usable. LicenseIssue (1) - The license of the package is not valid. Modified (2) - The package payload was modified by an unknown source. Tampered (4) - The package payload was tampered intentionally. Disabled (8) - The package is not available for use. It can still be serviced.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>RequiresReinstall</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed. </Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Users</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Registered users of the app and the package install state. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsProvisioned</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IsStub</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>This node is used to identify whether the package is a stub package. A stub package is a version of the package with minimal functionality that will reduce the size of the app.</Description>
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
                  <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                  <MSFT:CspVersion>1.2</MSFT:CspVersion>
                </MSFT:Applicability>
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
              <Description>Specifies whether you want to block a specific app from being updated via auto-updates.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>MaintainProcessorArchitectureOnUpdate</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specify whether on a AMD64 device, across an app update, the architecture of the installed app must not change. For example if you have the x86 flavor of a Windows app installed, with this setting enabled, across an update, the x86 flavor will be installed even when x64 flavor is available.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>MaintainProcessorArchitectureOnUpdate</DFTitle>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>NonRemovable</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>This setting allows the IT admin to set an app to be nonremovable, or unable to be uninstalled by a user. This is useful in enterprise and education scenarios, where the IT admin might want to ensure that everyone always has certain apps and they won't be removed accidentally. This is also useful when there are multiple users per device, and you want to ensure that one user doesn’t remove it for all users.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>NonRemovable</DFTitle>
              <DFType>
                <MIME />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>app is not in the nonremovable app policy list</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>app is included in the nonremovable app policy list</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AppUpdateSettings</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>AppUpdateSettings nodes to support the auto-update and auto-repair feature for a specific package</Description>
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
                <DDFName />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.2</MSFT:CspVersion>
              </MSFT:Applicability>
            </DFProperties>
            <Node>
              <NodeName>AutoUpdateSettings</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                </AccessType>
                <Description>AutoUpdateSettings nodes to support the auto-updates for a specific package</Description>
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
                  <DDFName />
                </DFType>
              </DFProperties>
              <Node>
                <NodeName>PackageSource</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <Description>PackageSource node that points the update location for a specific package</Description>
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
                  <MSFT:AllowedValues ValueType="RegEx">
                    <MSFT:Value>^(([^;]+(?i)(\.appinstaller)([;]|$)){1,11})$</MSFT:Value>
                    <MSFT:List Delimiter=";" />
                  </MSFT:AllowedValues>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>AutomaticBackgroundTask</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>False</DefaultValue>
                  <Description>Specifies whether AutomaticBackgroundTask is enabled/disabled for a specific package</Description>
                  <DFFormat>
                    <bool />
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
                      <MSFT:Value>True</MSFT:Value>
                      <MSFT:ValueDescription>AutomaticBackgroundTask is enabled for the package</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>False</MSFT:Value>
                      <MSFT:ValueDescription>AutomaticBackgroundTask is disabled for the package</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:AllowedValues>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>OnLaunchUpdateCheck</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>False</DefaultValue>
                  <Description>Specifies whether OnLaunchUpdateCheck is enabled/disabled for a specific package</Description>
                  <DFFormat>
                    <bool />
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
                      <MSFT:Value>True</MSFT:Value>
                      <MSFT:ValueDescription>OnLaunchUpdateCheck is enabled for the package</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>False</MSFT:Value>
                      <MSFT:ValueDescription>OnLaunchUpdateCheck is disabled for the package</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:AllowedValues>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>HoursBetweenUpdateChecks</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>8</DefaultValue>
                  <Description>Specifies HoursBetweenUpdateChecks for a specific package</Description>
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
                  <MSFT:AllowedValues ValueType="Range">
                    <MSFT:Value>[8-10000]</MSFT:Value>
                  </MSFT:AllowedValues>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>ShowPrompt</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>False</DefaultValue>
                  <Description>Specifies whether the auto-update setting ShowPrompt is enabled/disabled for a specific package</Description>
                  <DFFormat>
                    <bool />
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
                      <MSFT:Value>True</MSFT:Value>
                      <MSFT:ValueDescription>ShowPrompt is enabled for the package</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>False</MSFT:Value>
                      <MSFT:ValueDescription>ShowPrompt is disabled for the package</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:AllowedValues>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>UpdateBlocksActivation</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>False</DefaultValue>
                  <Description>Specifies whether the auto-update setting UpdateBlocksActivation is enabled/disabled for a specific package</Description>
                  <DFFormat>
                    <bool />
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
                      <MSFT:Value>True</MSFT:Value>
                      <MSFT:ValueDescription>UpdateBlocksActivation is enabled for the package</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>False</MSFT:Value>
                      <MSFT:ValueDescription>UpdateBlocksActivation is disabled for the package</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:AllowedValues>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>ForceUpdateFromAnyVersion</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>False</DefaultValue>
                  <Description>Specifies whether the auto-update setting ForceUpdateFromAnyVersion is enabled/disabled for a specific package</Description>
                  <DFFormat>
                    <bool />
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
                      <MSFT:Value>True</MSFT:Value>
                      <MSFT:ValueDescription>ForceUpdateFromAnyVersion is enabled for the package</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>False</MSFT:Value>
                      <MSFT:ValueDescription>ForceUpdateFromAnyVersion is disabled for the package</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:AllowedValues>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>Disable</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>False</DefaultValue>
                  <Description>Specifies whether the auto-update settings is enabled/disabled for a specific package</Description>
                  <DFFormat>
                    <bool />
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
                      <MSFT:Value>True</MSFT:Value>
                      <MSFT:ValueDescription>AutoUpdates settings is disabled for the package</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>False</MSFT:Value>
                      <MSFT:ValueDescription>AutoUpdates settings is enabled for the package</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:AllowedValues>
                </DFProperties>
              </Node>
            </Node>
            <Node>
              <NodeName>AutoRepair</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                </AccessType>
                <Description>AutoRepair node to support auto-repair feature for a specific package</Description>
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
                  <DDFName />
                </DFType>
              </DFProperties>
              <Node>
                <NodeName>PackageSource</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <Description>PackageSource node that points the update location for a specific package</Description>
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
                  <MSFT:AllowedValues ValueType="RegEx">
                    <MSFT:Value>^(([^;]+(?i)(\.appx|\.eappx|\.appxbundle|\.eappxbundle|\.msix|\.emsix|\.msixbundle|\.emsixbundle)([;]|$)){0,10}|([^;]+(?i)(\.appinstaller)([;]|$)){0,10})$</MSFT:Value>
                    <MSFT:List Delimiter=";" />
                  </MSFT:AllowedValues>
                </DFProperties>
              </Node>
            </Node>
          </Node>
        </Node>
        <Node>
          <NodeName>ReleaseManagement</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Interior node for the managing updates through the Microsoft Store. These settings allow the IT admin to specify update channels for apps that they want their users to use for receiving updates. It allows the IT admin to assign a specific release to a smaller group for testing before the large deployment to the rest of the organization.</Description>
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
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description> Identifier for the app or set of apps. If there is only one app, it is the PackageFamilyName. If it is for a set of apps, it is the PackageFamilyName of the main app.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Permanent />
              </Scope>
              <DFTitle>ReleaseManagementKey</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:UniqueName>If there is only one app, the name is the PackageFamilyName. If it is for a set of apps, the name is the PackageFamilyName of the main app.</MSFT:UniqueName>
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>ChannelId</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Specifies the app channel ID.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ReleaseManagementId</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>The IT admin can specify a release ID to indicate a specific release that they would like the user or device to be on.</Description>
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
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>EffectiveRelease</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Interior node used to specify the effective app release to use when multiple user policies are set on the device. The device policy or last user policy is used.</Description>
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
                <NodeName>ChannelId</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Returns the last user channel ID on the device.</Description>
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
                    <MIME />
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>ReleaseManagementId</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Returns the last user release ID on the device.</Description>
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
                    <MIME />
                  </DFType>
                </DFProperties>
              </Node>
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
          <Description>Used to start the Windows Update scan.</Description>
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
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>LastScanError</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Reports the last error code returned by the update scan.</Description>
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
        <NodeName>AppInventoryResults</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Returns the results for app inventory that was created after the AppInventoryQuery operation.</Description>
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
            <MIME />
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
          <Description>Specifies the query for app inventory.</Description>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ResetPackage</NodeName>
        <DFProperties>
          <AccessType>
            <Exec />
            <Get />
          </AccessType>
          <Description>Used to restore the Windows app to its initial configuration.</Description>
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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.2</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>AppInstallation</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Used to perform app installation.</Description>
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
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description> Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.</Description>
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
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Package family name (PFN) of the app.</MSFT:UniqueName>
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>StoreInstall</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Exec />
              <Get />
            </AccessType>
            <Description>Command to perform an install of an app and a license from the Microsoft Store.</Description>
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
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>HostedInstall</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Exec />
              <Get />
            </AccessType>
            <Description>Command to perform an install of an app package from a hosted location (this can be a local drive, a UNC, or https data source).</Description>
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
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LastError</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Last error relating to the app installation.</Description>
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
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LastErrorDesc</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Description of last error relating to the app installation.</Description>
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
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Status</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Status of app installation. The following values are returned: NOT_INSTALLED (0) - The node was added, but the execution has not completed. INSTALLING (1) - Execution has started, but the deployment has not completed. If the deployment completes regardless of success, this value is updated. FAILED (2) - Installation failed. The details of the error can be found under LastError and LastErrorDescription. INSTALLED (3) - Once an install is successful this node is cleaned up, however in the event the clean up action has not completed, this state may briefly appear.</Description>
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
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProgressStatus</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>An integer the indicates the progress of the app installation. For https locations, this indicates the download progress. ProgressStatus is not available for provisioning and it is only for user-based installations. In provisioning, the value is always 0 (zero).</Description>
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
        <Description>Used to manage licenses for app scenarios.</Description>
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
        <NodeName>StoreLicenses</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Used to manage licenses for store apps.</Description>
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
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>License ID for a store installed app. The license ID is generally the PFN of the app.</Description>
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
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>License ID for a store installed app. The license ID is generally the PFN of the app.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>LicenseCategory</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Category of license that is used to classify various license sources. Valid value: Unknown - unknown license category. Retail - license sold through retail channels, typically from the Microsoft Store. Enterprise - license sold through the enterprise sales channel, typically from the Store for Business. OEM - license issued to an OEM. Developer - developer license, typically installed during the app development or side-loading scenarios.</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>LicenseUsage</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Indicates the allowed usage for the license. Valid values: Unknown - usage is unknown. Online - the license is only valid for online usage. This is for applications with concurrence requirements, such as an app used on several computers, but can only be used on one at any given time. Offline - license is valid for use offline. You don't need a connection to the internet to use this license. Enterprise Root - The license is valid for line of business apps.</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RequesterID</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Identifier for the entity that requested the license, such as the client who acquired the license. For example, all licenses issued by the Store for Business for a particular enterprise client has the same RequesterID.</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AddLicense</NodeName>
            <DFProperties>
              <AccessType>
                <Exec />
              </AccessType>
              <Description>Command to add license.</Description>
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
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>GetLicenseFromStore</NodeName>
            <DFProperties>
              <AccessType>
                <Exec />
              </AccessType>
              <Description>Command to get license from the store.</Description>
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
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[EnterpriseModernAppManagement configuration service provider reference](enterprisemodernappmanagement-csp.md)
