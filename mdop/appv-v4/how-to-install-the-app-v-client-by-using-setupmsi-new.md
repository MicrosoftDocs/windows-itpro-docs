---
title: How to Install the App-V Client by Using Setup.msi
description: How to Install the App-V Client by Using Setup.msi
author: dansimp
ms.assetid: 7221f384-36d6-409a-94a2-86f54fd75322
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# How to Install the App-V Client by Using Setup.msi


This topic describes how to install the App-V client by using the setup.msi program. Before you install the App-V client using the setup.msi program, you must first determine if any prerequisite software must be installed, and then you must install it. To install the prerequisite software, see the [Installing Prerequisite Software](#prereq-sw) section of this topic. To install the client software, see the [Installing the App-V Client Using the Setup.msi Program](#msi-setup) section of this topic.

## <a href="" id="prereq-sw"></a>Installing Prerequisite Software


You can use the following procedures to install the prerequisite software. You can create a command file and run the commands from the command prompt, or you can use a scripting language such as VBScript or Windows PowerShell to run the commands.

**Note**  
The x86 versions of the following software are required for both x86 and x64 versions of the App-V client.

 

**To install Microsoft Visual C++ 2005 SP1 Redistributable Package (x86)**

1.  Download the [Microsoft Visual C++ 2005 SP1 Redistributable Package (x86)](https://go.microsoft.com/fwlink/?LinkId=119961) software package from the Microsoft Download Center (https://go.microsoft.com/fwlink/?LinkId=119961). \[Template Token Value\] For version 4.5 SP2 and later of the App-V client, download vcredist\_x86.exe from [Microsoft Visual C++ 2005 Service Pack 1 Redistributable Package ATL Security Update](https://go.microsoft.com/fwlink/?LinkId=169360) (https://go.microsoft.com/fwlink/?LinkId=169360).\[Template Token Value\]

2.  To install silently, use the command-line option “/Q” with vcredist\_x86.exe—for example, **vcredist\_x86.exe /Q**.

3.  To install the software by using the vcredist\_x86.msi file, use the command-line option “/C /T:&lt;fullpathtofolder&gt;” to extract the files vcredist.msi and vcredis1.cab from vcredist\_x86.exe to a temporary folder. To install silently, use the command-line option /quiet—for example, **msiexec /i vcredist.msi** /quiet.

### To install Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)

**Important**  
For version 4.6 and later of the App-V client, you must also install the Microsoft Visual C++ 2008 Service Pack 1 Redistributable Package ATL Security Update.

 

****

1.  Download the [Microsoft Visual C++ 2008 Service Pack 1 Redistributable Package ATL Security Update](https://go.microsoft.com/fwlink/?LinkId=150700) software package from the Microsoft Download Center (https://go.microsoft.com/fwlink/?LinkId=150700).

2.  To install silently, use the command-line option “/Q” with vcredist\_x86.exe—for example, **vcredist\_x86.exe /Q**.

### To install Microsoft Core XML Services (MSXML) 6.0 SP1 (x86)

****

1.  Download the [Microsoft Core XML Services (MSXML) 6.0 SP1 (x86)](https://go.microsoft.com/fwlink/?LinkId=63266) software package from the Microsoft Download Center (https://go.microsoft.com/fwlink/?LinkId=63266).

2.  To install silently, use the command-line option /quiet—for example, **msiexec /i msxml6\_x86.msi /quiet**.

### To install Microsoft Application Error Reporting

When installing Microsoft Application Error Reporting, you must use the *APPGUID* parameter to specify the App-V product code. The product code is unique for each App-V client type and version. Select the correct product code from the following table.

**Important**  
For App-V 4.6 SP2 and later, you no longer need to install Microsoft Application Error Reporting (dw20shared.msi). App-V now uses Microsoft Error Reporting.

 

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Version</th>
<th align="left">Product Code for Desktop Client</th>
<th align="left">Product Code for Client for Remote Desktop Services</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V 4.5 CU1</p></td>
<td align="left"><p>FE495DBC-6D42-4698-B61F-86E655E0796D</p></td>
<td align="left"><p>8A97C241-D92A-47DC-B360-E716C1AAA929</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V 4.5 SP1</p></td>
<td align="left"><p>93468B43-C19D-44F9-8BCC-114076DB0443</p></td>
<td align="left"><p>0042AD3C-99A4-4E58-B5F0-744D5AD96E1C</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V 4.5 SP2</p></td>
<td align="left"><p>C6FC75B9-7D86-4C44-8BDB-EAFE1F0E200D</p></td>
<td align="left"><p>ECF80BBA-CA07-4A74-9ED6-E064F38AF1F5</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V 4.6 x86</p></td>
<td align="left"><p>9E9D30B2-2065-4FDE-B756-8F1A6EABAFC3</p></td>
<td align="left"><p>439FAC21-B423-41D4-8126-54F9FCB70039</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V 4.6 x64</p></td>
<td align="left"><p>E569E45F-7BA6-4C7F-B6BA-3FFCBE92FC22</p></td>
<td align="left"><p>D2977C18-D88A-47CB-AFD8-652DD36F4D0D</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V 4.6 x86 ¹</p></td>
<td align="left"><p>40C3258B-F9D1-46DF-AE97-72C1F86F2427</p></td>
<td align="left"><p>9915D911-CC73-4122-AF4F-564F89454655</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V 4.6 x64 ¹</p></td>
<td align="left"><p>1650E31F-23B8-40B5-A60A-C5934F557E3B</p></td>
<td align="left"><p>7580D918-C621-49E7-9877-3CC59F9BD1DA</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V 4.6 x86 SP1</p></td>
<td align="left"><p>DB9F70CD-29BC-480B-8BA2-C9C2232C4553</p></td>
<td align="left"><p>1354855A-2298-4C73-9022-EF0686C65991</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V 4.6 x64 SP1</p></td>
<td align="left"><p>342C9BB8-65A0-46DE-AB7A-8031E151AF69</p></td>
<td align="left"><p>B2C6C8D5-FE76-4056-A326-EE5D633EA175</p></td>
</tr>
</tbody>
</table>

 

¹ App-V “Languages” release.

**Note**  
If you need to find the product code, you can use the Orca.exe database editor or a similar tool to examine Windows Installer files to find the value of the *ProductCode* property. For more information about using Orca.exe, see [Windows Installer Development Tools](https://go.microsoft.com/fwlink/?LinkId=150008) (https://go.microsoft.com/fwlink/?LinkId=150008).

 

****

1.  Locate the Microsoft Application Error Reporting install program, dw20shared.msi, which can be found in the **Support\\Watson** folder on the release media.

2.  To install the software, run the following command:

         **msiexec /i dw20shared.msi APPGUID={valuefromtable} REBOOT=Suppress REINSTALL=ALL REINSTALLMODE=vomus**

## <a href="" id="msi-setup"></a>Installing the App-V Client by Using the Setup.msi Program


Use the following procedure to install the App-V client. Ensure that any necessary prerequisite software has been installed. \[Template Token Value\] For version 4.6 and later of the App-V client, the setup.msi program checks the system and if prerequisite software is not installed, it generates an error message indicating that installation cannot continue. \[Template Token Value\]

**To install the Application Virtualization Client by Using Setup.msi**

1.  Make sure you are logged on with an account that has administrator rights on the computer.

2.  Open a Command Prompt window by using elevated rights, and then change the directory to the folder that contains the setup files. When installing version 4.6 or a later version of the App-V client, you must use the correct installer for the computer’s operating system, 32-bit or 64-bit. The installation will fail and an error message will be displayed if you use the wrong installer.

3.  Enter the install command string at the command prompt. Alternatively, you can create a command file and run it from the command prompt. You can also use a scripting language such as VBScript or Windows PowerShell to run the command.

4.  The following command-line example shows how setup.msi can be used with a number of optional parameters. For more information about these parameters, see [Application Virtualization Client Installer Command-Line Parameters](application-virtualization-client-installer-command-line-parameters.md).

    **msiexec.exe /i "setup.msi" SWICACHESIZE="10240" SWIPUBSVRDISPLAY="Production System" SWIPUBSVRTYPE="HTTP /secure" SWIPUBSVRHOST="PRODSYS" SWIPUBSVRPORT="443" SWIPUBSVRPATH="/AppVirt/appsntype.xml" SWIPUBSVRREFRESH="on" SWIGLOBALDATA="D:\\AppVirt\\Global" SWIUSERDATA="^% LOCALAPPDATA^%\\Windows\\Application Virtualization Client" SWIFSDRIVE="S" /q**

    **Important**  
    -   The Windows Installer switch "**/q**" is used to make this a silent installation.

    -   The "**%**" characters in "**%HomeDrive%**" must be preceded by the "**^**" escape character. Otherwise, the Windows command shell sets the value to that of the user who is performing the installation.

    -   To turn on installation logging, use the msiexec switch **/l\*v filename.log**.

     

## Related topics


[How to Install the Client by Using the Command Line](how-to-install-the-client-by-using-the-command-line-new.md)

 

 





