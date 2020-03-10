---
title: Use a .wsb file to configure Windows Sandbox
description: 
ms.prod: w10
audience: ITPro
author: dansimp
ms.author: dansimp
manager: dansimp
ms.collection: 
ms.topic: article
ms.localizationpriority: 
ms.date: 
ms.reviewer: 
---

# Use a .wsb file to configure Windows Sandbox

Windows Sandbox supports simple configuration files (that have a .wsb file extension), which provide a minimal set of customization parameters for Sandbox. This feature can be used with Windows 10 build 18342 or later.

Windows Sandbox configuration files are formatted as XML and are associated with Sandbox via the .wsb file extension. To use a configuration file, double-click it to open it in the sandbox. You can also invoke it via the command line as shown here:

**C:\Temp> MyConfigFile.wsb** 

 A configuration file enables the user to control the following aspects of Windows Sandbox:
- **vGPU (virtualized GPU)**: Enable or disable the virtualized GPU. If vGPU is disabled, the sandbox will use WARP (software rasterizer).
- **Networking**: Enable or disable network access within the sandbox.
- **Mapped folders**: Share folders from the host with *read* or *write* permissions. Note that exposing host directories may allow malicious software to affect the system or steal data.
- **Logon command**: A command that's executed when Windows Sandbox starts. <LogonCommand>
- **Audio input**: Shares the host's microphone input into the sandbox.
- **Video input**: Shares the host's webcam input into the sandbox.
- **Protected client**: Places increased security settings on the RDP session to the sandbox.
- **Printer redirection**: Shares printers from the host into the sandbox.
- **Clipboard redirection**: Shares the host clipboard with the sandbox so that text and files can be pasted back and forth.
- **Memory in MB**: The amount of memory, in megabytes, to assign to the sandbox.

**Keywords, values, and limits**

**vGPU**: Enables or disables GPU sharing.

`<VGpu>value</VGpu>`

Supported values:
- *Enable*: Enables vGPU support in the sandbox.
- *Disable*: Disables vGPU support in the sandbox. If this value is set, the sandbox will use software rendering, which can be slower than virtualized GPU.
- *Default* This is the default value for vGPU support. Currently this means vGPU is disabled.

> [!NOTE]
> Enabling virtualized GPU can potentially increase the attack surface of the sandbox.

**Networking**: Enables or disables networking in the sandbox. You can disable network access to decrease the attack surface exposed by the sandbox.

`<Networking>value</Networking>`

Supported values:
- *Disable*: Disables networking in the sandbox.
- *Default*: This is the default value for networking support. This value enables networking by creating a virtual switch on the host and connects the sandbox to it via a virtual NIC.

> [!NOTE]
> Enabling networking can expose untrusted applications to the internal network.

**MappedFolders**: Wraps a list of MappedFolder objects.

`<MappedFolders>`
    list of MappedFolder objects
`</MappedFolders>`

> [!NOTE]
> Files and folders mapped in from the host can be compromised by apps in the sandbox or potentially affect the host.

**MappedFolder**: Specifies a single folder on the host machine that will be shared on the container desktop. Apps in the sandbox are run under the user account *WDAGUtilityAccount*. If no sandbox path is specified, a folder is mapped to the following path:<br/>`C:\Users\WDAGUtilityAccount\Desktop`

Example: "C:\Test" will be mapped as "C:\users\WDAGUtilityAccount\Desktop\Test by default.

```
<MappedFolder>
     <HostFolder>path to the host folder</HostFolder>
     <SandboxFolder>path to the sandbox folder</SandboxFolder>
     <ReadOnly>value</ReadOnly>
</MappedFolder>
```

*HostFolder*: Specifies the folder on the host machine to share to the sandbox. The folder must already exist on the host, or the container will fail to start if the folder isn't found.

*SandboxFolder*: Specifies the destination in the Sandbox to map the folder to. If the folder doesn't exist, it will be created.

*ReadOnly*: If *true*, enforces *read-only* access to the shared folder from within the container. Supported values: *true*/*false*. Defaults to *false*.

> [!NOTE] 
> Files and folders mapped in from the host can be compromised by apps in the sandbox or potentially affect the host.

**LogonCommand**: Specifies a single command that will be invoked automatically after the sandbox logs on.

```
<LogonCommand>
    <Command>command to be invoked</Command>
</LogonCommand>
```

*Command*: A path to an executable or script inside the container that will be executed after login.

> [!NOTE]
> Although very simple commands work (such as launching an executable or script), more-complicated scenarios that have multiple steps should be placed in a script file. This script file can be mapped to the container via a shared folder and then executed via the *LogonCommand* directive.

***Example 1***

The following config file can be used to easily test downloaded files inside the sandbox. To do this, the script disables networking and vGPU and restricts the shared downloads folder to *read-only* access in the container. For convenience, the logon command opens the downloads folder inside the container when it's started.

*Downloads.wsb*

```
<Configuration>
 <VGpu>Disable</VGpu>
 <Networking>Disable</Networking>
 <MappedFolders>
    <MappedFolder>
      <HostFolder>C:\Users\Public\Downloads</HostFolder>
      <ReadOnly>true</ReadOnly>
    </MappedFolder>
 </MappedFolders>
 <LogonCommand>
    <Command>explorer.exe C:\users\WDAGUtilityAccount\Desktop\Downloads</Command>
 </LogonCommand>
</Configuration>
```

***Example 2***

The following config file installs Visual Studio Code in the sandbox, which requires a slightly more complicated LogonCommand setup.

Two folders are mapped into the sandbox. The first folder (SandboxScripts) contains VSCodeInstall.cmd, which installs and runs Visual Studio Code. The second folder (CodingProjects) is assumed to contain project files that the developer wants to modify by using Visual Studio Code.

With the Visual Studio Code installer script already mapped into the sandbox, the LogonCommand can reference it.

*VSCodeInstall.cmd*

```
REM Download Visual Studio Code
curl -L "https://update.code.visualstudio.com/latest/win32-x64-user/stable" --output C:\users\WDAGUtilityAccount\Desktop\vscode.exe

REM Install and run Visual Studio Code
C:\users\WDAGUtilityAccount\Desktop\vscode.exe /verysilent /suppressmsgboxes
```

VSCode.wsb

```
<Configuration>
 <MappedFolders>
    <MappedFolder>
      <HostFolder>C:\SandboxScripts</HostFolder>
      <ReadOnly>true</ReadOnly>
    </MappedFolder>
    <MappedFolder>
      <HostFolder>C:\CodingProjects</HostFolder>
      <ReadOnly>false</ReadOnly>
    </MappedFolder>
 </MappedFolders>
 <LogonCommand>
    <Command>C:\users\wdagutilityaccount\desktop\SandboxScripts\VSCodeInstall.cmd</Command>
 </LogonCommand>
</Configuration>
```

**AudioInput**: Enables or disables audio input to the sandbox.

`<AudioInput>value</AudioInput>`

Supported values:
- *Enable*: Enables audio input in the sandbox. If this value is set, the sandbox will be able to receive audio input from the user. Applications that use a microphone may need this setting.
- *Disable*: Disables audio input in the sandbox. If this value is set, the sandbox can't receive audio input from the user. Applications that use a microphone may not function properly with this setting.
- *Default*: This is the default value for audio input support. Currently this means audio input is enabled.
 
**VideoInput**: Enables or disables video input to the sandbox.

`<VideoInput>value</VideoInput>`

Supported values:
- *Enable*: Enables video input in the sandbox. 
- *Disable*: Disables video input in the sandbox. Applications that use video input may not function properly in the sandbox.
- *Default*: This is the default value for video input support. Currently this means video input is disabled. Applications that use video input may not function properly in the sandbox.

**ProtectedClient**: Implements increased-security settings on the sandbox RDP session. These settings decrease the attack surface of the sandbox.

`<ProtectedClient>value</ProtectedClient>`

Supported values:
- *Enable*: Runs Windows Sandbox in Protected Client mode. If this value is set, the sandbox runs with extra security mitigations enabled.
- *Disable*: Runs the sandbox in standard mode without extra security mitigations.
- *Default*: This is the default value for Protected Client mode. Currently, this means the sandbox doesn't run in Protected Client mode.

> [!NOTE]
> This setting may restrict the user's ability to copy/paste files in and out of the sandbox.

**PrinterRedirection**: Enables or disables printer sharing from the host into the sandbox.

`<PrinterRedirection>value</PrinterRedirection>`

Supported values:
- *Enable*: Enables sharing of host printers into the sandbox.
- *Disable*: Disables printer redirection in the sandbox. If this value is set, the sandbox can't view printers from the host.
- *Default*: This is the default value for printer redirection support. Currently this means printer redirection is disabled.

**ClipboardRedirection**: Enables or disables clipboard sharing with the sandbox.

`<ClipboardRedirection>value</ClipboardRedirection>`

Supported values:
- *Disable*: Disables clipboard redirection in Sandbox. If this value is set, copy/paste in and out of Sandbox will be restricted. 
- *Default*: This is the default value for clipboard redirection. Currently copy/paste between the host and Sandbox are permitted under *Default*.

**MemoryInMB**: Specifies the amount of memory that the sandbox can use in megabytes (MB).

`<MemoryInMB>value</MemoryInMB>`

Supported values: An integer greater than 2048 (2 GB).

<!--

FAQ (future)

Release Notes (future)

EnableVendorExtensions – Paul added new option for Windows Sandbox to enable/disable vGPU vendor extensions. This is as new as 12/2 
RailMode – allows a user to run programs in Rail mode rather than full desktop. Internal only at this time.

Known issues (future)

-->