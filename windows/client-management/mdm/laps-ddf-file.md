---
title: LAPS DDF file
description: View the XML file containing the device description framework (DDF) for the LAPS configuration service provider.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

# LAPS DDF file

The following XML file contains the device description framework (DDF) for the LAPS configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
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
        <DDFName />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.25145, 10.0.22621.1480, 10.0.22000.1754, 10.0.20348.1663, 10.0.19041.2784, 10.0.17763.4244</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;</MSFT:EditionAllowList>
      </MSFT:Applicability>
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
          <DDFName />
        </DFType>
        <MSFT:AtomicRequired />
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Disabled (password will not be backed up)</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Backup the password to Azure AD only</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Backup the password to Active Directory only</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[1-365]</MSFT:Value>
          </MSFT:AllowedValues>
          <MSFT:DependencyBehavior>
            <MSFT:DependencyGroup FriendlyId="BackupDirectoryAADMode">
              <MSFT:DependencyChangedAllowedValues ValueType="Range">
                <MSFT:Value>[7-365]</MSFT:Value>
              </MSFT:DependencyChangedAllowedValues>
              <MSFT:Dependency Type="DependsOn">
                <MSFT:DependencyUri>Vendor/MSFT/LAPS/Policies/BackupDirectory</MSFT:DependencyUri>
                <MSFT:DependencyAllowedValue ValueType="ENUM">
                  <MSFT:Enum>
                    <MSFT:Value>1</MSFT:Value>
                    <MSFT:ValueDescription>BackupDirectory configured to Azure AD</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:DependencyAllowedValue>
              </MSFT:Dependency>
            </MSFT:DependencyGroup>
            <MSFT:DependencyGroup FriendlyId="BackupDirectoryADMode">
              <MSFT:DependencyChangedAllowedValues ValueType="Range">
                <MSFT:Value>[1-365]</MSFT:Value>
              </MSFT:DependencyChangedAllowedValues>
              <MSFT:Dependency Type="DependsOn">
                <MSFT:DependencyUri>Vendor/MSFT/LAPS/Policies/BackupDirectory</MSFT:DependencyUri>
                <MSFT:DependencyAllowedValue ValueType="ENUM">
                  <MSFT:Enum>
                    <MSFT:Value>2</MSFT:Value>
                    <MSFT:ValueDescription>BackupDirectory configured to Active Directory</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:DependencyAllowedValue>
              </MSFT:Dependency>
            </MSFT:DependencyGroup>
          </MSFT:DependencyBehavior>
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
5=Large letters + small letters + numbers + special characters (improved readability)
6=Passphrase (long words)
7=Passphrase (short words)
8=Passphrase (short words with unique prefixes)

If not specified, this setting will default to 4.

Passphrase list taken from "Deep Dive: EFF's New Wordlists for Random Passphrases" by Electronic Frontier Foundation, and is used under a CC-BY-3.0 Attribution license. See https://go.microsoft.com/fwlink/?linkid=2255471 for more information.</Description>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Large letters</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Large letters + small letters</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>Large letters + small letters + numbers</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>4</MSFT:Value>
              <MSFT:ValueDescription>Large letters + small letters + numbers + special characters</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>5</MSFT:Value>
              <MSFT:ValueDescription>Large letters + small letters + numbers + special characters (improved readability)</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>6</MSFT:Value>
              <MSFT:ValueDescription>Passphrase (long words)</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>7</MSFT:Value>
              <MSFT:ValueDescription>Passphrase (short words)</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>8</MSFT:Value>
              <MSFT:ValueDescription>Passphrase (short words with unique prefixes)</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[8-64]</MSFT:Value>
          </MSFT:AllowedValues>
          <MSFT:DependencyBehavior>
            <MSFT:DependencyGroup FriendlyId="PasswordComplexity">
              <MSFT:Dependency Type="DependsOn">
                <MSFT:DependencyUri>Vendor/MSFT/LAPS/Policies/PasswordComplexity</MSFT:DependencyUri>
                <MSFT:DependencyAllowedValue ValueType="Range">
                  <MSFT:Enum>
                    <MSFT:Value>[1-5]</MSFT:Value>
                    <MSFT:ValueDescription>PasswordComplexity configured to generate a password</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:DependencyAllowedValue>
              </MSFT:Dependency>
            </MSFT:DependencyGroup>
          </MSFT:DependencyBehavior>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>PassphraseLength</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>6</DefaultValue>
          <Description>Use this setting to configure the number of passphrase words.

If not specified, this setting will default to 6 words

This setting has a minimum allowed value of 3 words.

This setting has a maximum allowed value of 10 words.</Description>
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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.26100</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.1</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[3-10]</MSFT:Value>
          </MSFT:AllowedValues>
          <MSFT:DependencyBehavior>
            <MSFT:DependencyGroup FriendlyId="PasswordComplexity">
              <MSFT:Dependency Type="DependsOn">
                <MSFT:DependencyUri>Vendor/MSFT/LAPS/Policies/PasswordComplexity</MSFT:DependencyUri>
                <MSFT:DependencyAllowedValue ValueType="Range">
                  <MSFT:Enum>
                    <MSFT:Value>[6-8]</MSFT:Value>
                    <MSFT:ValueDescription>PasswordComplexity configured to generate a passphrase</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:DependencyAllowedValue>
              </MSFT:Dependency>
            </MSFT:DependencyGroup>
          </MSFT:DependencyBehavior>
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
            <MIME />
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Allow configured password expiriration timestamp to exceed maximum password age</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Do not allow configured password expiriration timestamp to exceed maximum password age</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:DependencyBehavior>
            <MSFT:DependencyGroup FriendlyId="BackupDirectory">
              <MSFT:Dependency Type="DependsOn">
                <MSFT:DependencyUri>Vendor/MSFT/LAPS/Policies/BackupDirectory</MSFT:DependencyUri>
                <MSFT:DependencyAllowedValue ValueType="ENUM">
                  <MSFT:Enum>
                    <MSFT:Value>2</MSFT:Value>
                    <MSFT:ValueDescription>BackupDirectory configured to Active Directory</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:DependencyAllowedValue>
              </MSFT:Dependency>
            </MSFT:DependencyGroup>
          </MSFT:DependencyBehavior>
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
          <DefaultValue>True</DefaultValue>
          <Description>Use this setting to configure whether the password is encrypted before being stored in Active Directory.

This setting is ignored if the password is currently being stored in Azure.

This setting is only honored when the Active Directory domain is at Windows Server 2016 Domain Functional Level or higher.

If this setting is enabled, and the Active Directory domain meets the DFL prerequisite, the password will be encrypted before before being stored in Active Directory.

If this setting is disabled, or the Active Directory domain does not meet the DFL prerequisite, the password will be stored as clear-text in Active Directory.

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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Store the password in clear-text form in Active Directory</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Store the password in encrypted form in Active Directory</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:DependencyBehavior>
            <MSFT:DependencyGroup FriendlyId="BackupDirectory">
              <MSFT:Dependency Type="DependsOn">
                <MSFT:DependencyUri>Vendor/MSFT/LAPS/Policies/BackupDirectory</MSFT:DependencyUri>
                <MSFT:DependencyAllowedValue ValueType="ENUM">
                  <MSFT:Enum>
                    <MSFT:Value>2</MSFT:Value>
                    <MSFT:ValueDescription>BackupDirectory configured to Active Directory</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:DependencyAllowedValue>
              </MSFT:Dependency>
            </MSFT:DependencyGroup>
          </MSFT:DependencyBehavior>
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
            <MIME />
          </DFType>
          <MSFT:DependencyBehavior>
            <MSFT:DependencyGroup FriendlyId="BackupDirectory">
              <MSFT:Dependency Type="DependsOn">
                <MSFT:DependencyUri>Vendor/MSFT/LAPS/Policies/BackupDirectory</MSFT:DependencyUri>
                <MSFT:DependencyAllowedValue ValueType="ENUM">
                  <MSFT:Enum>
                    <MSFT:Value>2</MSFT:Value>
                    <MSFT:ValueDescription>BackupDirectory configured to Active Directory</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:DependencyAllowedValue>
              </MSFT:Dependency>
            </MSFT:DependencyGroup>
          </MSFT:DependencyBehavior>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[0-12]</MSFT:Value>
          </MSFT:AllowedValues>
          <MSFT:DependencyBehavior>
            <MSFT:DependencyGroup FriendlyId="BackupDirectory">
              <MSFT:Dependency Type="DependsOn">
                <MSFT:DependencyUri>Vendor/MSFT/LAPS/Policies/BackupDirectory</MSFT:DependencyUri>
                <MSFT:DependencyAllowedValue ValueType="ENUM">
                  <MSFT:Enum>
                    <MSFT:Value>2</MSFT:Value>
                    <MSFT:ValueDescription>BackupDirectory configured to Active Directory</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:DependencyAllowedValue>
              </MSFT:Dependency>
            </MSFT:DependencyGroup>
          </MSFT:DependencyBehavior>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[0-24]</MSFT:Value>
          </MSFT:AllowedValues>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Reset password: upon expiry of the grace period, the managed account password will be reset.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>Reset the password and logoff the managed account: upon expiry of the grace period, the managed account password will be reset and any interactive logon sessions using the managed account will terminated.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>5</MSFT:Value>
              <MSFT:ValueDescription>Reset the password and reboot: upon expiry of the grace period, the managed account password will be reset and the managed device will be immediately rebooted.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>11</MSFT:Value>
              <MSFT:ValueDescription>Reset the password, logoff the managed account, and terminate any remaining processes: upon expiration of the grace period, the managed account password is reset, any interactive logon sessions using the managed account are logged off, and any remaining processes are terminated.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AutomaticAccountManagementEnabled</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>False</DefaultValue>
          <Description>Use this setting to specify whether automatic account management is enabled.

If this setting is enabled, the target account will be automatically managed.

If this setting is disabled, the target account will not be automatically managed.

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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.26100</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.1</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>The target account will not be automatically managed</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>The target account will be automatically managed</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AutomaticAccountManagementTarget</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>Use this setting to configure which account is automatically managed.

The allowable settings are:

0=The builtin administrator account will be managed.
1=A new account created by Windows LAPS will be managed.

If not specified, this setting will default to 1.</Description>
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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.26100</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.1</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Manage the built-in administrator account</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Manage a new custom administrator account</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:DependencyBehavior>
            <MSFT:DependencyGroup FriendlyId="AutomaticAccountManagementEnabled">
              <MSFT:Dependency Type="DependsOn">
                <MSFT:DependencyUri>Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementEnabled</MSFT:DependencyUri>
                <MSFT:DependencyAllowedValue ValueType="ENUM">
                  <MSFT:Enum>
                    <MSFT:Value>true</MSFT:Value>
                    <MSFT:ValueDescription>AutomaticAccountManagementEnabled enabled</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:DependencyAllowedValue>
              </MSFT:Dependency>
            </MSFT:DependencyGroup>
          </MSFT:DependencyBehavior>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AutomaticAccountManagementNameOrPrefix</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Use this setting to configure the name or prefix of the managed local administrator account.

If specified, the value will be used as the name or name prefix of the managed account.

If not specified, this setting will default to "WLapsAdmin".</Description>
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
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.26100</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.1</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:DependencyBehavior>
            <MSFT:DependencyGroup FriendlyId="AutomaticAccountManagementEnabled">
              <MSFT:Dependency Type="DependsOn">
                <MSFT:DependencyUri>Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementEnabled</MSFT:DependencyUri>
                <MSFT:DependencyAllowedValue ValueType="ENUM">
                  <MSFT:Enum>
                    <MSFT:Value>true</MSFT:Value>
                    <MSFT:ValueDescription>AutomaticAccountManagementEnabled enabled</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:DependencyAllowedValue>
              </MSFT:Dependency>
            </MSFT:DependencyGroup>
          </MSFT:DependencyBehavior>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AutomaticAccountManagementEnableAccount</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>False</DefaultValue>
          <Description>Use this setting to configure whether the automatically managed account is enabled or disabled.

If this setting is enabled, the target account will be enabled.

If this setting is disabled, the target account will be disabled.

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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.26100</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.1</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>False</MSFT:Value>
              <MSFT:ValueDescription>The target account will be disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>True</MSFT:Value>
              <MSFT:ValueDescription>The target account will be enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:DependencyBehavior>
            <MSFT:DependencyGroup FriendlyId="AutomaticAccountManagementEnabled">
              <MSFT:Dependency Type="DependsOn">
                <MSFT:DependencyUri>Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementEnabled</MSFT:DependencyUri>
                <MSFT:DependencyAllowedValue ValueType="ENUM">
                  <MSFT:Enum>
                    <MSFT:Value>true</MSFT:Value>
                    <MSFT:ValueDescription>AutomaticAccountManagementEnabled enabled</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:DependencyAllowedValue>
              </MSFT:Dependency>
            </MSFT:DependencyGroup>
          </MSFT:DependencyBehavior>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AutomaticAccountManagementRandomizeName</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>False</DefaultValue>
          <Description>Use this setting to configure whether the name of the automatically managed account uses a random numeric suffix each time the password is rotated.

If this setting is enabled, the name of the target account will use a random numeric suffix.

If this setting is disbled, the name of the target account will not use a random numeric suffix..

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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.26100</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.1</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>False</MSFT:Value>
              <MSFT:ValueDescription>The name of the target account will not use a random numeric suffix.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>True</MSFT:Value>
              <MSFT:ValueDescription>The name of the target account will use a random numeric suffix.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:DependencyBehavior>
            <MSFT:DependencyGroup FriendlyId="AutomaticAccountManagementEnabled">
              <MSFT:Dependency Type="DependsOn">
                <MSFT:DependencyUri>Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementEnabled</MSFT:DependencyUri>
                <MSFT:DependencyAllowedValue ValueType="ENUM">
                  <MSFT:Enum>
                    <MSFT:Value>true</MSFT:Value>
                    <MSFT:ValueDescription>AutomaticAccountManagementEnabled enabled</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:DependencyAllowedValue>
              </MSFT:Dependency>
            </MSFT:DependencyGroup>
          </MSFT:DependencyBehavior>
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
          <DDFName />
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
            <MIME />
          </DFType>
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
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[LAPS configuration service provider reference](laps-csp.md)
