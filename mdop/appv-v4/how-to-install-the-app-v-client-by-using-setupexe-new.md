---
title: How to Install the App-V Client by Using Setup.exe
description: How to Install the App-V Client by Using Setup.exe
author: dansimp
ms.assetid: 106a5d97-b5f6-4a16-bf52-a84f4d558c74
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install the App-V Client by Using Setup.exe


This topic describes how to install the App-V client by using the setup.exe program. When you install the App-V client using the setup.exe program, the installer determines which prerequisite software is needed and installs it automatically before it installs the client.

**To install the Application Virtualization Client by Using Setup.exe**

1.  Make sure you are logged on with an account that has administrator rights on the computer.

2.  Open a Command Prompt window, and then change the directory to the folder that contains the setup files. When installing version 4.6 or a later version of the App-V client, you must use the correct installer for the computer’s operating system, 32-bit or 64-bit. The installation will fail and an error message will be displayed if you use the wrong installer.

3.  Enter the install command string at the command prompt. Alternatively, you can create a command file and run it from the command prompt. You can also use a scripting language such as VBScript or Windows PowerShell to run the command.

4.  The following command-line example shows how setup.exe can be used with a number of optional parameters. For more information about these parameters, see [Application Virtualization Client Installer Command-Line Parameters](application-virtualization-client-installer-command-line-parameters.md).

    **"setup.exe" /s /v"/qn SWICACHESIZE=\\"10240\\" SWIPUBSVRDISPLAY=\\"Production System\\" SWIPUBSVRTYPE=\\"HTTP /secure\\" SWIPUBSVRHOST=\\"PRODSYS\\" SWIPUBSVRPORT=\\"443\\" SWIPUBSVRPATH=\\"/AppVirt/appsntype.xml\\" SWIPUBSVRREFRESH=\\"on\\" SWIGLOBALDATA=\\"D:\\AppVirt\\Global\\" SWIUSERDATA=\\"^% LOCALAPPDATA ^%\\Windows\\Application Virtualization Client\\" SWIFSDRIVE=\\"Q\\""**

    **Important**  
    -   The quotation marks that appear in the "**/v**" section must be treated as special characters and entered with a preceding "**\\**". The quotation marks are required only when the value contains a space; however, for consistency, all the instances in the preceding example are shown as having quotation marks.

    -   The "**%**" characters in "**%HomeDrive%**" must be preceded by the "**^**" escape character. Otherwise, the Windows command shell sets the value to that of the user who is performing the installation.

    -   The **InstallShield** switches **/s** and **/qn** are needed to make this a silent install. The **/qn** switch must follow the **/v** switch, separated by only a quote character with no intervening spaces.

    -   The folder specified in the **SWIGLOBALDATA** value must already exist.

     

5.  When the installation is complete, we recommend that you run a Microsoft Update scan to ensure the latest updates are installed.

## Related topics


[How to Install the Client by Using the Command Line](how-to-install-the-client-by-using-the-command-line-new.md)

 

 





