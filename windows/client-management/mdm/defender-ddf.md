---
title: Defender DDF file
description: View the XML file containing the device description framework (DDF) for the Defender configuration service provider.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 06/02/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

# Defender DDF file

The following XML file contains the device description framework (DDF) for the Defender configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>Defender</NodeName>
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
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>Detections</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>An interior node to group all threats detected by Windows Defender.</Description>
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
            <Get />
          </AccessType>
          <Description>The ID of a threat that has been detected by Windows Defender.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>ThreatId</DFTitle>
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
            <Description>The name of the specific threat.</Description>
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
          <NodeName>URL</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>URL link for additional threat information.</Description>
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
          <NodeName>Severity</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Threat severity ID. The following list shows the supported values: 0 = Unknown; 1 = Low; 2 = Moderate; 4 = High; 5 = Severe; </Description>
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
          <NodeName>Category</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Threat category ID.  Supported values: 0-Invalid; 1-Adware; 2-Spyware; 3-Password stealer; 4-Trojan downloader; 5-Worm; 6-Backdoor; 7-Remote access Trojan; 8-Trojan; 9-Email flooder; 10-Keylogger; 11-Dialer; 12-Monitoring software; 13-Browser modifier; 14-Cookie; 15-Browser plugin; 16-AOL exploit; 17-Nuker; 18-Security disabler; 19-Joke program; 20-Hostile ActiveX control; 21-Software bundler; 22-Stealth modifier; 23-Settings modifier; 24-Toolbar; 25-Remote control software; 26-Trojan FTP; 27-Potential unwanted software; 28-ICQ exploit; 29-Trojan telnet; 30-Exploit; 31-File sharing program; 32-Malware creation tool; 33-Remote control software; 34-Tool; 36-Trojan denial of service; 37-Trojan dropper; 38-Trojan mass mailer; 39-Trojan monitoring software; 40-Trojan proxy server; 42-Virus; 43-Known; 44-Unknown; 45-SPP; 46-Behavior; 47-Vulnerability; 48-Policy; 49-EUS (Enterprise Unwanted Software); 50-Ransomware; 51-ASR Rule</Description>
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
          <NodeName>CurrentStatus</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Information about the current status of the threat. The following list shows the supported values: 0 = Active; 1 = Action failed; 2 = Manual steps required; 3 = Full scan required; 4 = Reboot required; 5 = Remediated with noncritical failures; 6 = Quarantined; 7 = Removed; 8 = Cleaned; 9 = Allowed; 10 = No Status ( Cleared)</Description>
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
          <NodeName>ExecutionStatus</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Information about the execution status of the threat.</Description>
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
          <NodeName>InitialDetectionTime</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The first time this particular threat was detected.</Description>
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
          <NodeName>LastThreatStatusChangeTime</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The last time this particular threat was changed.</Description>
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
          <NodeName>NumberOfDetections</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Number of times this threat has been detected on a particular client.</Description>
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
      <NodeName>Health</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>An interior node to group information about Windows Defender health status.</Description>
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
        <NodeName>ProductStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description><![CDATA[Provide the current state of the product. This is a bitmask flag value that can represent one or multiple product states from below list. Supported product status values: No status = 0; Service not running = 1 << 0; Service started without any malware protection engine = 1 << 1; Pending full scan due to threat action = 1 << 2; Pending reboot due to threat action = 1 << 3; ending manual steps due to threat action = 1 << 4; AV signatures out of date = 1 << 5; AS signatures out of date = 1 << 6; No quick scan has happened for a specified period = 1 << 7; No full scan has happened for a specified period = 1 << 8; System initiated scan in progress = 1 << 9; System initiated clean in progress = 1 << 10; There are samples pending submission = 1 << 11; Product running in evaluation mode = 1 << 12; Product running in non-genuine Windows mode = 1 << 13; Product expired = 1 << 14; Off-line scan required = 1 << 15; Service is shutting down as part of system shutdown = 1 << 16; Threat remediation failed critically = 1 << 17; Threat remediation failed non-critically = 1 << 18; No status flags set (well initialized state) = 1 << 19; Platform is out of date = 1 << 20; Platform update is in progress = 1 << 21; Platform is about to be outdated = 1 << 22; Signature or platform end of life is past or is impending = 1 << 23; Windows SMode signatures still in use on non-Win10S install = 1 << 24]]></Description>
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
            <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.2</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ComputerState</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Provide the current state of the device. The following list shows the supported values: 0 = Clean; 1 = Pending full scan; 2 = Pending reboot; 4 = Pending manual steps (Windows Defender is waiting for the user to take some action, such as restarting the computer or running a full scan); 8 = Pending offline scan; 16 = Pending critical failure (Windows Defender has failed critically and an Administrator needs to investigate and take some action, such as restarting the computer or reinstalling Windows Defender)</Description>
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
        <NodeName>DefenderEnabled</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether the Windows Defender service is running.</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>RtpEnabled</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether real-time protection is running.</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>NisEnabled</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether network protection is running.</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>QuickScanOverdue</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether a Windows Defender quick scan is overdue for the device. A Quick scan is overdue when a scheduled Quick scan did not complete successfully for 2 weeks and catchup Quick scans are disabled (default).</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>FullScanOverdue</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether a Windows Defender full scan is overdue for the device. A Full scan is overdue when a scheduled Full scan did not complete successfully for 2 weeks and catchup Full scans are disabled (default).</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SignatureOutOfDate</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether the Windows Defender signature is outdated.</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>RebootRequired</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether a device reboot is needed.</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>FullScanRequired</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether a Windows Defender full scan is required.</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>EngineVersion</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Version number of the current Windows Defender engine on the device.</Description>
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
        <NodeName>SignatureVersion</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Version number of the current Windows Defender signatures on the device.</Description>
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
        <NodeName>DefenderVersion</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Version number of Windows Defender on the device.</Description>
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
        <NodeName>QuickScanTime</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Time of the last Windows Defender quick scan of the device.</Description>
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
        <NodeName>FullScanTime</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Time of the last Windows Defender full scan of the device.</Description>
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
        <NodeName>QuickScanSigVersion</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Signature version used for the last quick scan of the device.</Description>
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
        <NodeName>FullScanSigVersion</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Signature version used for the last full scan of the device.</Description>
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
        <NodeName>TamperProtectionEnabled</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether the Windows Defender tamper protection feature is enabled.</Description>
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
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.18362</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>IsVirtualMachine</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether the device is a virtual machine.</Description>
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
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.18362</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>Configuration</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>An interior node to group Windows Defender configuration information.</Description>
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
          <MSFT:OsBuildVersion>10.0.18362</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.3</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>DeviceControl</NodeName>
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
            <Dynamic />
          </Scope>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
        <Node>
          <NodeName>PolicyGroups</NodeName>
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
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <ZeroOrMore />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>GroupId</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>GroupData</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Follow the instructions provided here: https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/device-control-removable-storage-access-control?view=o365-worldwide </Description>
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
          </Node>
        </Node>
        <Node>
          <NodeName>PolicyRules</NodeName>
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
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <ZeroOrMore />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>RuleId</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>RuleData</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Follow the instructions provided here: https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/device-control-removable-storage-access-control?view=o365-worldwide </Description>
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
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>TamperProtection</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Tamper protection helps protect important security features from unwanted changes and interference. This includes real-time protection, behavior monitoring, and more. Accepts signed string to turn the feature on or off. Settings are configured with an MDM solution, such as Intune and is available in Windows 10 Enterprise E5 or equivalent subscriptions. Send off blob to device to reset tamper protection state before setting this configuration to "not configured" or "unassigned" in Intune. The data type is a Signed blob.</Description>
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
        <NodeName>EnableFileHashComputation</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Enables or disables file hash computation feature. When this feature is enabled Windows defender will compute hashes for files it scans.</Description>
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
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Disable</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Enable</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>MeteredConnectionUpdates</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Allow managed devices to update through metered connections. Default is 0 - not allowed, 1 - allowed</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Allowed</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Not Allowed</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SupportLogLocation</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>The support log location setting allows the administrator to specify where the Microsoft Defender Antivirus diagnostic data collection tool (MpCmdRun.exe) will save the resulting log files. This setting is configured with an MDM solution, such as Intune, and is available for Windows 10 Enterprise.</Description>
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
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AllowNetworkProtectionOnWinServer</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>This settings controls whether Network Protection is allowed to be configured into block or audit mode on Windows Server. If false, the value of EnableNetworkProtection will be ignored.</Description>
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
            <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Allow</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Disallow</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableCpuThrottleOnIdleScans</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>Indicates whether the CPU will be throttled for scheduled scans while the device is idle.  This feature is enabled by default and will not throttle the CPU for scheduled scans performed when the device is otherwise idle, regardless of what ScanAvgCPULoadFactor is set to. For all other scheduled scans this flag will have no impact and normal throttling will occur.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Disable CPU Throttle on idle scans</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Enable CPU Throttle on idle scans</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableLocalAdminMerge</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>When this value is set to false, it allows a local admin the ability to specify some settings for complex list type that will then merge /override the Preference settings with the Policy settings</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Disable Local Admin Merge</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Enable Local Admin Merge</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SchedulerRandomizationTime</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>4</DefaultValue>
          <Description>This setting allows you to configure the scheduler randomization in hours. The randomization interval is [1 - 23] hours. For more information on the randomization effect please check the RandomizeScheduleTaskTimes setting.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[1-23]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableTlsParsing</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting disables TLS Parsing for Network Protection.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>TLS parsing is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>TLS parsing is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableFtpParsing</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting disables FTP Parsing for Network Protection.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>FTP parsing is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>FTP parsing is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableHttpParsing</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting disables HTTP Parsing for Network Protection.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>HTTP parsing is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>HTTP parsing is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableDnsParsing</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting disables DNS Parsing for Network Protection.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>DNS parsing is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>DNS parsing is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableDnsOverTcpParsing</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting disables DNS over TCP Parsing for Network Protection.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>DNS over TCP parsing is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>DNS over TCP parsing is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableSshParsing</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting disables SSH Parsing for Network Protection.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>SSH parsing is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>SSH parsing is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>PlatformUpdatesChannel</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Enable this policy to specify when devices receive Microsoft Defender platform updates during the monthly gradual rollout.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Not configured (Default). The device will stay up to date automatically during the gradual release cycle. Suitable for most devices.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Beta Channel: Devices set to this channel will be the first to receive new updates. Select Beta Channel to participate in identifying and reporting issues to Microsoft. Devices in the Windows Insider Program are subscribed to this channel by default. For use in (manual) test environments only and a limited number of devices.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>Current Channel (Preview): Devices set to this channel will be offered updates earliest during the monthly gradual release cycle. Suggested for pre-production/validation environments.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>4</MSFT:Value>
              <MSFT:ValueDescription>Current Channel (Staged): Devices will be offered updates after the monthly gradual release cycle. Suggested to apply to a small, representative part of your production population (~10%).</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>5</MSFT:Value>
              <MSFT:ValueDescription>Current Channel (Broad): Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in your production population (~10-100%).</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>6</MSFT:Value>
              <MSFT:ValueDescription>Critical - Time delay: Devices will be offered updates with a 48-hour delay. Suggested for critical environments only.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>EngineUpdatesChannel</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Enable this policy to specify when devices receive Microsoft Defender engine updates during the monthly gradual rollout.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Not configured (Default). The device will stay up to date automatically during the gradual release cycle. Suitable for most devices.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Beta Channel: Devices set to this channel will be the first to receive new updates. Select Beta Channel to participate in identifying and reporting issues to Microsoft. Devices in the Windows Insider Program are subscribed to this channel by default. For use in (manual) test environments only and a limited number of devices.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>Current Channel (Preview): Devices set to this channel will be offered updates earliest during the monthly gradual release cycle. Suggested for pre-production/validation environments.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>4</MSFT:Value>
              <MSFT:ValueDescription>Current Channel (Staged): Devices will be offered updates after the monthly gradual release cycle. Suggested to apply to a small, representative part of your production population (~10%).</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>5</MSFT:Value>
              <MSFT:ValueDescription>Current Channel (Broad): Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in your production population (~10-100%).</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>6</MSFT:Value>
              <MSFT:ValueDescription>Critical - Time delay: Devices will be offered updates with a 48-hour delay. Suggested for critical environments only.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SecurityIntelligenceUpdatesChannel</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Enable this policy to specify when devices receive Microsoft Defender security intelligence updates during the daily gradual rollout.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Not configured (Default). The device will stay up to date automatically during the gradual release cycle. Suitable for most devices.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>4</MSFT:Value>
              <MSFT:ValueDescription>Current Channel (Staged): Devices will be offered updates after the release cycle. Suggested to apply to a small, representative part of production population (~10%).</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>5</MSFT:Value>
              <MSFT:ValueDescription>Current Channel (Broad): Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in your production population (~10-100%).</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableGradualRelease</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Enable this policy to disable gradual rollout of Defender updates.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Gradual release is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Gradual release is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AllowNetworkProtectionDownLevel</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This settings controls whether Network Protection is allowed to be configured into block or audit mode on windows downlevel of RS3. If false, the value of EnableNetworkProtection will be ignored.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Network protection will be enabled downlevel.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Network protection will be disabled downlevel.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>EnableDnsSinkhole</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>This setting enables the DNS Sinkhole feature for Network Protection, respecting the value of EnableNetworkProtection for block vs audit, does nothing in inspect mode.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>DNS Sinkhole is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>DNS Sinkhole is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableInboundConnectionFiltering</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting disables Inbound connection filtering for Network Protection.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Inbound connection filtering is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Inbound connection filtering is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableRdpParsing</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting disables RDP Parsing for Network Protection.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>RDP Parsing is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>RDP Parsing is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AllowDatagramProcessingOnWinServer</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This settings controls whether Network Protection is allowed to enable datagram processing on Windows Server. If false, the value of DisableDatagramProcessing will be ignored and default to disabling Datagram inspection.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Datagram processing on Windows Server is enabled.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Datagram processing on Windows Server is disabled.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableNetworkProtectionPerfTelemetry</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting disables the gathering and send of performance telemetry from Network Protection.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Network protection telemetry is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Network protection telemetry is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>HideExclusionsFromLocalAdmins</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This policy setting controls whether or not exclusions are visible to local admins. To control local users exlcusions visibility use HideExclusionsFromLocalUsers. If HideExclusionsFromLocalAdmins is set then HideExclusionsFromLocalUsers will be implicitly set.</Description>
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
            <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>If you enable this setting, local admins will no longer be able to see the exclusion list in Windows Security App or via PowerShell.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>If you disable or do not configure this setting, local admins will be able to see exclusions in the Windows Security App and via PowerShell.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>HideExclusionsFromLocalUsers</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This policy setting controls whether or not exclusions are visible to local users. If HideExclusionsFromLocalAdmins is set then this policy will be implicitly set.</Description>
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
            <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>If you enable this setting, local users will no longer be able to see the exclusion list in Windows Security App or via PowerShell.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>If you disable or do not configure this setting, local users will be able to see exclusions in the Windows Security App and via PowerShell.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>OobeEnableRtpAndSigUpdate</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting allows you to configure whether real-time protection and Security Intelligence Updates are enabled during OOBE (Out of Box experience).</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>If you enable this setting, real-time protection and Security Intelligence Updates are enabled during OOBE.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>If you either disable or do not configure this setting, real-time protection and Security Intelligence Updates during OOBE is not enabled.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ThrottleForScheduledScanOnly</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>A CPU usage limit can be applied to scheduled scans only, or to scheduled and custom scans. The default value applies a CPU usage limit to scheduled scans only.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>If you enable this setting, CPU throttling will apply only to scheduled scans.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>If you disable this setting, CPU throttling will apply to scheduled and custom scans.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ASROnlyPerRuleExclusions</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Apply ASR only per rule exclusions.</Description>
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
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DataDuplicationDirectory</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Define data duplication directory for device control.</Description>
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
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DataDuplicationRemoteLocation</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Define data duplication remote location for device control.</Description>
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
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SecuredDevicesConfiguration</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Defines what are the devices primary ids that should be secured by Defender Device Control. The primary id values should be pipe (|) separated. Example: RemovableMediaDevices|CdRomDevices. If this configuration is not set the default value will be applied, meaning all of the supported devices will be secured.</Description>
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
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DataDuplicationLocalRetentionPeriod</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>60</DefaultValue>
          <Description>Define the retention period in days of how much time the evidence data will be kept on the client machine should any transfer to the remote locations would occur.</Description>
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
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[1-120]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DeviceControlEnabled</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Control Device Control feature.</Description>
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
            <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>
              </MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>
              </MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DefaultEnforcement</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>Control Device Control default enforcement. This is the enforcement applied if there are no policy rules present or at the end of the policy rules evaluation none were matched.</Description>
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
            <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Default Allow Enforcement</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Default Deny Enforcement</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>PassiveRemediation</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Setting to control automatic remediation for Sense scans.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="Flag">
            <MSFT:Enum>
              <MSFT:Value>0x1</MSFT:Value>
              <MSFT:ValueDescription>PASSIVE_REMEDIATION_FLAG_SENSE_AUTO_REMEDIATION: Passive Remediation Sense AutoRemediation</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x2</MSFT:Value>
              <MSFT:ValueDescription>PASSIVE_REMEDIATION_FLAG_RTP_AUDIT: Passive Remediation Realtime Protection Audit</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x4</MSFT:Value>
              <MSFT:ValueDescription>PASSIVE_REMEDIATION_FLAG_RTP_REMEDIATION: Passive Remediation Realtime Protection Remediation</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>IntelTDTEnabled</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This policy setting configures the Intel TDT integration level for Intel TDT-capable devices.</Description>
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
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>If you do not configure this setting, the default value will be applied. The default value is controlled by Microsoft security intelligence updates. Microsoft will enable Intel TDT if there is a known threat.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>If you configure this setting to enabled, Intel TDT integration will turn on.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>If you configure this setting to disabled, Intel TDT integration will turn off.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableSmtpParsing</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting disables SMTP Parsing for Network Protection.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>SMTP parsing is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>SMTP parsing is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>RandomizeScheduleTaskTimes</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>In Microsoft Defender Antivirus, randomize the start time of the scan to any interval from 0 to 23 hours. This can be useful in virtual machines or VDI deployments.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Widen or narrow the randomization period for scheduled scans. Specify a randomization window of between 1 and 23 hours by using the setting SchedulerRandomizationTime.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Scheduled tasks will begin at a random time within 4 hours after the time specified in Task Scheduler.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ScanOnlyIfIdleEnabled</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>In Microsoft Defender Antivirus, this setting will run scheduled scans only if the system is idle.</Description>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Runs scheduled scans only if the system is idle.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Runs scheduled scans regardless of whether the system is idle.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>Scan</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
          <Get />
        </AccessType>
        <Description>Node that can be used to start a Windows Defender scan on a device.</Description>
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
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>quick scan</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>2</MSFT:Value>
            <MSFT:ValueDescription>full scan</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>UpdateSignature</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
          <Get />
        </AccessType>
        <Description>Node that can be used to perform signature updates for Windows Defender.</Description>
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
      <NodeName>OfflineScan</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
          <Get />
        </AccessType>
        <Description>OfflineScan action starts a Microsoft Defender Offline scan on the computer where you run the command. After the next OS reboot, the device will start in Microsoft Defender Offline mode to begin the scan.</Description>
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
          <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:RebootBehavior>ServerInitiated</MSFT:RebootBehavior>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>RollbackPlatform</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
          <Get />
        </AccessType>
        <Description>RollbackPlatform action rolls back Microsoft Defender to it's last known good installation location on the computer where you run the command.</Description>
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
          <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:RebootBehavior>ServerInitiated</MSFT:RebootBehavior>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>RollbackEngine</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
          <Get />
        </AccessType>
        <Description>RollbackEngine action rolls back Microsoft Defender engine to it's last known good saved version on the computer where you run the command.</Description>
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
          <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:RebootBehavior>ServerInitiated</MSFT:RebootBehavior>
      </DFProperties>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[Defender configuration service provider reference](defender-csp.md)
