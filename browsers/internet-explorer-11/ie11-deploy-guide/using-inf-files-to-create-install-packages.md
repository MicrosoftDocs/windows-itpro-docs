---
Description: 'Using .INF files to create packages'
MS-HAID: 'p\_ie11deploy.using\_inf\_files\_to\_create\_packages'
MSHAttr: 'PreferredLib:/library'
title: Using .INF files to create packages (Internet Explorer 11 for IT Pros)
---

# Using .INF files to create packages


IEAK 11 uses Setup information (.inf) files to provide uninstallation instructions. Uninstallation instructions let your employees remove components, like files, registry entries, or shortcuts, through the **Uninstall or change a program** box. For details about .inf files, see [INF File Sections and Directives](http://go.microsoft.com/fwlink/p/?LinkId=327959).

![](../common/wedge.gif)**To add uninstallation instructions to the .inf files**

-   Open the Registry Editor (regedit.exe) and add these registry keys:

    ``` syntax
    HKLM,SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\app-name,"DisplayName",,"description"
    HKLM,SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\app-name,"UninstallString",,"command-line"
    ```

    Where **"description"** is the name that shows up in the **Uninstall or change a program** box and **"command-line"** is the command that runs after the component is picked.

    **Note**  
    Make sure your script removes the uninstallation registry key, too. Otherwise, the component name will continue to show up in the **Uninstall or change a program**.

     

## Limitations


.Inf files have limitations:

-   You can't delete directories.

-   You can't use **RenFiles** to move a file to a different location, it only lets you rename a file in its existing location. For detailed information, see [INF RenFiles Directive](http://go.microsoft.com/fwlink/p/?LinkId=298508).

-   You can't use **CopyFiles** to copy a file to another place on your hard drive, it can only copy files from the source disk to the destination directory. For information, see [INF CopyFiles Directive](http://go.microsoft.com/fwlink/p/?LinkId=298510).

 

 



