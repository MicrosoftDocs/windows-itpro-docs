---
title: Compatibility Fixes for Windows 10, Windows 8, Windows 7, and Windows Vista (Windows 10)
description: You can fix some compatibility issues that are due to the changes made between Windows operating system versions. These issues can include User Account Control (UAC) restrictions.
ms.assetid: cd51c824-557f-462a-83bb-54b0771b7dff
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Compatibility Fixes for Windows 10, Windows 8, Windows 7, and Windows Vista


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

You can fix some compatibility issues that are due to the changes made between Windows operating system versions. These issues can include User Account Control (UAC) restrictions.

**Important**  
The Application Compatibility Toolkit (ACT) installs a 32-bit and a 64-bit version of the Compatibility Administrator. You must use the 32-bit version for 32-bit applications and the 64-bit version to work for 64-bit applications. You will receive an error message if you try to use the wrong version.

If you start the Compatibility Administrator as an Administrator (with elevated privileges), all repaired applications can run successfully; however, virtualization and redirection might not occur as expected. To verify that a compatibility fix addresses an issue, you must test the repaired application by running it under the destination user account.

 

## Compatibility Fixes


The following table lists the known compatibility fixes for all Windows operating systems that have been released from Windows Vista through Windows 10. The fixes are listed in alphabetical order.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Fix</th>
<th align="left">Fix Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>8And16BitAggregateBlts</p></td>
<td align="left"><p>Applications that are mitigated by 8/16-bit mitigation can exhibit performance issues. This layer aggregates all the blt operations and improves performance.</p></td>
</tr>
<tr class="even">
<td align="left"><p>8And16BitDXMaxWinMode</p></td>
<td align="left"><p>Applications that use DX8/9 and are mitigated by the 8/16-bit mitigation are run in a maximized windowed mode. This layer mitigates applications that exhibit graphical corruption in full screen mode.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8And16BitGDIRedraw</p></td>
<td align="left"><p>This fix repairs applications that use GDI and that work in 8-bit color mode. The application is forced to repaint its window on RealizePalette.</p></td>
</tr>
<tr class="even">
<td align="left"><p>AccelGdipFlush</p></td>
<td align="left"><p>This fix increases the speed of GdipFlush, which has perf issues in DWM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>AoaMp4Converter</p></td>
<td align="left"><p>This fix resolves a display issue for the AoA Mp4 Converter.</p></td>
</tr>
<tr class="even">
<td align="left"><p>BIOSRead</p></td>
<td align="left"><p>This problem is indicated when an application cannot access the <strong>Device\PhysicalMemory</strong> object beyond the kernel-mode drivers, on any of the Windows Server® 2003 operating systems.</p>
<p>The fix enables OEM executable (.exe) files to use the GetSystemFirmwareTable function instead of the NtOpenSection function when the BIOS is queried for the <strong>\\Device\Physical</strong> memory information..</p></td>
</tr>
<tr class="odd">
<td align="left"><p>BlockRunasInteractiveUser</p></td>
<td align="left"><p>This problem occurs when <strong>InstallShield</strong> creates installers and uninstallers that fail to complete and that generate error messages or warnings.</p>
<p>The fix blocks <strong>InstallShield</strong> from setting the value of <strong>RunAs</strong> registry keys to InteractiveUser Because InteractiveUser no longer has Administrator rights.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the BlockRunAsInteractiveUser Fix](https://go.microsoft.com/fwlink/p/?LinkId=690328).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>ChangeFolderPathToXPStyle</p></td>
<td align="left"><p>This fix is required when an application cannot return shell folder paths when it uses the <strong>SHGetFolder</strong> API.</p>
<p>The fix intercepts the <strong>SHGetFolder</strong> path request to the common <strong>appdata</strong> file path and returns the Windows® XP-style file path instead of the Windows Vista-style file path.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ClearLastErrorStatusonIntializeCriticalSection</p></td>
<td align="left"><p>This fix is indicated when an application fails to start.</p>
<p>The fix modifies the InitializeCriticalSection function call so that it checks the NTSTATUS error code, and then sets the last error to ERROR_SUCCESS.</p></td>
</tr>
<tr class="even">
<td align="left"><p>CopyHKCUSettingsFromOtherUsers</p></td>
<td align="left"><p>This problem occurs when an application's installer must run in elevated mode and depends on the HKCU settings that are provided for other users.</p>
<p>The fix scans the existing user profiles and tries to copy the specified keys into the HKEY_CURRENT_USER registry area.</p>
<p>You can control this fix further by entering the relevant registry keys as parameters that are separated by the ^ Symbol; for example: <code>Software\MyCompany\Key1^Software\MyCompany\Key2</code>.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the CopyHKCUSettingsFromOtherUsers Fix](https://go.microsoft.com/fwlink/p/?LinkId=690329).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>CorrectCreateBrushIndirectHatch</p></td>
<td align="left"><p>The problem is indicated by an access violation error message that displays and when the application fails when you select or crop an image.</p>
<p>The fix corrects the brush style hatch value, which is passed to the CreateBrushIndirect() function and enables the information to be correctly interpreted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>CorrectFilePaths</p></td>
<td align="left"><p>The problem is indicated when an application tries to write files to the hard disk and is denied access or receives a file not found or path not found error message.</p>
<p>The fix modifies the file path names to point to a new location on the hard disk.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about the CorrectFilePaths application fix, see [Using the CorrectFilePaths Fix](https://go.microsoft.com/fwlink/p/?LinkId=690330). We recommend that you use this fix together with the CorrectFilePathsUninstall fix if you are applying it to a setup installation file.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>CorrectFilePathsUninstall</p></td>
<td align="left"><p>This problem occurs when an uninstalled application leaves behind files, directories, and links.</p>
<p>The fix corrects the file paths that are used by the uninstallation process of an application.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this fix, see [Using the CorrectFilePathsUninstall Fix](https://go.microsoft.com/fwlink/p/?LinkId=690331). We recommend that you use this fix together with the CorrectFilePaths fix if you are applying it to a setup installation file.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>CorrectShellExecuteHWND</p></td>
<td align="left"><p>This problem occurs when you start an executable (.exe) and a taskbar item blinks instead of an elevation prompt being opened, or when the application does not provide a valid HWND value when it calls the ShellExecute(Ex) function.</p>
<p>The fix intercepts the ShellExecute(Ex) calls, and then inspects the HWND value. If the value is invalid, this fix enables the call to use the currently active HWND value.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about the CorrectShellExecuteHWND application fix, see [Using the CorrectShellExecuteHWND Fix](https://go.microsoft.com/fwlink/p/?LinkId=690332).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>CustomNCRender</p></td>
<td align="left"><p>This fix instructs DWM to not render the non-client area, thereby forcing the application to do its own NC rendering. This often gives windows an XP look.</p></td>
</tr>
<tr class="even">
<td align="left"><p>DelayApplyFlag</p></td>
<td align="left"><p>This fix applies a KERNEL, USER, or PROCESS flag if the specified DLL is loaded.</p>
<p>You can control this fix further by typing the following command at the command prompt:</p>
<p>DLL_Name;Flag_Type;Hexidecimal_Value</p>
<p>Where the DLL_Name is the name of the specific DLL, including the file extension. Flag_Type is KERNEL, USER, or PROCESS, and a Hexidecimal_Value, starting with 0x and up to 64-bits long.</p>
<div class="alert">
<strong>Note</strong>  
<p>The PROCESS flag type can have a 32-bit length only. You can separate multiple entries with a backslash ().</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>DeprecatedServiceShim</p></td>
<td align="left"><p>The problem is indicated when an application tries to install a service that has a dependency on a deprecated service. An error message displays.</p>
<p>The fix intercepts the CreateService function calls and removes the deprecated dependency service from the lpDependencies parameter.</p>
<p>You can control this fix further by typing the following command at the command prompt:</p>
<p>Deprecated_Service\App_Service/Deprecated_Service2 \App_Service2</p>
<p>Where Deprecated_Service is the name of the service that has been deprecated and App_Service is the name of the specific application service that is to be modified; for example, NtLmSsp\WMI.</p>
<div class="alert">
<strong>Note</strong>  
<p>If you do not provide an App_Service name, the deprecated service will be removed from all newly created services.</p>
</div>
<div>
 
</div>
<div class="alert">
<strong>Note</strong>  
<p>You can separate multiple entries with a forward slash (/).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>DirectXVersionLie</p></td>
<td align="left"><p>This problem occurs when an application fails because it does not find the correct version number for DirectX®.</p>
<p>The fix modifies the DXDIAGN GetProp function call to return the correct DirectX version.</p>
<p>You can control this fix further by typing the following command at the command prompt:</p>
<p>MAJORVERSION.MINORVERSION.LETTER</p>
<p>For example, <code>9.0.c</code>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>DetectorDWM8And16Bit</p></td>
<td align="left"><p>This fix offeres mitigation for applications that work in 8/16-bit display color mode because these legacy color modes are not supported in Windows 8 .</p></td>
</tr>
<tr class="even">
<td align="left"><p>Disable8And16BitD3D</p></td>
<td align="left"><p>This fix improves performance of 8/16-bit color applications that render using D3D and do not mix directdraw.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Disable8And16BitModes</p></td>
<td align="left"><p>This fix disables 8/16-bit color mitigation and enumeration of 8/16-bit color modes.</p></td>
</tr>
<tr class="even">
<td align="left"><p>DisableDWM</p></td>
<td align="left"><p>The problem occurs when some objects are not drawn or object artifacts remain on the screen in an application.</p>
<p>The fix temporarily disables the Windows Aero menu theme functionality for unsupported applications.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the DisableDWM Fix]( https://go.microsoft.com/fwlink/p/?LinkId=690334).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>DisableFadeAnimations</p></td>
<td align="left"><p>The problem is indicated when an application fade animations, buttons, or other controls do not function properly.</p>
<p>The fix disables the fade animations functionality for unsupported applications.</p></td>
</tr>
<tr class="even">
<td align="left"><p>DisableThemeMenus</p></td>
<td align="left"><p>The problem is indicated by an application that behaves unpredictably when it tries to detect and use the correct Windows settings.</p>
<p>The fix temporarily disables the Windows Aero menu theme functionality for unsupported applications.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>DisableWindowsDefender</p></td>
<td align="left"><p>The fix disables Windows Defender for security applications that do not work with Windows Defender.</p></td>
</tr>
<tr class="even">
<td align="left"><p>DWM8And16BitMitigation</p></td>
<td align="left"><p>The fix offers mitigation for applications that work in 8/16-bit display color mode because these legacy color modes are not supported in Windows 8.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>DXGICompat</p></td>
<td align="left"><p>The fix allows application-specific compatibility instructions to be passed to the DirectX engine.</p></td>
</tr>
<tr class="even">
<td align="left"><p>DXMaximizedWindowedMode</p></td>
<td align="left"><p>Applications that use DX8/9 are run in a maximized windowed mode. This is required for applications that use GDI/DirectDraw in addition to Direct3D.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ElevateCreateProcess</p></td>
<td align="left"><p>The problem is indicated when installations, de-installations, or updates fail because the host process calls the CreateProcess function and it returns an ERROR_ELEVATION_REQUIRED error message.</p>
<p>The fix handles the error code and attempts to recall the CreateProcess function together with requested elevation. If the fixed application already has a UAC manifest, the error code will be returned unchanged.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the ElevateCreateProcess Fix](https://go.microsoft.com/fwlink/p/?LinkId=690335).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>EmulateOldPathIsUNC</p></td>
<td align="left"><p>The problem occurs when an application fails because of an incorrect UNC path.</p>
<p>The fix changes the PathIsUNC function to return a value of True for UNC paths in Windows. </p></td>
</tr>
<tr class="odd">
<td align="left"><p>EmulateGetDiskFreeSpace</p></td>
<td align="left"><p>The problem is indicated when an application fails to install or to run, and it generates an error message that there is not enough free disk space to install or use the application, even though there is enough free disk space to meet the application requirements.</p>
<p>The fix determines the amount of free space, so that if the amount of free space is larger than 2 GB, the compatibility fix returns a value of 2 GB, but if the amount of free space is smaller than 2 GB, the compatibility fix returns the actual free space amount.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the EmulateGetDiskFreeSpace Fix](https://go.microsoft.com/fwlink/p/?LinkId=690336).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>EmulateSorting</p></td>
<td align="left"><p>The problem occurs when an application experiences search functionality issues.</p>
<p>The fix forces applications that use the CompareStringW/LCMapString sorting table to use an older version of the table.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this e application fix, see [Using the EmulateSorting Fix](https://go.microsoft.com/fwlink/p/?LinkId=690337).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>EmulateSortingWindows61</p></td>
<td align="left"><p>The fix emulates the sorting order of Windows 7 and Windows Server 2008 R2 for various APIs.</p></td>
</tr>
<tr class="even">
<td align="left"><p>EnableRestarts</p></td>
<td align="left"><p>The problem is indicated when an application and computer appear to hang because processes cannot end to allow the computer to complete its restart processes.</p>
<p>The fix enables the computer to restart and finish the installation process by verifying and enabling that the SeShutdownPrivilege service privilege exists.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the EnableRestarts Fix](https://go.microsoft.com/fwlink/p/?LinkId=690338).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>ExtraAddRefDesktopFolder</p></td>
<td align="left"><p>The problem occurs when an application invokes the Release() method too many times and causes an object to be prematurely destroyed.</p>
<p>The fix counteracts the application's tries to obtain the shell desktop folder by invoking the AddRef() method on the Desktop folder, which is returned by the SHGetDesktopFolder function.</p></td>
</tr>
<tr class="even">
<td align="left"><p>FailObsoleteShellAPIs</p></td>
<td align="left"><p>The problem occurs when an application fails because it generated deprecated API calls.</p>
<p>The fix either fully implements the obsolete functions or implements the obsolete functions with stubs that fail.</p>
<div class="alert">
<strong>Note</strong>  
<p>You can type FailAll=1 at the command prompt to suppress the function implementation and force all functions to fail.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>FailRemoveDirectory</p></td>
<td align="left"><p>The problem occurs when an application uninstallation process does not remove all of the application files and folders.</p>
<p>This fix fails calls to RemoveDirectory() when called with a path matching the one specified in the shim command-line.  Only a single path is supported.  The path can contain environment variables, but must be an exact path – no partial paths are supported.</p>
<p>The fix can resolve an issue where an application expects RemoveDirectory() to delete a folder immediately even though a handle is open to it.</p></td>
</tr>
<tr class="even">
<td align="left"><p>FakeLunaTheme</p></td>
<td align="left"><p>The problem occurs when a theme application does not properly display: the colors are washed out or the user interface is not detailed.</p>
<p>The fix intercepts the GetCurrentThemeName API and returns the value for the Windows XP default theme, (Luna).</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about the FakeLunaTheme application fix, see [Using the FakeLunaTheme Fix](https://go.microsoft.com/fwlink/p/?LinkId=690339).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>FlushFile</p></td>
<td align="left"><p>This problem is indicated when a file is updated and changes do not immediately appear on the hard disk. Applications cannot see the file changes.</p>
<p>The fix enables the WriteFile function to call to the FlushFileBuffers APIs, which flush the file cache onto the hard disk.</p></td>
</tr>
<tr class="even">
<td align="left"><p>FontMigration</p></td>
<td align="left"><p>The fix replaces an application-requested font with a better font selection, to avoid text truncation.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ForceAdminAccess</p></td>
<td align="left"><p>The problem occurs when an application fails to function during an explicit administrator check.</p>
<p>The fix allows the user to temporarily imitate being a part of the Administrators group by returning a value of True during the administrator check.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the ForceAdminAccess Fix](https://go.microsoft.com/fwlink/p/?LinkId=690342).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>ForceInvalidateOnClose</p></td>
<td align="left"><p>The fix invalidates any windows that exist under a closing or hiding window for applications that rely on the invalidation messages.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ForceLoadMirrorDrvMitigation</p></td>
<td align="left"><p>The fix loads the Windows 8 mirror driver mitigation for applications where the mitigation is not automatically applied.</p></td>
</tr>
<tr class="even">
<td align="left"><p>FreestyleBMX</p></td>
<td align="left"><p>The fix resolves an application race condition that is related to window message order.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>GetDriveTypeWHook</p></td>
<td align="left"><p>The application presents unusual behavior during installation; for example, the setup program states that it cannot install to a user-specified location.</p>
<p>The fix changes GetDriveType() so that only the root information appears for the file path. This is required when an application passes an incomplete or badly-formed file path when it tries to retrieve the drive type on which the file path exists.</p></td>
</tr>
<tr class="even">
<td align="left"><p>GlobalMemoryStatusLie</p></td>
<td align="left"><p>The problem is indicated by a Computer memory full error message that displays when you start an application.</p>
<p>The fix modifies the memory status structure, so that it reports a swap file that is 400 MB, regardless of the true swap file size.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>HandleBadPtr</p></td>
<td align="left"><p>The problem is indicated by an access violation error message that displays because an API is performing pointer validation before it uses a parameter.</p>
<p>The fix supports using lpBuffer validation from the InternetSetOptionA and InternetSetOptionW functions to perform the additional parameter validation.</p></td>
</tr>
<tr class="even">
<td align="left"><p>HandleMarkedContentNotIndexed</p></td>
<td align="left"><p>The problem is indicated by an application that fails when it changes an attribute on a file or directory.</p>
<p>The fix intercepts any API calls that return file attributes and directories that are invoked from the %TEMP% directory, and resets the FILE_ATTRIBUTE_NOT_CONTENT_INDEXED attribute to its original state.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>HeapClearAllocation</p></td>
<td align="left"><p>The problem is indicated when the allocation process shuts down unexpectedly.</p>
<p>The fix uses zeros to clear out the heap allocation for an application.</p></td>
</tr>
<tr class="even">
<td align="left"><p>IgnoreAltTab</p></td>
<td align="left"><p>The problem occurs when an application fails to function when special key combinations are used.</p>
<p>The fix intercepts the RegisterRawInputDevices API and prevents the delivery of the WM_INPUT messages. This delivery failure forces the included hooks to be ignored and forces DInput to use Windows-specific hooks.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the IgnoreAltTab Fix](https://go.microsoft.com/fwlink/p/?LinkId=690343).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>IgnoreChromeSandbox</p></td>
<td align="left"><p>The fix allows Google Chrome to run on systems that have ntdll loaded above 4GB.</p></td>
</tr>
<tr class="even">
<td align="left"><p>IgnoreDirectoryJunction</p></td>
<td align="left"><p>The problem is indicated by a read or access violation error message that displays when an application tries to find or open files.</p>
<p>The fix links the FindNextFileW, FindNextFileA, FindFirstFileExW, FindFirstFileExA, FindFirstFileW and FindFirstFileA APIs to prevent them from returning directory junctions.</p>
<div class="alert">
<strong>Note</strong>  
<p>Symbolic links appear starting in Windows Vista.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>IgnoreException</p></td>
<td align="left"><p>The problem is indicated when an application stops functioning immediately after it starts, or the application starts with only a cursor appearing on the screen.</p>
<p>The fix enables the application to ignore specified exceptions. By default, this fix ignores privileged-mode exceptions; however, it can be configured to ignore any exception.</p>
<p>You can control this fix further by typing the following command at the command prompt:</p>
<p>Exception1;Exception2</p>
<p>Where Exception1 and Exception2 are specific exceptions to be ignored. For example: ACCESS_VIOLATION_READ:1;ACCESS_VIOLATION_WRITE:1.</p>
<div class="alert">
<strong>Important</strong>  
<p>You should use this compatibility fix only if you are certain that it is acceptable to ignore the exception. You might experience additional compatibility issues if you choose to incorrectly ignore an exception.</p>
</div>
<div>
 
</div>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the IgnoreException Fix](https://go.microsoft.com/fwlink/p/?LinkId=690344).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>IgnoreFloatingPointRoundingControl</p></td>
<td align="left"><p>This fix enables an application to ignore the rounding control request and to behave as expected in previous versions of the application.</p>
<p>Before floating point SSE2 support in the C runtime library, the rounding control request was being ignored which would use round to nearest option by default. This shim ignores the rounding control request to support applications relying on old behavior.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>IgnoreFontQuality</p></td>
<td align="left"><p>The problem occurs when application text appears to be distorted.</p>
<p>The fix enables color-keyed fonts to properly work with anti-aliasing.</p></td>
</tr>
<tr class="even">
<td align="left"><p>IgnoreMessageBox</p></td>
<td align="left"><p>The problem is indicated by a message box that displays with debugging or extraneous content when the application runs on an unexpected operating system.</p>
<p>The fix intercepts the MessageBox* APIs and inspects them for specific message text. If matching text is found, the application continues without showing the message box.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the IgnoreMessageBox Fix](https://go.microsoft.com/fwlink/p/?LinkId=690345).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>IgnoreMSOXMLMF</p></td>
<td align="left"><p>The problem is indicated by an error message that states that the operating system cannot locate the MSVCR80D.DLL file.</p>
<p>The fix ignores the registered MSOXMLMF.DLL object, which Microsoft® Office 2007 loads into the operating system any time that you load an XML file, and then it fails the CoGetClassObject for its CLSID. This compatibility fix will just ignore the registered MSOXMLMF and fail the CoGetClassObject for its CLSID.</p></td>
</tr>
<tr class="even">
<td align="left"><p>IgnoreSetROP2</p></td>
<td align="left"><p>The fix ignores read-modify-write operations on the desktop to avoid performance issues.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>InstallComponent</p></td>
<td align="left"><p>The fix prompts the user to install.Net 3.5 or .Net 2.0 because .Net is not included with Windows 8.</p></td>
</tr>
<tr class="even">
<td align="left"><p>LoadLibraryRedirect</p></td>
<td align="left"><p>The fix forces an application to load system versions of libraries instead of loading redistributable versions that shipped with the application.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>LocalMappedObject</p></td>
<td align="left"><p>The problem occurs when an application unsuccessfully tries to create an object in the Global namespace.</p>
<p>The fix intercepts the function call to create the object and replaces the word Global with Local.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the LocalMappedObject Fix](https://go.microsoft.com/fwlink/p/?LinkId=690346).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>MakeShortcutRunas</p></td>
<td align="left"><p>The problem is indicated when an application fails to uninstall because of access-related errors.</p>
<p>The fix locates any RunDLL.exe-based uninstallers and forces them to run with different credentials during the application installation. After it applies this fix, the installer will create a shortcut that specifies a matching string to run during the application installation, thereby enabling the uninstallation to occur later.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the MakeShortcutRunas Fix]( https://go.microsoft.com/fwlink/p/?LinkId=690347)</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>ManageLinks</p></td>
<td align="left"><p>The fix intercepts common APIs that are going to a directory or to an executable (.exe) file, and then converts any symbolic or directory junctions before passing it back to the original APIs.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MirrorDriverWithComposition</p></td>
<td align="left"><p>The fix allows mirror drivers to work properly with acceptable performance with desktop composition.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MoveToCopyFileShim</p></td>
<td align="left"><p>The problem occurs when an application experiences security access issues during setup.</p>
<p>The fix forces the CopyFile APIs to run instead of the MoveFile APIs. CopyFile APIs avoid moving the security descriptor, which enables the application files to get the default descriptor of the destination folder and prevents the security access issue.</p></td>
</tr>
<tr class="even">
<td align="left"><p>OpenDirectoryAcl</p></td>
<td align="left"><p>The problem is indicated by an error message that states that you do not have the appropriate permissions to access the application.</p>
<p>The fix reduces the security privilege levels on a specified set of files and folders.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the OpenDirectoryACL Fix](https://go.microsoft.com/fwlink/p/?LinkId=690348).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>PopCapGamesForceResPerf</p></td>
<td align="left"><p>The fix resolves the performance issues in PopCap games like Bejeweled2. The performance issues are visible in certain low-end cards at certain resolutions where the 1024x768 buffer is scaled to fit the display resolution.</p></td>
</tr>
<tr class="even">
<td align="left"><p>PreInstallDriver</p></td>
<td align="left"><p>The fix preinstalls drivers for applications that would otherwise try to install or start drivers during the initial start process.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>PreInstallSmarteSECURE</p></td>
<td align="left"><p>The fix preinstalls computer-wide CLSIDs for applications that use SmartSECURE copy protection, which would otherwise try to install the CLSIDs during the initial start process.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ProcessPerfData</p></td>
<td align="left"><p>The problem is indicated by an Unhandled Exception error message because the application tried to read the process performance data registry value to determine if another instance of the application is running.</p>
<p>The fix handles the failure case by passing a fake process performance data registry key, so that the application perceives that it is the only instance running.</p>
<div class="alert">
<strong>Note</strong>  
<p>This issue seems to occur most frequently with .NET applications.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>PromoteDAM</p></td>
<td align="left"><p>The fix registers an application for power state change notifications.</p></td>
</tr>
<tr class="even">
<td align="left"><p>PropagateProcessHistory</p></td>
<td align="left"><p>The problem occurs when an application incorrectly fails to apply an application fix.</p>
<p>The fix sets the _PROCESS_HISTORY environment variable so that child processes can look in the parent directory for matching information while searching for application fixes.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ProtectedAdminCheck</p></td>
<td align="left"><p>The problem occurs when an application fails to run because of incorrect Protected Administrator permissions.</p>
<p>The fix addresses the issues that occur when applications use non-standard Administrator checks, thereby generating false positives for user accounts that are being run as Protected Administrators. In this case, the associated SID exists, but it is set as deny-only.</p></td>
</tr>
<tr class="even">
<td align="left"><p>RedirectCRTTempFile</p></td>
<td align="left"><p>The fix intercepts failing CRT calls that try to create a temporary file at the root of the volume, thereby redirecting the calls to a temporary file in the user's temporary directory.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>RedirectHKCUKeys</p></td>
<td align="left"><p>The problem occurs when an application cannot be accessed because of User Account Control (UAC) restrictions.</p>
<p>The fix duplicates any newly created HKCU keys to other users' HKCU accounts. This fix is generic for UAC restrictions, whereby the HKCU keys are required, but are unavailable to an application at runtime.</p></td>
</tr>
<tr class="even">
<td align="left"><p>RedirectMP3Codec</p></td>
<td align="left"><p>This problem occurs when you cannot play MP3 files.</p>
<p>The fix intercepts the CoCreateInstance call for the missing filter and then redirects it to a supported version.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>RedirectShortcut</p></td>
<td align="left"><p>The problem occurs when an application cannot be accessed by its shortcut, or application shortcuts are not removed during the application uninstallation process.</p>
<p>The fix redirects all of the shortcuts created during the application setup to appear according to a specified path.</p>
<ul>
<li><p>Start Menu shortcuts: Appear in the \\ProgramData\Microsoft\Windows\Start Menu directory for all users.</p></li>
<li><p>Desktop or Quick Launch shortcuts:You must manually place the shortcuts on the individual user's desktop or Quick Launch bar.</p></li>
</ul>
<p>This issue occurs because of UAC restrictions: specifically, when an application setup runs by using elevated privileges and stores the shortcuts according to the elevated user's context. In this situation, a restricted user cannot access the shortcuts.</p>
<p>You cannot apply this fix to an .exe file that includes a manifest and provides a runlevel.</p></td>
</tr>
<tr class="even">
<td align="left"><p>RelaunchElevated</p></td>
<td align="left"><p>The problem occurs when installers, uninstallers, or updaters fail when they are started from a host application.</p>
<p>The fix enables a child .exe file to run with elevated privileges when it is difficult to determine the parent process with either the ElevateCreateProcess fix or by marking the .exe files to RunAsAdmin.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the RelaunchElevated Fix](https://go.microsoft.com/fwlink/p/?LinkId=690349).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>RetryOpenSCManagerWithReadAccess</p></td>
<td align="left"><p>The problem occurs when an application tries to open the Service Control Manager (SCM) and receives an Access Denied error message.</p>
<p>The fix retries the call and requests a more restricted set of rights that include the following:</p>
<ul>
<li><p>SC_MANAGER_CONNECT</p></li>
<li><p>SC_MANAGER_ENUMERATE_SERVICE</p></li>
<li><p>SC_MANAGER_QUERY_LOCK_STATUS</p></li>
<li><p>STANDARD_READ_RIGHTS</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the RetryOpenSCManagerwithReadAccess Fix](https://go.microsoft.com/fwlink/p/?LinkId=690350).</p>
</div>
<div>
 
</div></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>RetryOpenServiceWithReadAccess</p></td>
<td align="left"><p>The problem occurs when an Unable to open service due to your application using the OpenService() API to test for the existence of a particular service error message displays.</p>
<p>The fix retries the OpenService() API call and verifies that the user has Administrator rights, is not a Protected Administrator, and by using read-only access. Applications can test for the existence of a service by calling the OpenService() API but some applications ask for all access when making this check. This fix retries the call but only asking for read-only access. The user needs to be an administrator for this to work</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the RetryOpenServiceWithReadAccess Fix](https://go.microsoft.com/fwlink/p/?LinkId=690351).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>RunAsAdmin</p></td>
<td align="left"><p>The problem occurs when an application fails to function by using the Standard User or Protected Administrator account.</p>
<p>The fix enables the application to run by using elevated privileges. The fix is the equivalent of specifying requireAdministrator in an application manifest.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the RunAsAdmin Fix](https://go.microsoft.com/fwlink/p/?LinkId=690353).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>RunAsHighest</p></td>
<td align="left"><p>The problem occurs when administrators cannot view the read/write version of an application that presents a read-only view to standard users.</p>
<p>The fix enables the application to run by using the highest available permissions. This is the equivalent of specifying highestAvailable in an application manifest.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the RunAsHighest Fix](https://go.microsoft.com/fwlink/p/?LinkId=690355).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>RunAsInvoker</p></td>
<td align="left"><p>The problem occurs when an application is not detected as requiring elevation.</p>
<p>The fix enables the application to run by using the privileges that are associated with the creation process, without requiring elevation. This is the equivalent of specifying asInvoker in an application manifest.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the RunAsInvoker Fix](https://go.microsoft.com/fwlink/p/?LinkId=690356).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>SecuROM7</p></td>
<td align="left"><p>The fix repairs applications by using SecuROM7 for copy protection.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SessionShim</p></td>
<td align="left"><p>The fix intercepts API calls from applications that are trying to interact with services that are running in another session, by using the terminal service name prefix (Global or Local) as the parameter.</p>
<p>At the command prompt, you can supply a list of objects to modify, separating the values by a double backslash (\). Or, you can choose not to include any parameters, so that all of the objects are modified.</p>
<div class="alert">
<strong>Important</strong>  
<p>Users cannot log in as Session 0 (Global Session) in Windows Vista and later. Therefore, applications that require access to Session 0 automatically fail.</p>
</div>
<div>
 
</div>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the SessionShim Fix](https://go.microsoft.com/fwlink/p/?LinkId=690358).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>SetProtocolHandler</p></td>
<td align="left"><p>The fix registers an application as a protocol handler.</p>
<p>You can control this fix further by typing the following command at the command prompt:</p>
<p>Client;Protocol;App</p>
<p>Where the Client is the name of the email protocol, Protocol is mailto, and App is the name of the application.</p>
<div class="alert">
<strong>Note</strong>  
<p>Only the mail client and the mailto protocol are supported. You can separate multiple clients by using a backslash ().</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>SetupCommitFileQueueIgnoreWow</p></td>
<td align="left"><p>The problem occurs when a 32-bit setup program fails to install because it requires 64-bit drivers.</p>
<p>The fix disables the Wow64 file system that is used by the 64-bit editions of Windows, to prevent 32-bit applications from accessing 64-bit file systems during the application setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p>SharePointDesigner2007</p></td>
<td align="left"><p>The fix resolves an application bug that severely slows the application when it runs in DWM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ShimViaEAT</p></td>
<td align="left"><p>The problem occurs when an application fails, even after applying acompatibility fix that is known to fix an issue. Applications that use unicows.dll or copy protection often present this issue.</p>
<p>The fix applies the specified compatibility fixes by modifying the export table and by nullifying the use of module inclusion and exclusion.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more information about this application fix, see [Using the ShimViaEAT Fix](https://go.microsoft.com/fwlink/p/?LinkId=690359).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>ShowWindowIE</p></td>
<td align="left"><p>The problem occurs when a web application experiences navigation and display issues because of the tabbing feature.</p>
<p>The fix intercepts the ShowWindow API call to address the issues that can occur when a web application determines that it is in a child window. This fix calls the real ShowWindow API on the top-level parent window.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SierraWirelessHideCDROM</p></td>
<td align="left"><p>The fix repairs the Sierra Wireless Driver installation, thereby preventing bugcheck.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Sonique2</p></td>
<td align="left"><p>The application uses an invalid window style, which breaks in DWM. This fix replaces the window style with a valid value.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SpecificInstaller</p></td>
<td align="left"><p>The problem occurs when an application installation file fails to be picked up by the GenericInstaller function.</p>
<p>The fix flags the application as being an installer file (for example, setup.exe), and then prompts for elevation.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the SpecificInstaller Fix]( https://go.microsoft.com/fwlink/p/?LinkId=690361).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>SpecificNonInstaller</p></td>
<td align="left"><p>The problem occurs when an application that is not an installer (and has sufficient privileges) generates a false positive from the GenericInstaller function.</p>
<p>The fix flags the application to exclude it from detection by the GenericInstaller function.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the SpecificNonInstaller Fix](https://go.microsoft.com/fwlink/p/?LinkId=690363).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>SystemMetricsLie</p></td>
<td align="left"><p>The fix replaces SystemMetrics values and SystemParametersInfo values with the values of previous Windows versions.</p></td>
</tr>
<tr class="even">
<td align="left"><p>TextArt</p></td>
<td align="left"><p>The application receives different mouse coordinates with DWM ON versus DWM OFF, which causes the application to hang. This fix resolves the issue.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>TrimDisplayDeviceNames</p></td>
<td align="left"><p>The fix trims the names of the display devices that are returned by the EnumDisplayDevices API.</p></td>
</tr>
<tr class="even">
<td align="left"><p>UIPICompatLogging</p></td>
<td align="left"><p>The fix enables the logging of Windows messages from Internet Explorer and other processes.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>UIPIEnableCustomMsgs</p></td>
<td align="left"><p>The problem occurs when an application does not properly communicate with other processes because customized Windows messages are not delivered.</p>
<p>The fix enables customized Windows messages to pass through to the current process from a lower Desktop integrity level. This fix is the equivalent of calling the RegisterWindowMessage function, followed by the ChangeWindowMessageFilter function in the code.</p>
<p>You can control this fix further by typing the following command at the command prompt:</p>
<p>MessageString1 MessageString2</p>
<p>Where MessageString1 and MessageString2 reflect the message strings that can pass.</p>
<div class="alert">
<strong>Note</strong>  
<p>Multiple message strings must be separated by spaces. For more detailed information about this application fix, see [Using the UIPIEnableCustomMsgs Fix](https://go.microsoft.com/fwlink/p/?LinkId=690365).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>UIPIEnableStandardMsgs</p></td>
<td align="left"><p>The problem occurs when an application does not communicate properly with other processes because standard Windows messages are not delivered.</p>
<p>The fix enables standard Windows messages to pass through to the current process from a lower Desktop integrity level. This fix is the equivalent of calling the ChangeWindowMessageFilter function in the code.</p>
<p>You can control this fix further by typing the following command at the command prompt:</p>
<p>1055 1056 1069</p>
<p>Where 1055 reflects the first message ID, 1056 reflects the second message ID, and 1069 reflects the third message ID that can pass.</p>
<div class="alert">
<strong>Note</strong>  
<p>Multiple messages can be separated by spaces. For more detailed information about this application fix, see [Using the UIPIEnableStandardMsgs Fix [act]](https://go.microsoft.com/fwlink/p/?LinkId=690367).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>VirtualizeDeleteFileLayer</p></td>
<td align="left"><p>The fix virtualizes DeleteFile operations for applications that try to delete protected files.</p></td>
</tr>
<tr class="even">
<td align="left"><p>VirtualizeDesktopPainting</p></td>
<td align="left"><p>This fix improves the performance of a number of operations on the Desktop DC while using DWM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>VirtualRegistry</p></td>
<td align="left"><p>The problem is indicated when a Component failed to be located error message displays when an application is started.</p>
<p>The fix enables the registry functions to allow for virtualization, redirection, expansion values, version spoofing, the simulation of performance data counters, and so on.</p>
<p>For more detailed information about this application fix, see [Using the VirtualRegistry Fix](https://go.microsoft.com/fwlink/p/?LinkId=690368).</p></td>
</tr>
<tr class="even">
<td align="left"><p>VirtualizeDeleteFile</p></td>
<td align="left"><p>The problem occurs when several error messages display and the application cannot delete files.</p>
<p>The fix makes the application's DeleteFile function call a virtual call in an effort to remedy the UAC and file virtualization issues that were introduced with Windows Vista. This fix also links other file APIs (for example, GetFileAttributes) to ensure that the virtualization of the file is deleted.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the VirtualizeDeleteFile Fix](https://go.microsoft.com/fwlink/p/?LinkId=690369).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>VirtualizeHKCRLite</p></td>
<td align="left"><p>The problem occurs when an application fails to register COM components at runtime.</p>
<p>The fix redirects the HKCR write calls (HKLM) to the HKCU hive for a per-user COM registration. This operates much like the VirtualRegistry fix when you use the VirtualizeHKCR parameter; however, VirtualizeHKCRLite provides better performance.</p>
<p>HKCR is a virtual merge of the HKCU\Software\Classes and HKLM\Software\Classes directories. The use of HKCU is preferred if an application is not elevated and is ignored if the application is elevated.</p>
<p>You typically will use this compatibility fix in conjunction with the VirtualizeRegisterTypeLib fix.</p>
<p>For more detailed information about this application fix, see [Using the VirtualizeHKCRLite Fix](https://go.microsoft.com/fwlink/p/?LinkId=690370).</p></td>
</tr>
<tr class="even">
<td align="left"><p>VirtualizeRegisterTypeLib</p></td>
<td align="left"><p>The fix, when it is used with the VirtualizeHKCRLite fix, ensures that the type library and the COM class registration happen simultaneously. This functions much like the RegistryTypeLib fix when the RegisterTypeLibForUser parameter is used.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the VirtualizeRegisterTypelib Fix](https://go.microsoft.com/fwlink/p/?LinkId=690371).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>WaveOutIgnoreBadFormat</p></td>
<td align="left"><p>This problem is indicated by an error message that states: Unable to initialize sound device from your audio driver; the application then closes.</p>
<p>The fix enables the application to ignore the format error and continue to function properly.</p></td>
</tr>
<tr class="even">
<td align="left"><p>WerDisableReportException</p></td>
<td align="left"><p>The fix turns off the silent reporting of exceptions to the Windows Error Reporting tool, including those that are reported by Object Linking and Embedding-Database (OLE DB). The fix intercepts the RtlReportException API and returns a STATUS_NOT_SUPPORTED error message.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Win7RTM/Win8RTM</p></td>
<td align="left"><p>The layer provides the application with Windows 7/Windows 8 compatibility mode.</p></td>
</tr>
<tr class="even">
<td align="left"><p>WinxxRTMVersionLie</p></td>
<td align="left"><p>The problem occurs when an application fails because it does not find the correct version number for the required Windows operating system.</p>
<p>All version lie compatibility fixes address the issue whereby an application fails to function because it is checking for, but not finding, a specific version of the operating system. The version lie fix returns the appropriate operating system version information. For example, the VistaRTMVersionLie returns the Windows Vista version information to the application, regardless of the actual operating system version that is running on the computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Wing32SystoSys32</p></td>
<td align="left"><p>The problem is indicated by an error message that states that the WinG library was not properly installed.</p>
<p>The fix detects whether the WinG32 library exists in the correct directory. If the library is located in the wrong location, this fix copies the information (typically during the runtime of the application) into the %WINDIR% \system32 directory.</p>
<div class="alert">
<strong>Important</strong>  
<p>The application must have Administrator privileges for this fix to work.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>WinSrv08R2RTM</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>WinXPSP2VersionLie</p></td>
<td align="left"><p>The problem occurs when an application experiences issues because of a VB runtime DLL.</p>
<p>The fix forces the application to follow these steps:</p>
<ol>
<li><p>Open the Compatibility Administrator, and then select <strong>None</strong> for <strong>Operating System Mode</strong>.</p></li>
<li><p>On the <strong>Compatibility Fixes</strong> page, click <strong>WinXPSP2VersionLie</strong>, and then click <strong>Parameters</strong>.</p>
<p>The <strong>Options for &lt;fix_name&gt;</strong> dialog box appears.</p></li>
<li><p>Type vbrun60.dll into the <strong>Module Name</strong> box, click <strong>Include</strong>, and then click <strong>Add</strong>.</p></li>
<li><p>Save the custom database.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more information about the WinXPSP2VersionLie application fix, see [Using the WinXPSP2VersionLie Fix](https://go.microsoft.com/fwlink/p/?LinkId=690374).</p>
</div>
<div>
 
</div></li>
</ol></td>
</tr>
<tr class="even">
<td align="left"><p>WRPDllRegister</p></td>
<td align="left"><p>The application fails when it tries to register a COM component that is released together with Windows Vista and later.</p>
<p>The fix skips the processes of registering and unregistering WRP-protected COM components when calling the DLLRegisterServer and DLLUnregisterServer functions.</p>
<p>You can control this fix further by typing the following command at the command prompt:</p>
<p>Component1.dll;Component2.dll</p>
<p>Where Component1.dll and Component2.dll reflect the components to be skipped.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about this application fix, see [Using the WRPDllRegister Fix](https://go.microsoft.com/fwlink/p/?LinkId=690375).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>WRPMitigation</p></td>
<td align="left"><p>The problem is indicated when an access denied error message displays when the application tries to access a protected operating system resource by using more than read-only access.</p>
<p>The fix emulates the successful authentication and modification of file and registry APIs, so that the application can continue.</p>
<div class="alert">
<strong>Note</strong>  
<p>For more detailed information about WRPMitigation, see [Using the WRPMitigation Fix](https://go.microsoft.com/fwlink/p/?LinkId=690376).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>WRPRegDeleteKey</p></td>
<td align="left"><p>The problem is indicated by an access denied error message that displays when the application tries to delete a registry key.</p>
<p>The fix verifies whether the registry key is WRP-protected. If the key is protected, this fix emulates the deletion process.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>XPAfxIsValidAddress</p></td>
<td align="left"><p>The fix emulates the behavior of Windows XP for MFC42!AfxIsValidAddress.</p></td>
</tr>
</tbody>
</table>

 

## Compatibility Modes


The following table lists the known compatibility modes.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Compatibility Mode Name</th>
<th align="left">Description</th>
<th align="left">Included Compatibility Fixes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>WinSrv03</p></td>
<td align="left"><p>Emulates the Windows Server 2003 operating system.</p></td>
<td align="left"><ul>
<li><p>Win2k3RTMVersionLie</p></li>
<li><p>VirtualRegistry</p></li>
<li><p>ElevateCreateProcess</p></li>
<li><p>EmulateSorting</p></li>
<li><p>FailObsoleteShellAPIs</p></li>
<li><p>LoadLibraryCWD</p></li>
<li><p>HandleBadPtr</p></li>
<li><p>GlobalMemoryStatus2GB</p></li>
<li><p>RedirectMP3Codec</p></li>
<li><p>EnableLegacyExceptionHandlinginOLE</p></li>
<li><p>NoGhost</p></li>
<li><p>HardwareAudioMixer</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>WinSrv03Sp1</p></td>
<td align="left"><p>Emulates the Windows Server 2003 with Service Pack 1 (SP1) operating system.</p></td>
<td align="left"><ul>
<li><p>Win2K3SP1VersionLie</p></li>
<li><p>VirtualRegistry</p></li>
<li><p>ElevateCreateProcess</p></li>
<li><p>EmulateSorting</p></li>
<li><p>FailObsoleteShellAPIs</p></li>
<li><p>LoadLibraryCWD</p></li>
<li><p>HandleBadPtr</p></li>
<li><p>EnableLegacyExceptionHandlinginOLE</p></li>
<li><p>RedirectMP3Codec</p></li>
<li><p>HardwareAudioMixer</p></li>
</ul></td>
</tr>
</tbody>
</table>
