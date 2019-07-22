---
title: How to collect Windows Information Protection (WIP) audit event logs (Windows 10)
description: How to collect and understand your Windows Information Protection audit event logs by using the Reporting configuration service provider (CSP) or the Windows Event Forwarding (for Windows desktop domain-joined devices only).
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/26/2019
ms.reviewer: 
---

# How to collect Windows Information Protection (WIP) audit event logs

**Applies to:**

- Windows 10, version 1607 and later
- Windows 10 Mobile, version 1607 and later

Windows Information Protection (WIP) creates audit events in the following situations:

- If an employee changes the File ownership for a file from **Work** to **Personal**.

- If data is marked as **Work**, but shared to a personal app or webpage. For example, through copying and pasting, dragging and dropping, sharing a contact, uploading to a personal webpage, or if the user grants a personal app provides temporary access to a work file.

- If an app has custom audit events.

## Collect WIP audit logs by using the Reporting configuration service provider (CSP)
Collect the WIP audit logs from your employee’s devices by following the guidance provided by the [Reporting configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/reporting-csp) documentation. This topic provides info about the actual audit events.

>[!Note]
>The **Data** element in the response includes the requested audit logs in an XML-encoded format.
    
### User element and attributes
This table includes all available attributes for the **User** element.

|Attribute |Value type |Description |
|----------|-----------|------------|
|UserID |String |The security identifier (SID) of the user corresponding to this audit report. |
|EnterpriseID |String |The enterprise ID corresponding to this audit report. |

### Log element and attributes
This table includes all available attributes/elements for the **Log** element. The response can contain zero (0) or more **Log** elements. 

|Attribute/Element |Value type |Description |
|----------|-----------|------------|
|ProviderType |String |This is always **EDPAudit**. |
|LogType |String |Includes:<ul><li>**DataCopied.** Work data is copied or shared to a personal location.</li><li>**ProtectionRemoved.** WIP protection is removed from a Work-defined file.</li><li>**ApplicationGenerated.** A custom audit log provided by an app.</li></ul>|
|TimeStamp |Int |Uses the [FILETIME structure](https://msdn.microsoft.com/library/windows/desktop/ms724284(v=vs.85).aspx) to represent the time that the event happened. |
|Policy |String |How the work data was shared to the personal location:<ul><li>**CopyPaste.** Work data was pasted into a personal location or app.</li><li>**ProtectionRemoved.** Work data was changed to be unprotected.</li><li>**DragDrop.** Work data was dropped into a personal location or app.</li><li>**Share.** Work data was shared with a personal location or app.</li><li>**NULL.** Any other way work data could be made personal beyond the options above. For example, when a work file is opened using a personal application (also known as, temporary access).</li></ul> |
|Justification |String |Not implemented. This will always be either blank or NULL.<br><br>**Note**<br>Reserved for future use to collect the user justification for changing from **Work** to **Personal**. |
|Object |String |A description of the shared work data. For example, if an employee opens a work file by using a personal app, this would be the file path. |
|DataInfo |String |Any additional info about how the work file changed:<ul><li>**A file path.** If an employee uploads a work file to a personal website by using Microsoft Edge or Internet Explorer, the file path is included here.</li><li>**Clipboard data types.** If an employee pastes work data into a personal app, the list of clipboard data types provided by the work app are included here. For more info, see the [Examples](#examples) section of this topic.</li></ul> |
|Action |Int |Provides info about what happened when the work data was shared to personal, including:<ul><li>**1.** File decrypt.</li><li>**2.** Copy to location.</li><li>**3.** Send to recipient.</li><li>**4.** Other.</li></ul> |
|FilePath |String |The file path to the file specified in the audit event. For example, the location of a file that’s been decrypted by an employee or uploaded to a personal website. |
|SourceApplicationName |String |The source app or website. For the source app, this is the AppLocker identity. For the source website, this is the hostname. |
|SourceName |String |A string provided by the app that’s logging the event. It’s intended to describe the source of the work data. |
|DestinationEnterpriseID |String |The enterprise ID value for the app or website where the employee is sharing the data.<br><br>**NULL**, **Personal**, or **blank** means there’s no enterprise ID because the work data was shared to a personal location. Because we don’t currently support multiple enrollments, you’ll always see one of these values. |
|DestinationApplicationName |String |The destination app or website. For the destination app, this is the AppLocker identity. For the destination website, this is the hostname. |
|DestinationName |String |A string provided by the app that’s logging the event. It’s intended to describe the destination of the work data. |
|Application |String |The AppLocker identity for the app where the audit event happened. |

### Examples
Here are a few examples of responses from the Reporting CSP.

#### File ownership on a file is changed from work to personal
```
<SyncML><SyncHdr/><SyncBody><Status><CmdID>1</CmdID><MsgRef>1</MsgRef><CmdRef>0</CmdRef><Cmd>SyncHdr</Cmd><Data>200</Data></Status><Status><CmdID>2</CmdID><MsgRef>1</MsgRef><CmdRef>2</CmdRef><Cmd>Replace</Cmd><Data>200</Data></Status><Status><CmdID>3</CmdID><MsgRef>1</MsgRef><CmdRef>4</CmdRef><Cmd>Get</Cmd><Data>200</Data></Status><Results><CmdID>4</CmdID><MsgRef>1</MsgRef><CmdRef>4</CmdRef><Item><Source><LocURI>./Vendor/MSFT/Reporting/EnterpriseDataProtection/RetrieveByTimeRange/Logs</LocURI></Source><Meta><Format xmlns="syncml:metinf">xml</Format></Meta><Data><?xml version="1.0" encoding="utf-8"?>
<Reporting Version="com.contoso/2.0/MDM/Reporting">
  <User UserID="S-1-12-1-1111111111-1111111111-1111111111-1111111111" EnterpriseID="corp.contoso.com">
    <Log ProviderType="EDPAudit" LogType="ProtectionRemoved" TimeStamp="131357166318347527">
      <Policy>Protection removed</Policy>
      <Justification>NULL</Justification>
      <FilePath>C:\Users\TestUser\Desktop\tmp\demo\Work document.docx</FilePath>
    </Log>
  </User>
</Reporting></Data></Item></Results><Final/></SyncBody></SyncML>
```

#### A work file is uploaded to a personal webpage in Edge
```
<SyncML><SyncHdr/><SyncBody><Status><CmdID>1</CmdID><MsgRef>1</MsgRef><CmdRef>0</CmdRef><Cmd>SyncHdr</Cmd><Data>200</Data></Status><Status><CmdID>2</CmdID><MsgRef>1</MsgRef><CmdRef>2</CmdRef><Cmd>Replace</Cmd><Data>200</Data></Status><Status><CmdID>3</CmdID><MsgRef>1</MsgRef><CmdRef>4</CmdRef><Cmd>Get</Cmd><Data>200</Data></Status><Results><CmdID>4</CmdID><MsgRef>1</MsgRef><CmdRef>4</CmdRef><Item><Source><LocURI>./Vendor/MSFT/Reporting/EnterpriseDataProtection/RetrieveByTimeRange/Logs</LocURI></Source><Meta><Format xmlns="syncml:metinf">xml</Format></Meta><Data><?xml version="1.0" encoding="utf-8"?>
<Reporting Version="com.contoso/2.0/MDM/Reporting">
  <User UserID="S-1-12-1-1111111111-1111111111-1111111111-1111111111" EnterpriseID="corp.contoso.com">
    <Log ProviderType="EDPAudit" LogType="DataCopied" TimeStamp="131357192409318534">
      <Policy>CopyPaste</Policy>
      <Justification>NULL</Justification>
      <SourceApplicationName>NULL</SourceApplicationName>
      <DestinationEnterpriseID>NULL</DestinationEnterpriseID>
      <DestinationApplicationName>mail.contoso.com</DestinationApplicationName>
      <DataInfo>C:\Users\TestUser\Desktop\tmp\demo\Work document.docx</DataInfo>
    </Log>
  </User>
</Reporting></Data></Item></Results><Final/></SyncBody></SyncML>
```

#### Work data is pasted into a personal webpage
```
<SyncML><SyncHdr/><SyncBody><Status><CmdID>1</CmdID><MsgRef>1</MsgRef><CmdRef>0</CmdRef><Cmd>SyncHdr</Cmd><Data>200</Data></Status><Status><CmdID>2</CmdID><MsgRef>1</MsgRef><CmdRef>2</CmdRef><Cmd>Replace</Cmd><Data>200</Data></Status><Status><CmdID>3</CmdID><MsgRef>1</MsgRef><CmdRef>4</CmdRef><Cmd>Get</Cmd><Data>200</Data></Status><Results><CmdID>4</CmdID><MsgRef>1</MsgRef><CmdRef>4</CmdRef><Item><Source><LocURI>./Vendor/MSFT/Reporting/EnterpriseDataProtection/RetrieveByTimeRange/Logs</LocURI></Source><Meta><Format xmlns="syncml:metinf">xml</Format></Meta><Data><?xml version="1.0" encoding="utf-8"?>
<Reporting Version="com.contoso/2.0/MDM/Reporting">
  <User UserID="S-1-12-1-1111111111-1111111111-1111111111-1111111111" EnterpriseID="corp.contoso.com">
    <Log ProviderType="EDPAudit" LogType="DataCopied" TimeStamp="131357193734179782">
      <Policy>CopyPaste</Policy>
      <Justification>NULL</Justification>
      <SourceApplicationName>O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US\MICROSOFT OFFICE 2016\WINWORD.EXE\16.0.8027.1000</SourceApplicationName>
      <DestinationEnterpriseID>NULL</DestinationEnterpriseID>
      <DestinationApplicationName>mail.contoso.com</DestinationApplicationName>
      <DataInfo>EnterpriseDataProtectionId|Object Descriptor|Rich Text Format|HTML Format|AnsiText|Text|EnhancedMetafile|Embed Source|Link Source|Link Source Descriptor|ObjectLink|Hyperlink</DataInfo>
    </Log>
  </User>
</Reporting></Data></Item></Results><Final/></SyncBody></SyncML>
```

#### A work file is opened with a personal application
```
<SyncML><SyncHdr/><SyncBody><Status><CmdID>1</CmdID><MsgRef>1</MsgRef><CmdRef>0</CmdRef><Cmd>SyncHdr</Cmd><Data>200</Data></Status><Status><CmdID>2</CmdID><MsgRef>1</MsgRef><CmdRef>2</CmdRef><Cmd>Replace</Cmd><Data>200</Data></Status><Status><CmdID>3</CmdID><MsgRef>1</MsgRef><CmdRef>4</CmdRef><Cmd>Get</Cmd><Data>200</Data></Status><Results><CmdID>4</CmdID><MsgRef>1</MsgRef><CmdRef>4</CmdRef><Item><Source><LocURI>./Vendor/MSFT/Reporting/EnterpriseDataProtection/RetrieveByTimeRange/Logs</LocURI></Source><Meta><Format xmlns="syncml:metinf">xml</Format></Meta><Data><?xml version="1.0" encoding="utf-8"?>
<Reporting Version="com.contoso/2.0/MDM/Reporting">
  <User UserID="S-1-12-1-1111111111-1111111111-1111111111-1111111111" EnterpriseID="corp.contoso.com">
    <Log ProviderType="EDPAudit" LogType="ApplicationGenerated" TimeStamp="131357194991209469">
      <Policy>NULL</Policy>
      <Justification></Justification>
      <Object>C:\Users\TestUser\Desktop\tmp\demo\Work document.docx</Object>
      <Action>1</Action>
      <SourceName>O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US\MICROSOFT® WINDOWS® OPERATING SYSTEM\WORDPAD.EXE\10.0.15063.2</SourceName>
      <DestinationEnterpriseID>Personal</DestinationEnterpriseID>
      <DestinationName>O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US\MICROSOFT® WINDOWS® OPERATING SYSTEM\WORDPAD.EXE\10.0.15063.2</DestinationName>
      <Application>O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US\MICROSOFT® WINDOWS® OPERATING SYSTEM\WORDPAD.EXE\10.0.15063.2</Application>
    </Log>
  </User>
</Reporting></Data></Item></Results><Final/></SyncBody></SyncML>
```

#### Work data is pasted into a personal application
```
<SyncML><SyncHdr/><SyncBody><Status><CmdID>1</CmdID><MsgRef>1</MsgRef><CmdRef>0</CmdRef><Cmd>SyncHdr</Cmd><Data>200</Data></Status><Status><CmdID>2</CmdID><MsgRef>1</MsgRef><CmdRef>2</CmdRef><Cmd>Replace</Cmd><Data>200</Data></Status><Status><CmdID>3</CmdID><MsgRef>1</MsgRef><CmdRef>4</CmdRef><Cmd>Get</Cmd><Data>200</Data></Status><Results><CmdID>4</CmdID><MsgRef>1</MsgRef><CmdRef>4</CmdRef><Item><Source><LocURI>./Vendor/MSFT/Reporting/EnterpriseDataProtection/RetrieveByTimeRange/Logs</LocURI></Source><Meta><Format xmlns="syncml:metinf">xml</Format></Meta><Data><?xml version="1.0" encoding="utf-8"?>
<Reporting Version="com.contoso/2.0/MDM/Reporting">
  <User UserID="S-1-12-1-1111111111-1111111111-1111111111-1111111111" EnterpriseID="corp.contoso.com">
    <Log ProviderType="EDPAudit" LogType="DataCopied" TimeStamp="131357196076537270">
      <Policy>CopyPaste</Policy>
      <Justification>NULL</Justification>
      <SourceApplicationName>O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US\MICROSOFT OFFICE 2016\WINWORD.EXE\16.0.8027.1000</SourceApplicationName>
      <DestinationEnterpriseID>NULL</DestinationEnterpriseID>
      <DestinationApplicationName></DestinationApplicationName>
      <DataInfo>EnterpriseDataProtectionId|Object Descriptor|Rich Text Format|HTML Format|AnsiText|Text|EnhancedMetafile|Embed Source|Link Source|Link Source Descriptor|ObjectLink|Hyperlink</DataInfo>
    </Log>
  </User>
</Reporting></Data></Item></Results><Final/></SyncBody></SyncML>
```

## Collect WIP audit logs by using Windows Event Forwarding (for Windows desktop domain-joined devices only)
Use Windows Event Forwarding to collect and aggregate your WIP audit events. You can view your audit events in the Event Viewer.

>[!NOTE]
>Windows 10 Mobile requires you to use the [Reporting CSP process](#collect-wip-audit-logs-by-using-the-reporting-configuration-service-provider-csp) instead.

**To view the WIP events in the Event Viewer**
1. Open Event Viewer.

2. In the console tree under **Application and Services Logs\Microsoft\Windows**, click **EDP-Audit-Regular** and **EDP-Audit-TCB**.

## Collect WIP audit logs using Azure Monitor
You can collect audit logs using Azure Monitor. See [Windows event log data sources in Azure Monitor.](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/collect-wip-audit-event-logs)

**To view the WIP events in Azure Monitor**
1.  Use an existing or create a new Log Analytics workspace.

2.  In **Log Analytics** > **Advanced Settings**, select **Data**. In Windows Event Logs, add logs to receive:

    ```
    Microsoft-Windows-EDP-Application-Learning/Admin
    Microsoft-Windows-EDP-Audit-TCB/Admin
    ```
    >[!NOTE]
    >If using Windows Events Logs, the event log names can be found under Properties of the event in the Events folder (Application and Services Logs\Microsoft\Windows, click EDP-Audit-Regular and EDP-Audit-TCB).

3.  Download Microsoft [Monitoring Agent](https://docs.microsoft.com/azure/azure-monitor/platform/agent-windows#install-the-agent-using-dsc-in-azure-automation).

4.  To get MSI for Intune installation as stated in the Azure Monitor article, extract: MMASetup-.exe /c /t:
Install Microsoft Monitoring Agent to WIP devices using Workspace ID and Primary key. More information on Workspace ID and Primary key can be found in **Log Analytics** > **Advanced Settings**.

5.  To deploy MSI via Intune, in installation parameters add: /q /norestart NOAPM=1 ADD_OPINSIGHTS_WORKSPACE=1 OPINSIGHTS_WORKSPACE_AZURE_CLOUD_TYPE=0 OPINSIGHTS_WORKSPACE_ID=<WORKSPACE_ID> OPINSIGHTS_WORKSPACE_KEY=<WORKSPACE_KEY> AcceptEndUserLicenseAgreement=1

>[!NOTE]
>Replace <WORKSPACE_ID> & <WORKSPACE_KEY> received from step 5. In installation parameters, don't place <WORKSPACE_ID> & <WORKSPACE_KEY> in quotes ("" or '').

6. After the agent is deployed, data will be received within approximately 10 minutes.

7. To search for logs, go to **Log Analytics workspace** > **Logs**, and type **Event** in search.

***Example***
```
Event | where EventLog == "Microsoft-Windows-EDP-Audit-TCB/Admin"
```

## Additional resources
-   [How to deploy app via Intune](https://docs.microsoft.com/intune/apps-add)
-   [How to create Log workspace](https://docs.microsoft.com/azure/azure-monitor/learn/quick-create-workspace)
-   [How to use Microsoft Monitoring Agents for Windows](https://docs.microsoft.com/azure/azure-monitor/platform/agents-overview)
