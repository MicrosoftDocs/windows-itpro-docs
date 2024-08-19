---
title: SurfaceHub DDF file
description: View the XML file containing the device description framework (DDF) for the SurfaceHub configuration service provider.
ms.date: 08/16/2024
---

<!-- Auto-Generated CSP Document -->

# SurfaceHub DDF file

The following XML file contains the device description framework (DDF) for the SurfaceHub configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics />
  <Node>
    <NodeName>SurfaceHub</NodeName>
    <Path>./Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The root node for the Surface Hub configuration service provider.</Description>
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
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBF;0xCA;0xCB;0xCD;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>DeviceAccount</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for setting device account information. A device account is a Microsoft Exchange account that is connected with Skype for Business, which allows people to join scheduled meetings, make Skype for Business calls, and share content from the device. See the Surface Hub administrator guide for more information about setting up a device account.  To use a device account from Azure Active Directory: 1. Set the UserPrincipalName (for Azure AD). 2. Set a valid Password. 3. Execute ValidateAndCommit to validate the specified username and password combination against Azure AD. 4. Get the ErrorContext in case something goes wrong during validation.</Description>
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
        <CaseSense>
          <CS />
        </CaseSense>
      </DFProperties>
      <Node>
        <NodeName>DomainName</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Domain of the device account when you are using Active Directory. To use a device account from Active Directory, you should specify both DomainName and UserName for the device account.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>UserName</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Username of the device account when you are using Active Directory. To use a device account from Active Directory, you should specify both DomainName and UserName for the device account.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>UserPrincipalName</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>User principal name (UPN) of the device account. To use a device account from Azure Active Directory or a hybrid deployment, you should specify the UPN of the device account.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>Password</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Password for the device account. Get is allowed here, but will always return a blank.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ValidateAndCommit</NodeName>
        <DFProperties>
          <AccessType>
            <Exec />
          </AccessType>
          <Description>This method validates the data provided and then commits the changes.</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ExchangeServer</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Exchange server of the device account. Normally, the device will try to auto-discover the Exchange server. This field is only required if auto-discovery fails.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SipAddress</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Session Initiation Protocol (SIP) address of the device account. Normally, the device will try to auto-discover the SIP. This field is only required if auto-discovery fails.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>Email</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Email address of the device account.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>CalendarSyncEnabled</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Specifies whether calendar sync and other Exchange server services is enabled.</Description>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ErrorContext</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>If there is an error calling ValidateAndCommit, there will be additional context for that error in this node.</Description>
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
        <NodeName>PasswordRotationPeriod</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Specifies whether automatic password rotation is enabled. If you enforce a password expiration policy on the device account, use this setting to allow the device to manage its own password by changing it frequently, without requiring you to manually update the account information when the password expires. You can reset the password at any time using Active Directory (or Azure AD).</Description>
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
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Password rotation enabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ExchangeModernAuthEnabled</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>True</DefaultValue>
          <Description>Specifies whether Device Account calendar sync will attempt to use token-based Modern Authentication to connect to the Exchange Server.</Description>
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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.19041.789, 10.19042.789, 99.9.9999</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>False</MSFT:Value>
              <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>True</MSFT:Value>
              <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>MaintenanceHoursSimple</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for maintenance schedule.</Description>
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
        <NodeName>Hours</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Node for maintenance schedule.</Description>
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
          <NodeName>StartTime</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Specifies the start time for maintenance hours in minutes from midnight. For example, to set a 2:00 am start time, set this value to 120.</Description>
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
            <MSFT:AllowedValues ValueType="Range">
              <MSFT:Value>[0-1439]</MSFT:Value>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Duration</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Specifies the duration of maintenance window in minutes. For example, to set a 3-hour duration, set this value to 180.</Description>
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
            <MSFT:AllowedValues ValueType="Range">
              <MSFT:Value>[0-1439]</MSFT:Value>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>InBoxApps</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for the in-box app settings.</Description>
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
        <NodeName>SkypeForBusiness</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Node for the Skype for Business settings.</Description>
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
          <NodeName>DomainName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Specifies the domain of the Skype for Business account when you are using Active Directory. For more information, see https://docs.microsoft.com/en-us/SkypeForBusiness/set-up-skype-for-business-online/set-up-skype-for-business-online?redirectSourcePath=%252fen-us%252farticle%252fSet-up-Skype-for-Business-Online-40296968-e779-4259-980b-c2de1c044c6e#bkmk_users</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="None" />
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>Welcome</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Node for the welcome screen.</Description>
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
          <NodeName>AutoWakeScreen</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Setting for the screen to wake up and stay on with sensor activity.</Description>
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
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>False</MSFT:Value>
                <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>True</MSFT:Value>
                <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>CurrentBackgroundPath</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Background image for the welcome screen. To set this, specify an https URL to a PNG file (only PNGs are supported for security reasons). If any certificate authorities need to be trusted in order to access the URL, please ensure they are valid and installed on the Hub, otherwise it may not be able to load the image.</Description>
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
            <MSFT:AllowedValues ValueType="None" />
          </DFProperties>
        </Node>
        <Node>
          <NodeName>MeetingInfoOption</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Meeting information displayed on the welcome screen.</Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>Organizer and time only.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Organizer, time, and subject. Subject is hidden in private meetings.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>WirelessProjection</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Node for the wireless projector app settings.</Description>
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
          <NodeName>PINRequired</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Users must enter a PIN to wirelessly project to the device.</Description>
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
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Pin not required</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Pin required</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Enabled</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Enables wireless projection to the device.</Description>
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
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Channel</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>255</DefaultValue>
            <Description>Wireless channel to use for Miracast operation. The supported channels are defined by the Wi-Fi Alliance Wi-Fi Direct specification.</Description>
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
            <MSFT:AllowedValues ValueType="None" />
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>Connect</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Node for the Connect app.</Description>
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
          <NodeName>AutoLaunch</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Specifies whether to automatically launch the Connect app whenever a projection is initiated. If this setting is true, the Connect app will be automatically launched. If false, the user will need to launch the Connect app manually from the Hub’s settings.</Description>
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
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>Whiteboard</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>This node controls policies specific to the Whiteboard App on Surface Hub.</Description>
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
            <MSFT:OsBuildVersion>10.0.18363, 10.0.18362.449</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
        <Node>
          <NodeName>SignInDisabled</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>False</DefaultValue>
            <Description>When enabled, prevents a user from Signing into Whiteboard on the device</Description>
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
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>False</MSFT:Value>
                <MSFT:ValueDescription>Sign in enabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>True</MSFT:Value>
                <MSFT:ValueDescription>Sign in disabled</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TelemetryDisabled</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>False</DefaultValue>
            <Description>When enabled, prevents Whiteboard from sending telemetry from the device</Description>
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
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>False</MSFT:Value>
                <MSFT:ValueDescription>Telemetry enabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>True</MSFT:Value>
                <MSFT:ValueDescription>Telemetry disabled</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>SharingDisabled</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>When enabled, prevents a user from initiating a collaborative session on the device</Description>
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
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>False</MSFT:Value>
                <MSFT:ValueDescription>Sharing enabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>True</MSFT:Value>
                <MSFT:ValueDescription>Sharing disabled</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>Teams</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>This node controls policies specific to the Teams App on Surface Hub</Description>
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
            <MSFT:OsBuildVersion>10.0.19042, 10.0.19041.450</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
        <Node>
          <NodeName>Configurations</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>String to contain Teams policy configs</Description>
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
            <MSFT:AllowedValues ValueType="None" />
          </DFProperties>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>Properties</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for the device properties.</Description>
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
        <NodeName>FriendlyName</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Friendly name of the device. Specifies the name that users see when they want to wirelessly project to the device.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DefaultVolume</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>45</DefaultValue>
          <Description>Specifies the default volume value for a new session.</Description>
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
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[0-100]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ScreenTimeout</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>5</DefaultValue>
          <Description>Specifies the number of minutes until the Hub screen turns off.</Description>
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
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Never time out</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>1 minute</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>2 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>3 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>5</MSFT:Value>
              <MSFT:ValueDescription>5 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>10</MSFT:Value>
              <MSFT:ValueDescription>10 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>15</MSFT:Value>
              <MSFT:ValueDescription>15 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>30</MSFT:Value>
              <MSFT:ValueDescription>30 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>60</MSFT:Value>
              <MSFT:ValueDescription>1 hour</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>120</MSFT:Value>
              <MSFT:ValueDescription>2 hours</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>240</MSFT:Value>
              <MSFT:ValueDescription>4 hours</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SleepMode</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Specifies the type of sleep mode for the Surface Hub.</Description>
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
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Connected Standby</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Hibernate</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SessionTimeout</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>Specifies the number of minutes until the session times out.</Description>
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
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Never time out</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>1 minute</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>2 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>3 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>5</MSFT:Value>
              <MSFT:ValueDescription>5 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>10</MSFT:Value>
              <MSFT:ValueDescription>10 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>15</MSFT:Value>
              <MSFT:ValueDescription>15 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>30</MSFT:Value>
              <MSFT:ValueDescription>30 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>60</MSFT:Value>
              <MSFT:ValueDescription>1 hour</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>120</MSFT:Value>
              <MSFT:ValueDescription>2 hours</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>240</MSFT:Value>
              <MSFT:ValueDescription>4 hours</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SleepTimeout</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>5</DefaultValue>
          <Description>Specifies the number of minutes until the Hub enters sleep mode.</Description>
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
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Never time out</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>1 minute</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>2 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>3 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>5</MSFT:Value>
              <MSFT:ValueDescription>5 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>10</MSFT:Value>
              <MSFT:ValueDescription>10 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>15</MSFT:Value>
              <MSFT:ValueDescription>15 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>30</MSFT:Value>
              <MSFT:ValueDescription>30 minutes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>60</MSFT:Value>
              <MSFT:ValueDescription>1 hour</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>120</MSFT:Value>
              <MSFT:ValueDescription>2 hours</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>240</MSFT:Value>
              <MSFT:ValueDescription>4 hours</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AllowSessionResume</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>true</DefaultValue>
          <Description>Specifies whether to allow the ability to resume a session when the session times out. If this setting is true, the "Resume Session" feature will be available on the welcome screen when the screen is idle. If false, once the screen idles, the session will be automatically cleaned up as if the “End Session" feature was initiated.</Description>
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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DefaultAutomaticFraming</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>true</DefaultValue>
          <Description>Specifies whether the Surface Hub 2 Smart Camera feature to automatically zoom and keep users centered in the video is enabled.</Description>
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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.19042</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AllowAutoProxyAuth</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>true</DefaultValue>
          <Description>Specifies whether to use the device account for proxy authentication. If this setting is true, the device account will be used for proxy authentication. If false, a separate account will be used.</Description>
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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableSigninSuggestions</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>false</DefaultValue>
          <Description>Specifies whether to disable auto-populating of the sign-in dialog with invitees from scheduled meetings. If this setting is true, the sign-in dialog will not be populated. If false, the dialog will auto-populate.</Description>
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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>Dialog will auto-populate.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>Sign-in dialog will not be populated.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SurfaceHubMeetingMode</NodeName>
        <DFProperties>
          <AccessType>
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Teams mode</Description>
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
            <MSFT:OsBuildVersion>10.0.15063, 10.0.14393.969</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[0-2]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>VtcAppPackageId</NodeName>
        <DFProperties>
          <AccessType>
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>App name</Description>
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
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.15063, 10.0.14393.969</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DoNotShowMyMeetingsAndFiles</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>false</DefaultValue>
          <Description>Specifies whether to disable the "My meetings and files" feature in the Start menu, which shows the signed-in user's meetings and files from Office 365. If this setting is true, the “My meetings and files” feature will not be shown. When false, the “My meetings and files” feature will be shown.</Description>
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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>"My meetings and files" feature will not be shown.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>The "My meetings and files" feature will be shown.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ProxyServers</NodeName>
        <DFProperties>
          <AccessType>
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>The list of known proxy servers to provide.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>UpdateBootManager</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
          <Replace />
        </AccessType>
        <Description>Enables new boot manager usage.</Description>
        <DefaultValue>0</DefaultValue>
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
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.19045</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>Disable new boot manager</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>320</MSFT:Value>
            <MSFT:ValueDescription>Enable new boot manager</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>Management</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Not a supported scenario</Description>
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
          <MSFT:OsBuildVersion>10.0.15063, 10.0.14393.969</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.0</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>GroupName</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>The name of the domain admin group to add to the administrators group on the device.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>GroupSid</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>The sid of the domain admin group to add to the administrators group on the device.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>MOMAgentGovtCloud</NodeName>
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
          <DDFName />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.19045.4355</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.0</MSFT:CspVersion>
          <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBF;0xCA;0xCB;0xCD;</MSFT:EditionAllowList>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>WorkspaceIDGovtCloud</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>GUID identifying the Microsoft Operations Management Suite workspace ID to collect the data for Govt Clouds. Set this to an empty string to disable the MOM agent.</Description>
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
      <Node>
        <NodeName>WorkspaceKeyGovtCloud</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Primary key for authenticating with workspace  for Govt Clouds.. Will always return an empty string.</Description>
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
      <Node>
        <NodeName>AzureCloudIndexGovtCloud</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Enum value for Azure Clouds supported for OMS tracking in SurfaceHub.</Description>
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
    </Node>
    <Node>
      <NodeName>MOMAgent</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Node for the Microsoft Operations Management Suite.</Description>
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
        <NodeName>WorkspaceID</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>GUID identifying the Microsoft Operations Management Suite workspace ID to collect the data. Set this to an empty string to disable the MOM agent.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>WorkspaceKey</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Primary key for authenticating with workspace. Will always return an empty string.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>Dot3</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Parent node</Description>
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
          <MSFT:OsBuildVersion>10.0.17134, 10.0.16299.64</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="None" />
      </DFProperties>
      <Node>
        <NodeName>LanProfile</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Used to specify credentials to authenticate device to the network.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
      <Node>
        <NodeName>EapUserData</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
            <Replace />
          </AccessType>
          <Description>Used to specify credentials to authenticate device to the network.</Description>
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
          <MSFT:AllowedValues ValueType="None" />
        </DFProperties>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[SurfaceHub configuration service provider reference](surfacehub-csp.md)
