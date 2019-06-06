---
title: EMAIL2 DDF file
description: EMAIL2 DDF file
ms.assetid: 7e266db0-2fd9-4412-b428-4550f41a1738
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
---

# EMAIL2 DDF file


This topic shows the OMA DM device description framework (DDF) for the **EMAIL2** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version for this CSP.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>EMAIL2</NodeName>
        <Path>./Vendor/MSFT</Path>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Root characteristic</Description>
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
            <MIME>com.microsoft/1.0/MDM/EMAIL2</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName></NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Replace />
              <Delete />
            </AccessType>
            <Description>This is unique and identifies a particular account. Also, we can only have 6 additional email accounts. So, depending on how many are already there on the device, we can have from 1 to 6.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrN>1</ZeroOrN>
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>Account GUID</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>ACCOUNTICON</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>The location of the icon associated with the account. </Description>
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
            <NodeName>ACCOUNTTYPE</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
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
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AUTHNAME</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>User Name for Incoming server. Limited to 255 chars.</Description>
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
            <NodeName>AUTHREQUIRED</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>This will specify whether the outgoing server requires authentication.
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
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AUTHSECRET</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Password. Limited to 255 chars.</Description>
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
            <NodeName>DOMAIN</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Incoming server credentials domain. Limited to 255 chars.</Description>
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
            <NodeName>DWNDAY</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Specifies how many days of email to download. (number of days worth going back into the past)</Description>
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
            <NodeName>INSERVER</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>The incoming server name and port number. Limited to 62 chars. If the standard port number is used, the port number isn't necessary to be specified in this node. The value format is:
                Server name:port number
              </Description>
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
            <NodeName>LINGER</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Specifies how frequently Messaging performs scheduled send/receives. (Specified as the length of time in minutes, between updates.)</Description>
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
            <NodeName>KEEPMAX</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Specifies the maximum size for a message's attachment. (Attachments beyond this size will not be downloaded but will remain on the server. The message itself will be downloaded). This value can be set only for IMAP4 accounts.  The limit is specified in KB, with a value of 0 meaning that no limit will be enforced.</Description>
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
            <NodeName>NAME</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>User Display Name. Limited to 255 chars</Description>
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
            <NodeName>OUTSERVER</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>The outcoming server name and port number. Limited to 62 chars. The value format is:
              Server name:port number
              If the standard port number is used, the port number isn't necessary to be specified in this node.
            </Description>
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
            <NodeName>REPLYADDR</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>SMTP reply address of the user. Limited to 255 chars.</Description>
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
            <NodeName>SERVICENAME</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>This is the account name. It's limited to 32 characters.</Description>
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
            <NodeName>SERVICETYPE</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>This is the type of account. Valid values are POP3/IMAP4.</Description>
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
            <NodeName>RETRIEVE</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Specifies the maximum size(in bytes) for messages retrieved from the incoming email server. Messages beyond this size will still be retrieved, but will be truncated.</Description>
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
            <NodeName>SERVERDELETEACTION</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Specifies how message is deleted on server.
                1 for delete message on server,
                2 for keep the message on server (delete to Trash folder),
                any other value default action is used, which depends on the transport.
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
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>CELLULARONLY</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
              </AccessType>
              <Description>If this flag is set, the account uses cellular network only and not Wi-Fi.</Description>
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
            <NodeName>SYNCINGCONTENTTYPES</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Specifies a bitmask for which content types are supported for syncing (eg: Mail, Contacts, Calendar).  No data (0x0), Contacts (0x1), Mail (0x2), Appointments (0x4), Tasks (0x8), Notes (0x10), Feeds (0x60), Network Photo (0x180), Group and room (0x200), Chat (0x400), Email Recipient Email (0x800), Server Link (0x1000), All items (0xffffffff).</Description>
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
            <NodeName>CONTACTSSERVER</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
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
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>CALENDARSERVER</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
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
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>CONTACTSSERVERREQUIRESSL</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <Description>Defines if the connection to the contact server requires SSL.</Description>
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
            <NodeName>CALENDARSERVERREQUIRESSL</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
              </AccessType>
              <Description>Defines if the connection to the calendar server requires SSL.</Description>
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
            <NodeName>CONTACTSSYNCSCHEDULE</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
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
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>CALENDARSYNCSCHEDULE</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
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
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>SMTPALTAUTHNAME</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>If SMTPALTENABLED is true, then this will have the alternate User Name for SMTP. 255 chars.</Description>
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
            <NodeName>SMTPALTDOMAIN</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>If SMTPALTENABLED is true, then this will have the alternate domain for SMTP. 255 chars.</Description>
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
            <NodeName>SMTPALTENABLED</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>This is a bool value that specifies if we have separate SMTP credentials.
1 for true
0 for false (default)</Description>
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
            <NodeName>SMTPALTPASSWORD</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>If SMTPALTENABLED is true, then this will have the alternate password for SMTP. 255 chars.</Description>
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
            <NodeName>TAGPROPS</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
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
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>8128000B</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Replace />
                  <Delete />
                </AccessType>
                <Description>Specify whether incoming server requires SSL connection. 
1- Require SSL connection
0- Doesn't require SSL connection (default)</Description>
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
              <NodeName>812C000B</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Replace />
                  <Delete />
                </AccessType>
                <Description>Specify whether outgoing server requires SSL connection. 
1- Require SSL connection
0- Doesn't require SSL connection (default)</Description>
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
</MgmtTree>
```

## Related topics


[EMAIL2 configuration service provider](email2-csp.md)

 

 






