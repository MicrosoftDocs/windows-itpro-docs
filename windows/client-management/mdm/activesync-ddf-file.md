---
title: ActiveSync DDF file
description: ActiveSync DDF file
ms.assetid: c4cd4816-ad8f-45b2-9b81-8abb18254096
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 12/05/2017
---

# ActiveSync DDF file


This topic shows the OMA DM device description framework (DDF) for the **ActiveSync** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version for this CSP.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [
  <?oma-dm-ddf-ver supported-versions="1.2"?>
]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <Node>
    <NodeName>ActiveSync</NodeName>
    <Path>./Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The root node for ActiveSync configuration.</Description>
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
        <MIME>com.microsoft/1.0/MDM/ActiveSync</MIME>
      </DFType>
    </DFProperties>
    <Node>
      <NodeName>Accounts</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>The parent node group all active sync accounts.</Description>
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
            <Get />
            <Add />
            <Replace />
            <Delete />
          </AccessType>
          <Description>Defines a specific ActiveSync account. A globally unique identifier (GUID) must be generated for each ActiveSync account on the device.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
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
          <NodeName>EmailAddress</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Replace />
              <Delete />
            </AccessType>
            <Description>The email address the user entered during setup. This is the email address that is associated with the Exchange ActiveSync account and it is required.</Description>
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
          <NodeName>Domain</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Replace />
              <Delete />
            </AccessType>
            <Description>Domain name of the Exchange server</Description>
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
          <NodeName>AccountIcon</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Replace />
              <Delete />
            </AccessType>
            <Description>Specify the location of the icon associated with the account.</Description>
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
          <NodeName>AccountType</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Replace />
              <Delete />
            </AccessType>
            <Description>Specify the account type.</Description>
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
          <NodeName>AccountName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Replace />
              <Delete />
            </AccessType>
            <Description>The name that refers to the account on the phone.</Description>
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
          <NodeName>Password</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Replace />
              <Delete />
            </AccessType>
            <Description>A character string that specifies the password for the account.</Description>
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
          <NodeName>ServerName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Replace />
              <Delete />
            </AccessType>
            <Description>Specifies the server name used by the account.</Description>
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
          <NodeName>UserName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Replace />
              <Delete />
            </AccessType>
            <Description>Specifies the user name for the account.</Description>
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
          <NodeName>Options</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Replace />
              <Delete />
            </AccessType>
            <Description>Specifies whether email, contacts, and calendar need to synchronize by default, and sets preference such as sync schedule, truncation sizes, and logging.</Description>
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
            <NodeName>CalendarAgeFilter</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Specifies the time window used for syncing calendar items to the phone.</Description>
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
            <NodeName>Logging</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Specifies whether diagnostic logging is enabled and at what level.</Description>
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
            <NodeName>MailBodyType</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Indicates format type of the Email.  Supported values are 0 (none), 1 (text), 2 (HTML), 3 (RTF), and 4 (MIME).</Description>
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
            <NodeName>MailHTMLTruncation</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>This setting specifies the size beyond which HTML-formatted e-mail messages are truncated when they are synchronized to the mobile phone. The value is specified in KB. A value of -1 disables truncation.</Description>
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
            <NodeName>MailPlainTextTruncation</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>This setting specifies the size beyond which text-formatted e-mail messages are truncated when they are synchronized to the mobile phone. The value is specified in KB. A value of -1 disables truncation.</Description>
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
            <NodeName>Schedule</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Specifies the time until the next sync is performed in minutes.</Description>
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
            <NodeName>UseSSL</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Specifies whether SSL is used.</Description>
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
            <NodeName>MailAgeFilter</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Specifies the time window used for syncing email items to the phone.</Description>
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
            <NodeName>ContentTypes</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
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
                  <Get />
                  <Add />
                  <Replace />
                  <Delete />
                </AccessType>
                <Description>Enables or disables syncing email, contacts, task, and calendar.Each is represented by a GUID.Email: {c6d47067-6e92-480e-b0fc-4ba82182fac7}. Contacts: {0dd8685c-e272-4fcb-9ecf-2ead7ea2497b}.Calendar: {4a5d9fe0-f139-4a63-a5a4-4f31ceea02ad}. Tasks:{783ae4f6-4c12-4423-8270-66361260d4f1}</Description>
                <DFFormat>
                  <node />
                </DFFormat>
                <Occurrence>
                  <OneOrN>1</OneOrN>
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFTitle>Content Type GUID</DFTitle>
                <DFType>
                  <DDFName></DDFName>
                </DFType>
              </DFProperties>
              <Node>
                <NodeName>Enabled</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Add />
                    <Replace />
                    <Delete />
                  </AccessType>
                  <Description>Enables or disables Sync for Email, contacts, calendar, and Tasks.</Description>
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
                <NodeName>Name</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Add />
                    <Replace />
                    <Delete />
                  </AccessType>
                  <Description>The name of the content type.</Description>
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
          </Node>
         </Node>
        <Node>
            <NodeName>Policies</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Replace />
                <Delete />
              </AccessType>
              <Description>Specifies the mail body type and email age filter.</Description>
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
              <NodeName>MailBodyType</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Replace />
                  <Delete />
                </AccessType>
                <Description>Specifies the email body type. HTML or plain</Description>
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
              <NodeName>MaxMailAgeFilter</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Replace />
                  <Delete />
                </AccessType>
                <Description>Specifies the time window used for syncing mail items to the device.</Description>
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
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related topics


[ActiveSync configuration service provider](activesync-csp.md)

 

 






