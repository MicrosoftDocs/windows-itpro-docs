---
title: LAPS DDF file
description: Learn about the OMA DM device description framework (DDF) for the Local Administrator Password Solution configuration service provider.
ms.author: jsimmons
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: jsimmons
ms.localizationpriority: medium
ms.date: 07/04/2022
ms.reviewer: jsimmons
manager: jsimmons
---

# Local Administrator Password Solution DDF file

This article shows the OMA DM device description framework (DDF) for the Local Administrator Password Solution (LAPS) configuration service provider.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-ddf.md).

The XML below is the current version for this CSP.

```xml
<?xml version='1.0' encoding='utf-8' standalone='yes'?>
<identity
  xmlns="urn:Microsoft.CompPlat/ManifestSchema.v1.00"
  xmlns:xsd="http://www.w3.org/2001/XMLSchema"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  owner="Microsoft"
  namespace="Windows-DeviceManagement-CspDefinition"
  name="LAPS">
  <cspDefinition>
    <MgmtTree>
      <VerDTD>1.2</VerDTD>
      <BinaryPath>"%windir%\system32\LapsCSP.dll</BinaryPath>
      <Diagnostics></Diagnostics>
      <ComClsid>{298a6f17-03e7-4bd4-971c-544f359527b7}</ComClsid>
      <Node>
        <NodeName>LAPS</NodeName>
        <Path>./Device/Vendor/MSFT</Path>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>The root node for the LAPS configuration service provider.</Description>
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
          <Applicability>
            <OsBuildVersion>99.9.99999</OsBuildVersion>
            <CspVersion>1.0</CspVersion>
          </Applicability>
          <ExposedTo>
            <Mdm />
          </ExposedTo>
        </DFProperties>
        <Node>
          <NodeName>Policies</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Root node for LAPS policies.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFTitle>Policies</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
            <AtomicRequired />
          </DFProperties>
          <Node>
            <NodeName>BackupDirectory</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Use this setting to configure which directory the local admin account password is backed up to.

The allowable settings are:

0=Disabled (password will not be backed up)
1=Backup the password to Azure AD only
2=Backup the password to Active Directory only

If not specified, this setting will default to 0.</Description>
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
              <AllowedValues ValueType="ENUM">
                <Enum>
                  <Value>0</Value>
                  <ValueDescription>Disabled (password will not be backed up)</ValueDescription>
                </Enum>
                <Enum>
                  <Value>1</Value>
                  <ValueDescription>Backup the password to Azure AD only</ValueDescription>
                </Enum>
                <Enum>
                  <Value>2</Value>
                  <ValueDescription>Backup the password to Active Directory only</ValueDescription>
                </Enum>
              </AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>PasswordAgeDays</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>30</DefaultValue>
              <Description>Use this policy to configure the maximum password age of the managed local administrator account.

If not specified, this setting will default to 30 days

This setting has a minimum allowed value of 1 day when backing the password to onpremises Active Directory, and 7 days when backing the password to Azure AD.

This setting has a maximum allowed value of 365 days.</Description>
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
              <AllowedValues ValueType="Range">
                <Value>[1-365]</Value>
              </AllowedValues>
              <DependencyBehavior>
                <DependencyGroup FriendlyId="BackupDirectory">
                  <DependencyChangedAllowedValues ValueType="Range">
                      <Value>[7-365]</Value>
                  </DependencyChangedAllowedValues>
                  <Dependency Type="DependsOn">
                    <DependencyUri>Vendor/MSFT/LAPS/Policies/BackupDirectory</DependencyUri>
                    <DependencyAllowedValue ValueType="ENUM">
                      <Enum>
                        <Value>1</Value>
                        <ValueDescription>BackupDirectory configured to Azure AD</ValueDescription>
                      </Enum>
                    </DependencyAllowedValue>
                  </Dependency>
                </DependencyGroup>
              </DependencyBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>PasswordComplexity</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>4</DefaultValue>
              <Description>Use this setting to configure password complexity of the managed local administrator account.

The allowable settings are:

1=Large letters
2=Large letters + small letters
3=Large letters + small letters + numbers
4=Large letters + small letters + numbers + special characters

If not specified, this setting will default to 4.</Description>
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
              <AllowedValues ValueType="ENUM">
                <Enum>
                  <Value>1</Value>
                  <ValueDescription>Large letters</ValueDescription>
                </Enum>
                <Enum>
                  <Value>2</Value>
                  <ValueDescription>Large letters + small letters</ValueDescription>
                </Enum>
                <Enum>
                  <Value>3</Value>
                  <ValueDescription>Large letters + small letters + numbers</ValueDescription>
                </Enum>
                <Enum>
                  <Value>4</Value>
                  <ValueDescription>Large letters + small letters + numbers + special characters</ValueDescription>
                </Enum>
              </AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>PasswordLength</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>14</DefaultValue>
              <Description>Use this setting to configure the length of the password of the managed local administrator account.

If not specified, this setting will default to 14 characters.

This setting has a minimum allowed value of 8 characters.

This setting has a maximum allowed value of 64 characters.</Description>
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
              <AllowedValues ValueType="Range">
                <Value>[8-64]</Value>
              </AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AdministratorAccountName</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Use this setting to configure the name of the managed local administrator account.

If not specified, the default built-in local administrator account will be located by well-known SID (even if renamed).

If specified, the specified account's password will be managed.

Note: if a custom managed local administrator account name is specified in this setting, that account must be created via other means. Specifying a name in this setting will not cause the account to be created.</Description>
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
            <NodeName>PasswordExpirationProtectionEnabled</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>True</DefaultValue>
              <Description>Use this setting to configure additional enforcement of maximum password age for the managed local administrator account.

When this setting is enabled, planned password expiration that would result in a password age greater than that dictated by "PasswordAgeDays" policy is NOT allowed. When such expiration is detected, the password is changed immediately and the new password expiration date is set according to policy.

If not specified, this setting defaults to True.</Description>
              <DFFormat>
                <bool />
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
              <AllowedValues ValueType="ENUM">
                <Enum>
                  <Value>false</Value>
                  <ValueDescription>Allow configured password expiriration timestamp to exceed maximum password age</ValueDescription>
                </Enum>
                <Enum>
                  <Value>true</Value>
                  <ValueDescription>Do not allow configured password expiriration timestamp to exceed maximum password age</ValueDescription>
                </Enum>
              </AllowedValues>
              <DependencyBehavior>
                <DependencyGroup FriendlyId="BackupDirectory">
                  <Dependency Type="DependsOn">
                    <DependencyUri>Vendor/MSFT/LAPS/Policies/BackupDirectory</DependencyUri>
                    <DependencyAllowedValue ValueType="ENUM">
                      <Enum>
                        <Value>2</Value>
                        <ValueDescription>BackupDirectory configured to Active Directory</ValueDescription>
                      </Enum>
                    </DependencyAllowedValue>
                  </Dependency>
                </DependencyGroup>
              </DependencyBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ADPasswordEncryptionEnabled</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>False</DefaultValue>
              <Description>Use this setting to configure whether the password is encrypted before being stored in Active Directory.

This setting is ignored if the password is currently being stored in Azure.

This setting is only honored when the Active Directory domain is at Windows Server 2016 Domain Functional Level or higher.

If this setting is enabled, and the Active Directory domain meets the DFL prerequisite, the password will be encrypted before before being stored in Active Directory.

If this setting is disabled, or the Active Directory domain does not meet the DFL prerequisite, the password will be stored as clear-text in Active Directory.

If not specified, this setting defaults to False.</Description>
              <DFFormat>
                <bool />
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
              <AllowedValues ValueType="ENUM">
                <Enum>
                  <Value>false</Value>
                  <ValueDescription>Store the password in clear-text form in Active Directory</ValueDescription>
                </Enum>
                <Enum>
                  <Value>true</Value>
                  <ValueDescription>Store the password in encrypted form in Active Directory</ValueDescription>
                </Enum>
              </AllowedValues>
              <DependencyBehavior>
                <DependencyGroup FriendlyId="BackupDirectory">
                  <Dependency Type="DependsOn">
                    <DependencyUri>Vendor/MSFT/LAPS/Policies/BackupDirectory</DependencyUri>
                    <DependencyAllowedValue ValueType="ENUM">
                      <Enum>
                        <Value>2</Value>
                        <ValueDescription>BackupDirectory configured to Active Directory</ValueDescription>
                      </Enum>
                    </DependencyAllowedValue>
                  </Dependency>
                </DependencyGroup>
              </DependencyBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ADPasswordEncryptionPrincipal</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Use this setting to configure the name or SID of a user or group that can decrypt the password stored in Active Directory.

This setting is ignored if the password is currently being stored in Azure.

If not specified, the password will be decryptable by the Domain Admins group in the device's domain.

If specified, the specified user or group will be able to decrypt the password stored in Active Directory.

If the specified user or group account is invalid the device will fallback to using the Domain Admins group in the device's domain.</Description>
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
              <DependencyBehavior>
                <DependencyGroup FriendlyId="BackupDirectory">
                  <Dependency Type="DependsOn">
                    <DependencyUri>Vendor/MSFT/LAPS/Policies/BackupDirectory</DependencyUri>
                    <DependencyAllowedValue ValueType="ENUM">
                      <Enum>
                        <Value>2</Value>
                        <ValueDescription>BackupDirectory configured to Active Directory</ValueDescription>
                      </Enum>
                    </DependencyAllowedValue>
                  </Dependency>
                </DependencyGroup>
              </DependencyBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ADEncryptedPasswordHistorySize</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Use this setting to configure how many previous encrypted passwords will be remembered in Active Directory.

If not specified, this setting will default to 0 passwords (disabled).

This setting has a minimum allowed value of 0 passwords.

This setting has a maximum allowed value of 12 passwords.</Description>
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
              <AllowedValues ValueType="Range">
                <Value>[0-12]</Value>
              </AllowedValues>
              <DependencyBehavior>
                <DependencyGroup FriendlyId="BackupDirectory">
                  <Dependency Type="DependsOn">
                    <DependencyUri>Vendor/MSFT/LAPS/Policies/BackupDirectory</DependencyUri>
                    <DependencyAllowedValue ValueType="ENUM">
                      <Enum>
                        <Value>2</Value>
                        <ValueDescription>BackupDirectory configured to Active Directory</ValueDescription>
                      </Enum>
                    </DependencyAllowedValue>
                  </Dependency>
                </DependencyGroup>
              </DependencyBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>PostAuthenticationResetDelay</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>24</DefaultValue>
              <Description>Use this setting to specify the amount of time (in hours) to wait after an authentication before executing the specified post-authentication actions.

  If not specified, this setting will default to 24 hours.

  This setting has a minimum allowed value of 0 hours (this disables all post-authentication actions).

  This setting has a maximum allowed value of 24 hours.</Description>
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
              <AllowedValues ValueType="Range">
                <Value>[0-24]</Value>
              </AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>PostAuthenticationActions</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>3</DefaultValue>
              <Description>Use this setting to specify the actions to take upon expiration of the configured grace period.

If not specified, this setting will default to 3 (Reset the password and logoff the managed account).
              </Description>
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
              <AllowedValues ValueType="ENUM">
                <Enum>
                  <Value>1</Value>
                  <ValueDescription>Reset password: upon expiry of the grace period, the managed account password will be reset.</ValueDescription>
                </Enum>
                <Enum>
                  <Value>3</Value>
                  <ValueDescription>Reset the password and logoff the managed account: upon expiry of the grace period, the managed account password will be reset and any interactive logon sessions using the managed account will terminated.</ValueDescription>
                </Enum>
                <Enum>
                  <Value>5</Value>
                  <ValueDescription>Reset the password and reboot: upon expiry of the grace period, the managed account password will be reset and the managed device will be immediately rebooted.</ValueDescription>
                </Enum>
              </AllowedValues>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>Actions</NodeName>
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
            <DFTitle>Actions</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>ResetPassword</NodeName>
            <DFProperties>
              <AccessType>
                <Exec />
              </AccessType>
              <Description>Use this setting to tell the CSP to immediately generate and store a new password for the managed local administrator account.</Description>
              <DFFormat>
                <null />
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
              <AsynchronousTracking ResourceSuccessURI="ResetPasswordStatus" ResourceSuccessValues="0" ResourceInProgressValues="10" ResourceFailureValues="20"/>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ResetPasswordStatus</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Use this setting to query the status of the last submitted ResetPassword execute action.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>ResetPasswordStatus</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </MgmtTree>
  </cspDefinition>
</identity>
```

## Related articles

[LAPS configuration service provider](laps-csp.md)
