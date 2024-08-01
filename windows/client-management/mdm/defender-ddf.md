---
title: Defender DDF file
description: View the XML file containing the device description framework (DDF) for the Defender configuration service provider.
ms.date: 06/28/2024
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
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
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
        <NodeName>DeviceControl</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>An interior node to group information about Device Cotrol health status.</Description>
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>State</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description><![CDATA[Provide the current state of the Device Control.]]></Description>
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
          </DFProperties>
        </Node>
      </Node>
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
        <NodeName>ExcludedIpAddresses</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <Description>Allows an administrator to explicitly disable network packet inspection made by wdnisdrv on a particular set of IP addresses.</Description>
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
          <MSFT:AllowedValues ValueType="RegEx">
            <MSFT:Value>^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$|^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$|^(?:[0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}$|^(?:[0-9a-fA-F]{1,4}:){1,5}(?::[0-9a-fA-F]{1,4}){1,2}$|^(?:[0-9a-fA-F]{1,4}:){1,4}(?::[0-9a-fA-F]{1,4}){1,3}$|^(?:[0-9a-fA-F]{1,4}:){1,3}(?::[0-9a-fA-F]{1,4}){1,4}$|^(?:[0-9a-fA-F]{1,4}:){1,2}(?::[0-9a-fA-F]{1,4}){1,5}$|^[0-9a-fA-F]{1,4}(?::[0-9a-fA-F]{1,4}){1,6}$|^::1$|^::$</MSFT:Value>
            <MSFT:List Delimiter="|" />
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
          <Description>When this value is set to no, it allows a local admin the ability to specify some settings for complex list type that will then merge /override the Preference settings with the Policy settings</Description>
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
              <MSFT:ValueDescription>Yes</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>No</MSFT:ValueDescription>
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
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>DNS Sinkhole is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>DNS Sinkhole is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
          <MSFT:Deprecated OsBuildDeprecated="10.0.14393" />
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
        <NodeName>DisableDatagramProcessing</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Control whether network protection inspects User Datagram Protocol (UDP) traffic</Description>
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
              <MSFT:ValueDescription>UDP inspection is off</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>UDP inspection is on</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>EnableConvertWarnToBlock</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting controls whether network protection blocks network traffic instead of displaying a warning</Description>
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
              <MSFT:ValueDescription>Warn verdicts are converted to block</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Warn verdicts are not converted to block</MSFT:ValueDescription>
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
        <NodeName>PerformanceModeStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting allows IT admins to configure performance mode in either enabled or disabled mode for managed devices.</Description>
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
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Performance mode is enabled (default).</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Performance mode is disabled.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>QuickScanIncludeExclusions</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting allows you to scan excluded files and directories during quick scans.</Description>
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
              <MSFT:ValueDescription>If you set this setting to 0 or do not configure it, exclusions are not scanned during quick scans.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>If you set this setting to 1, all files and directories that are excluded from real-time protection using contextual exclusions are scanned during a quick scan.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>SecurityIntelligenceLocationUpdateAtScheduledTimeOnly</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting allows you to configure security intelligence updates according to the scheduler for VDI-configured computers. It is used together with the shared security intelligence location (SecurityIntelligenceLocation).</Description>
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
            <MSFT:OsBuildVersion>10.0.18362</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>If you enable this setting and configure SecurityIntelligenceLocation, updates from the configured location occur only at the previously configured scheduled update time.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>If you either disable or do not configure this setting, updates occur whenever a new security intelligence update is detected at the location that is specified by SecurityIntelligenceLocation.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ScheduleSecurityIntelligenceUpdateTime</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>105</DefaultValue>
          <Description>This setting allows you to specify the time of day at which to check for security intelligence updates. The time value is represented as the number of minutes past midnight (00:00). For example, 120 is equivalent to 02:00 AM. By default, this setting is configured to check for security intelligence updates 15 minutes before the scheduled scan time. The schedule is based on local time on the computer where the check is occurring.</Description>
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
            <MSFT:Value>[0-1439]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ScheduleSecurityIntelligenceUpdateDay</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>8</DefaultValue>
          <Description>This setting allows you to specify the day of the week on which to check for security intelligence updates. By default, this setting is configured to never check for security intelligence updates.</Description>
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
              <MSFT:ValueDescription>Daily</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Sunday</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Monday</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>3</MSFT:Value>
              <MSFT:ValueDescription>Tuesday</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>4</MSFT:Value>
              <MSFT:ValueDescription>Wednesday</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>5</MSFT:Value>
              <MSFT:ValueDescription>Thursday</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>6</MSFT:Value>
              <MSFT:ValueDescription>Friday</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>7</MSFT:Value>
              <MSFT:ValueDescription>Saturday</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>8</MSFT:Value>
              <MSFT:ValueDescription>Never</MSFT:ValueDescription>
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
        <NodeName>DaysUntilAggressiveCatchupQuickScan</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>25</DefaultValue>
          <Description>Configure how many days can pass before an aggressive quick scan is triggered. The valid interval is [7-60] days. If not configured, aggressive quick scans will be disabled. By default, the value is set to 25 days when enabled.</Description>
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
            <MSFT:Value>[7-60]</MSFT:Value>
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
          <Description>Define data duplication remote location for Device Control. When configuring this setting, ensure that Device Control is Enabled and that the provided path is a remote path the user can access.</Description>
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
          <Description>Defines which device's primary ids should be secured by Defender Device Control. The primary id values should be pipe (|) separated. Example: RemovableMediaDevices|CdRomDevices. If this configuration is not set the default value will be applied, meaning all supported devices will be secured. Currently supported primary ids are: RemovableMediaDevices, CdRomDevices, WpdDevices, PrinterDevices.</Description>
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
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>RemovableMediaDevices</MSFT:Value>
              <MSFT:ValueDescription>RemovableMediaDevices</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>CdRomDevices</MSFT:Value>
              <MSFT:ValueDescription>CdRomDevices</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>WpdDevices</MSFT:Value>
              <MSFT:ValueDescription>WpdDevices</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>PrinterDevices</MSFT:Value>
              <MSFT:ValueDescription>PrinterDevices</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:List Delimiter="|" />
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DataDuplicationMaximumQuota</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>500</DefaultValue>
          <Description>Defines the maximum data duplication quota in MB that can be collected. When the quota is reached the filter will stop duplicating any data until the service manages to dispatch the existing collected data, thus decreasing the quota again below the maximum. The valid interval is [5-5000] MB. By default, the maximum quota will be 500 MB.</Description>
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
          <MSFT:AllowedValues ValueType="Range">
            <MSFT:Value>[5-5000]</MSFT:Value>
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
              <MSFT:ValueDescription>Device Control is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Device Control is disabled</MSFT:ValueDescription>
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
          <DefaultValue>0x0</DefaultValue>
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
              <MSFT:Value>0x0</MSFT:Value>
              <MSFT:ValueDescription>Passive Remediation is turned off (default)</MSFT:ValueDescription>
            </MSFT:Enum>
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
        <NodeName>DisableCoreServiceECSIntegration</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0x0</DefaultValue>
          <Description>Turn off ECS integration for Defender core service</Description>
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
              <MSFT:Value>0x0</MSFT:Value>
              <MSFT:ValueDescription>The Defender core service will use the Experimentation and Configuration Service (ECS) to rapidly deliver critical, org-specific fixes.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x1</MSFT:Value>
              <MSFT:ValueDescription>The Defender core service stops using the Experimentation and Configuration Service (ECS). Fixes will continue to be delivered through security intelligence updates.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DisableCoreServiceTelemetry</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0x0</DefaultValue>
          <Description>Turn off OneDsCollector telemetry for Defender core service</Description>
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
              <MSFT:Value>0x0</MSFT:Value>
              <MSFT:ValueDescription>The Defender core service will use the OneDsCollector framework to rapidly collect telemetry.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0x1</MSFT:Value>
              <MSFT:ValueDescription>The Defender core service stops using the OneDsCollector framework to rapidly collect telemetry, impacting Microsoft's ability to quickly recognize and address poor performance, false positives, and other problems.</MSFT:ValueDescription>
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
        <NodeName>DisableQuicParsing</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting disables QUIC Parsing for Network Protection.</Description>
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
              <MSFT:ValueDescription>QUIC parsing is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>QUIC parsing is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>NetworkProtectionReputationMode</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This sets the reputation mode engine for Network Protection.</Description>
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
              <MSFT:ValueDescription>Use standard reputation engine</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Use ESP reputation engine</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>EnableUdpSegmentationOffload</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting enables Udp Segmentation Offload Network Protection.</Description>
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
              <MSFT:ValueDescription>Udp Segmentation Offload is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Udp Segmentation Offload is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>EnableUdpReceiveOffload</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>This setting enables Udp Receive Offload Network Protection.</Description>
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
              <MSFT:ValueDescription>Udp Receive Offload is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Udp Receive Offload is enabled</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AllowSwitchToAsyncInspection</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Control whether network protection can improve performance by switching from real-time inspection to asynchronous inspection</Description>
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
              <MSFT:ValueDescription>Allow switching to asynchronous inspection</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Don’t allow asynchronous inspection</MSFT:ValueDescription>
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
              <MSFT:ValueDescription>Scheduled tasks will not be randomized.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ArchiveMaxSize</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Specify the maximum size, in KB, of archive files to be extracted and scanned. If this configuration is off or not set, the default value (0) is applied, and all archives are extracted and scanned regardless of size.</Description>
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
            <MSFT:Value>[0-4294967295]</MSFT:Value>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ArchiveMaxDepth</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Specify the maximum folder depth to extract from archive files for scanning. If this configuration is off or not set, the default value (0) is applied, and all archives are extracted up to the deepest folder for scanning.</Description>
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
            <MSFT:Value>[0-4294967295]</MSFT:Value>
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
      <Node>
        <NodeName>DisableCacheMaintenance</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>0</DefaultValue>
          <Description>Defines whether the cache maintenance idle task will perform the cache maintenance or not.</Description>
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
              <MSFT:ValueDescription>Cache maintenance is disabled</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Cache maintenance is enabled (default)</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>BehavioralNetworkBlocks</NodeName>
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
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
        <Node>
          <NodeName>RemoteEncryptionProtection</NodeName>
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
            <NodeName>RemoteEncryptionProtectionConfiguredState</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Remote Encryption Protection in Microsoft Defender Antivirus detects and blocks attempts to replace local files with encrypted versions from another device.</Description>
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
                  <MSFT:ValueDescription>Not configured: Apply defaults set for the antivirus engine and platform</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Block: Prevent suspicious and malicious behaviors</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription>Audit: Generate EDR detections without blocking</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>4</MSFT:Value>
                  <MSFT:ValueDescription>Off: Feature is off with no performance impact</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RemoteEncryptionProtectionMaxBlockTime</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Set the maximum time an IP address is blocked by Remote Encryption Protection. After this time, blocked IP addresses will be able to reinitiate connections. If set to 0, internal feature logic will determine blocking time.</Description>
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
                <MSFT:Value>[0-4294967295]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RemoteEncryptionProtectionAggressiveness</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Set the criteria for when Remote Encryption Protection blocks IP addresses.</Description>
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
                  <MSFT:ValueDescription>Low: Block only when confidence level is 100% (Default)</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Medium: Use cloud aggregation and block when confidence level is above 99%</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription>High: Use cloud intel and context, and block when confidence level is above 90%</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RemoteEncryptionProtectionExclusions</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Specify IP addresses, subnets, or workstation names to exclude from being blocked by Remote Encryption Protection. Note that attackers can spoof excluded addresses and names to bypass protection.</Description>
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
              <MSFT:AllowedValues ValueType="None">
                <MSFT:List Delimiter="|" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>BruteForceProtection</NodeName>
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
            <NodeName>BruteForceProtectionConfiguredState</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Brute-Force Protection in Microsoft Defender Antivirus detects and blocks attempts to forcibly sign in and initiate sessions.</Description>
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
                  <MSFT:ValueDescription>Not configured: Apply defaults set by the antivirus engine and platform</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Block: Prevent suspicious and malicious behaviors</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription>Audit: Generate EDR detections without blocking</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>4</MSFT:Value>
                  <MSFT:ValueDescription>Off: Feature is disabled with no performance impact</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>BruteForceProtectionMaxBlockTime</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Set the maximum time an IP address is blocked by Brute-Force Protection. After this time, blocked IP addresses will be able to sign-in and initiate sessions. If set to 0, internal feature logic will determine blocking time.</Description>
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
                <MSFT:Value>[0-4294967295]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>BruteForceProtectionAggressiveness</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Set the criteria for when Brute-Force Protection blocks IP addresses.</Description>
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
                  <MSFT:ValueDescription>Low: Only IP addresses that are 100% confidence malicious (default)</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Medium: Use cloud aggregation to block IP addresses that are over 99% likely malicious</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription>High: Block IP addresses identified using client intelligence and context to block IP addresses that are over 90% likely malicious</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>BruteForceProtectionPlugins</NodeName>
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
              <NodeName>BruteForceProtectionLocalNetworkBlocking</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>0</DefaultValue>
                <Description>Extend brute-force protection coverage in Microsoft Defender Antivirus to block local network addresses.</Description>
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
                    <MSFT:Value>0</MSFT:Value>
                    <MSFT:ValueDescription>Brute-force protection will not block local network addresses</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>1</MSFT:Value>
                    <MSFT:ValueDescription>Brute-force protection will block local network addresses</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>BruteForceProtectionSkipLearningPeriod</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>0</DefaultValue>
                <Description>Skip the 2-week initial learning period, so brute-force protection in Microsoft Defender Antivirus can start blocking immediately.</Description>
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
                    <MSFT:Value>0</MSFT:Value>
                    <MSFT:ValueDescription>Brute-force protection blocks threats only after completing a 2-week learning period</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>1</MSFT:Value>
                    <MSFT:ValueDescription>Brute-force protection starts blocking threats immediately</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
          </Node>
          <Node>
            <NodeName>BruteForceProtectionExclusions</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specify IP addresses, subnets, or workstation names to exclude from being blocked by Brute-Force Protection. Note that attackers can spoof excluded addresses and names to bypass protection.</Description>
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
                <MSFT:List Delimiter="|" />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
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
