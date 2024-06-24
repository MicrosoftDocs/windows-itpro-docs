---
title: EMAIL2 DDF file
description: View the XML file containing the device description framework (DDF) for the EMAIL2 configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# EMAIL2 DDF file

The following XML file contains the device description framework (DDF) for the EMAIL2 configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>EMAIL2</NodeName>
    <Path>./User/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>Root node</Description>
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
        <MSFT:OsBuildVersion>10.0.10240</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
      <MSFT:Deprecated />
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
        <Description>This is unique and identifies a particular account. Also, we can only have 6 additional email accounts. So, depending on how many are already there on the device, we can have from 1 to 6.</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <ZeroOrN />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Account GUID</DFTitle>
        <DFType>
          <DDFName />
        </DFType>
        <MSFT:DynamicNodeNaming>
          <MSFT:ServerGeneratedUniqueIdentifier />
        </MSFT:DynamicNodeNaming>
        <MSFT:AllowedValues ValueType="RegEx">
          <MSFT:Value>\{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}</MSFT:Value>
        </MSFT:AllowedValues>
      </DFProperties>
      <Node>
        <NodeName>ACCOUNTICON</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description><![CDATA[The location of the icon associated with the account.  The account icon can be used as a tile in the Start list or an icon in the applications list under Settings, email & accounts. Some icons are already provided on the device. The suggested icon for POP/IMAP or generic ActiveSync accounts is at res://AccountSettingsSharedRes{ScreenResolution}!%s.genericmail.png. The suggested icon for Exchange Accounts is at res://AccountSettingsSharedRes{ScreenResolution}!%s.office.outlook.png. Custom icons can be added if desired.]]></Description>
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
        <NodeName>ACCOUNTTYPE</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Specifies the type of account. Valid values are: Email - normal email, VVM - visual voice mail</Description>
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
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>Email</MSFT:Value>
              <MSFT:ValueDescription>normal email</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>VVM</MSFT:Value>
              <MSFT:ValueDescription>visual voice mail</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AUTHNAME</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies the name used to authorize the user to a specific email account (also known as the user's logon name).</Description>
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
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AUTHREQUIRED</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies whether the outgoing server requires authentication.
                1 for TRUE
                0 for FALSE(default).
                Note: If this is not specified then SMTP authentication will not be done. Also, this is different from the SMTPALTENABLED. That is to specify different set of credentials for SMTP.
              </Description>
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
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Server authentication is not required.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Server authentication is required.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AUTHSECRET</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies the user's password. The same password is used for SMTP authentication.</Description>
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
        <NodeName>DOMAIN</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies the incoming server credentials domain. Limited to 255 characters.</Description>
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
        <NodeName>DWNDAY</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies how many days' worth of email should be downloaded from the server.</Description>
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
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>-1</MSFT:Value>
              <MSFT:ValueDescription>Specifies that all email currently on the server should be downloaded.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>7</MSFT:Value>
              <MSFT:ValueDescription>Specifies that 7 days’ worth of email should be downloaded.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>14</MSFT:Value>
              <MSFT:ValueDescription>Specifies that 14 days’ worth of email should be downloaded.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>30</MSFT:Value>
              <MSFT:ValueDescription>Specifies that 30 days’ worth of email should be downloaded.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>90</MSFT:Value>
              <MSFT:ValueDescription>Specifies that 90 days’ worth of email should be downloaded.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>INSERVER</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies how many days' worth of email should be downloaded from the server. server name:port number</Description>
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
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>LINGER</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>15</DefaultValue>
          <Description>Character string that specifies the length of time between email send/receive updates in minutes.  0 indicates that updates must be performed manually.</Description>
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
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[(-1)-2147483647]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>KEEPMAX</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Specifies the maximum size for a message attachment. Attachments beyond this size will not be downloaded but it will remain on the server. The message itself will be downloaded. This value can be set only for IMAP4 accounts. The limit is specified in KB.</Description>
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
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>-1</MSFT:Value>
              <MSFT:ValueDescription>No limit is enforced</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>No attachment is downloaded</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>25</MSFT:Value>
              <MSFT:ValueDescription>25 KB</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>50</MSFT:Value>
              <MSFT:ValueDescription>50 KB</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>100</MSFT:Value>
              <MSFT:ValueDescription>100 KB</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>250</MSFT:Value>
              <MSFT:ValueDescription>250 KB</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>NAME</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies the name of the sender displayed on a sent email. It should be set to the user’s name. Limited to 255 characters.</Description>
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
        <NodeName>OUTSERVER</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description> Character string that specifies the name of the messaging service's outgoing email server. Limited to 62 characters. The value format is: server name:port number</Description>
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
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>REPLYADDR</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies the reply email address of the user (usually the same as the user email address). Sending email will fail without it. Limited to 255 characters.</Description>
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
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SERVICENAME</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies the name of the email service to create or edit (32 characters maximum).</Description>
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
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SERVICETYPE</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies the type of email service to create or edit (for example, "IMAP4" or "POP3").</Description>
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
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>RETRIEVE</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Specifies the maximum size in bytes for messages retrieved from the incoming email server. Messages beyond this size are retrieved, but truncated.</Description>
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
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[(-1)-2147483647]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SERVERDELETEACTION</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies how message is deleted on server. The default action depends on the transport.</Description>
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
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>delete message on the server</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>keep the message on the server (delete to the Trash folder).</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>CELLULARONLY</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>If this flag is set, the account only uses the cellular network and not Wi-Fi.</Description>
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
        <NodeName>SYNCINGCONTENTTYPES</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Specifies a bitmask for which content types are supported for syncing (eg: Mail, Contacts, Calendar).</Description>
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
          <MSFT:AllowedValues ValueType="Flag">
            <MSFT:Enum>
              <MSFT:Value>0x0</MSFT:Value>
              <MSFT:ValueDescription>No data</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x1</MSFT:Value>
              <MSFT:ValueDescription>Contacts</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x2</MSFT:Value>
              <MSFT:ValueDescription>Mail</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x4</MSFT:Value>
              <MSFT:ValueDescription>Appointments</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x8</MSFT:Value>
              <MSFT:ValueDescription>Tasks</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x10</MSFT:Value>
              <MSFT:ValueDescription>Notes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x60</MSFT:Value>
              <MSFT:ValueDescription>Feeds</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x180</MSFT:Value>
              <MSFT:ValueDescription>Network Photo</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x200</MSFT:Value>
              <MSFT:ValueDescription>Group and room</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x400</MSFT:Value>
              <MSFT:ValueDescription>Chat</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x800</MSFT:Value>
              <MSFT:ValueDescription>Email Recipient Email</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x1000</MSFT:Value>
              <MSFT:ValueDescription>Server Link</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0xffffffff</MSFT:Value>
              <MSFT:ValueDescription>All items</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>CONTACTSSERVER</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Server for contact sync if it is different from the email server.</Description>
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
        <NodeName>CALENDARSERVER</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Server for calendar sync if it is different from the email server.</Description>
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
        <NodeName>CONTACTSSERVERREQUIRESSL</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Indicates if the connection to the contact server requires SSL.</Description>
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
        <NodeName>CALENDARSERVERREQUIRESSL</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Indicates if the connection to the calendar server requires SSL.</Description>
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
        <NodeName>CONTACTSSYNCSCHEDULE</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Sets the schedule for syncing contact items.</Description>
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
        <NodeName>CALENDARSYNCSCHEDULE</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Sets the schedule for syncing calendar items.</Description>
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
        <NodeName>SMTPALTAUTHNAME</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies the display name associated with the user's alternative SMTP email account.</Description>
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
        <NodeName>SMTPALTDOMAIN</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies the domain name for the user's alternative SMTP account.</Description>
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
        <NodeName>SMTPALTENABLED</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies if the user's alternate SMTP account is enabled.</Description>
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
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>The user's alternate SMTP email account is disabled.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>The user's alternate SMTP email account is enabled.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SMTPALTPASSWORD</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string that specifies the password for the user's alternate SMTP account.</Description>
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
        <NodeName>TAGPROPS</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Specifies that stated parameter element name attributes is nonstandard tag properties.</Description>
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
          <NodeName>8128000B</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Character string that specifies if the incoming email server requires SSL.</Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>SSL is not required.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>SSL is required.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>812C000B</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Character string that specifies if the outgoing email server requires SSL.</Description>
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>SSL is not required.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>SSL is required.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[EMAIL2 configuration service provider reference](email2-csp.md)
