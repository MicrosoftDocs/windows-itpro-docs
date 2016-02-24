---
Description: IExpress Wizard for Windows Server 2008 R2 with SP1
MS-HAID: 'p\_ieak\_ie11.iexpress\_wizard\_for\_windows\_server\_2008\_r2\_with\_sp1'
MSHAttr: 'PreferredLib:/library'
title: IExpress Wizard for Windows Server 2008 R2 with SP1
---

# IExpress Wizard for Windows Server 2008 R2 with SP1


You can use the IExpress Wizard and its associated command-line options to create self-extracting files that automatically run your custom Internet Explorer Setup (.inf or .exe file) program that’s contained inside.

## IExpress location


The IExpress Wizard (Iexpress.exe) is included as part of Windows Server 2008 R2 with Service Pack 1 (SP1), in the *&lt;systemdrive&gt;*:\\WINDOWS\\system32 folder. The wizard uses a self-extraction directive (.sed) file to store your package’s information. When you run the wizard, you have the option to start with an existing .sed file, or to create a new one.

## IExpress features


The IExpress Wizard:

-   Performs silent, unattended installations of your custom IE packages.

-   Supports upgrading IE without removing previous installations.

-   Supports repeated updating or performing clean installations of the same IE build.

## IExpress settings


The IExpress Wizard lets you:

-   Decide whether the self-installing package is for administrators or for general employees.

-   Set multiple ways to run the installation command, such as in normal or silent mode.

-   Determine whether the IExpress dynamic-link libraries (.dll files) are updated on an employee’s computer.

-   Determine the compatibility of the installation package, based on the operating system version range, the browser version range, or any application version range.

-   Update and add files to the IExpress package, using the UPDFILE tool, without having to rebuild the package.

-   Replace Runonce with RunOnceEx (if the newer version of Iernonce.dll exists); giving you control over the job run order and status display.

-   Let corporate administrators set up support for roaming employees.

-   Let Internet Content Providers (ICPs) and Internet Service Providers (ISPs) generate packages for preconfigured desktops with custom, current content.

-   Save disk space by cleaning up the hard drive when running in Setup, uninstallation, and maintenance modes.

-   Provide support for multiple download sites.

-   Provide support for internal and external development, customization, expandability, and enhanced debugging.

-   Provide support for the extended character set, beyond single-byte characters (SBCS).

-   Provide support for using the .inf file format to download Internet components. For more information, see [Creating uninstallation (.INF) files for custom components](creating_uninstallation__inf__files_for_custom_components.md).

## Related topics


[IExpress command-line options](iexpress_command_line_options.md)
[Internet Explorer Setup command-line options and return codes](internet_explorer_setup_command_line_options_and_return_codes.md)
 

 



