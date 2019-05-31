---
title: Server Event Logs
description: Server Event Logs
author: dansimp
ms.assetid: 04e724d2-28cc-4fa8-86a1-0d4ab0234b11
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Server Event Logs


The tables in this section provide information about MBAM Server log event IDs.

## Configuration


The following table contains messages and troubleshooting information for event IDs that can occur on the MBAM Server during configuration.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Event ID</th>
<th align="left">Source</th>
<th align="left">Event symbol</th>
<th align="left">Message</th>
<th align="left">Troubleshooting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>103</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server/Operational</p></td>
<td align="left"><p>VssRegistrationException</p></td>
<td align="left"><p>An exception was thrown during VSS registration.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>104</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server/Operational</p></td>
<td align="left"><p>VssDeregistrationException</p></td>
<td align="left"><p>An exception was thrown during VSS deregistration.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>300</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>CmdletError</p></td>
<td align="left"><p>Failed in removing folder.</p></td>
<td align="left"><p>Indicates that a terminating error occurred while performing a task. Inspect other event messages in the log to further diagnose MBAM setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p>301</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>cmdletUnexpectedError</p></td>
<td align="left"><p>Unexpected Cmdlet error.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>302</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>CmdletWarning</p></td>
<td align="left"><p>Cmdlet warning.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>303</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server/Operational</p></td>
<td align="left"><p>CmdletInformation</p></td>
<td align="left"><p>Cmdlet information.</p></td>
<td align="left"><p>Informational only; no troubleshooting required. The event indicates that a task is taking place by the Cmdlets such as enabling\disabling a feature or cancelling an operation.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>400</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>ConfiguratorError</p></td>
<td align="left"><p>Configurator error.</p></td>
<td align="left"><p>Indicates that an error has occurred while launching the MBAM Configurator. Ensure that the user has adequate privileges to launch the MBAM Configurator.</p></td>
</tr>
<tr class="even">
<td align="left"><p>401</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>ConfiguratorUnexpectedError</p></td>
<td align="left"><p>Unexpected Configurator error.</p></td>
<td align="left"><p>Indicates that a terminating error has occurred while performing an MBAM Configurator task. The error message will contain more details about the error. Inspect other error messages in the event log to further diagnose MBAM setup. Known errors include:</p>
<ul>
<li><p>Failure to retrieve or validate a Certificate that was selected by the user</p></li>
<li><p>Failure to parse the Reports URL</p></li>
<li><p>Failure to open Event Logs for the user</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>402</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>ConfiguratorWarning</p></td>
<td align="left"><p>Configurator warning.</p></td>
<td align="left"><p>Indicates that an MBAM Configurator task is not complete as expected but did not fail completely. Known tasks include missing certificate in the LocalMachine\My store that was configured in the web application feature, or a timeout for a pending task.</p></td>
</tr>
<tr class="even">
<td align="left"><p>410</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server/Operational</p></td>
<td align="left"><p>ConfiguratorInformation</p></td>
<td align="left"><p>Configurator information.</p></td>
<td align="left"><p>Informational only; no troubleshooting required. The event indicates that a task is being invoked by the MBAM Configurator. Known tasks include:</p>
<ul>
<li><p>Launching the configurator</p></li>
<li><p>Checking software prerequisites for an MBAM feature</p></li>
<li><p>Validating parameters for an MBAM feature</p></li>
<li><p>Enabling\disabling\committing an MBAM feature</p></li>
<li><p>Generating a PowerShell script from the configurator</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>500</p></td>
<td align="left"><p>Microsoft_Windows_MBAM_Server_Admin</p></td>
<td align="left"><p>WebProviderUnexpectedError</p></td>
<td align="left"><p>Web application provider unexpected error.</p></td>
<td align="left"><p>Indicates that an error has occurred while enabling and configuring an MBAM web site or web service in IIS. Known errors include:</p>
<ul>
<li><p>Failure to find IIS WWW root folder</p></li>
<li><p>Failure to access IIS configuration in web.config due to malformed files or missing settings</p></li>
<li><p>Failure to create or remove a web application</p></li>
<li><p>IIS access violation</p></li>
</ul>
<p>This error is also logged if MBAM cannot access Active Directory (AD) to validate user accounts. Verify that IIS is installed, correctly configured, and the IIS service is running. Verify that all the MBAM software prerequisite checks pass. Verify that the user has the correct permissions to create web applications on the IIS instance. Verify that the user has access to read user account objects in AD.</p></td>
</tr>
<tr class="even">
<td align="left"><p>501</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>WebProviderError</p></td>
<td align="left"><p>Web application provider unexpected error.</p></td>
<td align="left"><p>Indicates that an error has occurred while enabling, disabling, or configuring an MBAM web site or web service in IIS. Known errors include:</p>
<ul>
<li><p>Failure to read basic or WSHttp binding information from IIS</p></li>
<li><p>Missing identity section or DNS entry in identity section in IIS config files</p></li>
<li><p>Failure to open registry key HKLM\SOFTWARE\Microsoft\InetStp</p></li>
<li><p>Failure to read value PathWWWRoot from registry key HKLM\SOFTWARE\Microsoft\InetStp</p></li>
<li><p>User is trying to specify a virtual directory name with a reserved name for MBAM</p></li>
</ul>
<p>Verify that IIS is installed and correctly configured. Verify that the registry key HKLM\SOFTWARE\Microsoft\InetStp:PathWWWRoot exists and accessible. Verify that the binding information in IIS is not corrupt.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>502</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>WebProviderWarning</p></td>
<td align="left"><p>Web application provider warning.</p></td>
<td align="left"><p>Indicates that a non-terminating error has occurred while enabling an MBAM web site or web service. Known errors include:</p>
<ul>
<li><p>Failure to access AD to validate the Service Principal Name (SPN) on the app pool account</p></li>
<li><p>Failure to validate SPN because it is assigned to multiple accounts in AD</p></li>
<li><p>Failure to register an SPN on the app pool account in AD</p></li>
<li><p>SPN is registered on an account other than the app pool in AD</p></li>
<li><p>Failure to remove SPN from the app pool account in AD during a rollback operation</p></li>
<li><p>Failure to check if the IIS_IUSRS group has been granted the logon as batch privilege on the IIS server</p></li>
</ul>
<p>The event message will contain more information about the specific error. Verify that AD is reachable from the server where MBAM setup is running. Verify that the user who is running the MBAM setup has read permissions on the app pool account in AD. If an SPN is already registered on the app pool account in AD then make sure that it is not registered on other accounts.</p></td>
</tr>
<tr class="even">
<td align="left"><p>503</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server/Operational</p></td>
<td align="left"><p>WebProviderInformation</p></td>
<td align="left"><p>Web application provider information. {Description}</p></td>
<td align="left"><p>Informational only; no troubleshooting required. The event indicates that a task is being invoked by the MBAM Setup. Known tasks include getting IIS configuration such as binding information and root site, and configuring Service Principal Name (SPN).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>600</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>SetupUnexpectedError</p></td>
<td align="left"><p>Unexpected setup error.</p></td>
<td align="left"><p>Indicates that a terminating error has occurred while enabling\disabling or configuring an MBAM feature. Known errors include:</p>
<ul>
<li><p>Failure to rollback a task after an error</p></li>
<li><p>Failure to read from the registry</p></li>
<li><p>Failure to create or delete a folder in the file system</p></li>
<li><p>Failure to read SQL version information</p></li>
<li><p>Failure to register VSS writer in SQL</p></li>
</ul>
<p>The event message will contain more information about the specific error. Verify that all MBAM software prerequisite checks pass. Make sure the MBAM registry path, if exists, HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MBAM Server and all the subkeys are readable. Verify that AD is reachable from the server where MBAM setup is running. Verify that the user who is running the MBAM setup has read permissions in AD.</p>
<p>For a successful VSS writer registration, verify that a supported version of SQL is installed and an instance is accessible to the user who is running the MBAM setup. If disabling an MBAM feature or uninstalling MBAM verify that all files such as log files and web.config files are closed so MBAM can remove its web sites and web services.</p></td>
</tr>
<tr class="even">
<td align="left"><p>601</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>SetupError</p></td>
<td align="left"><p>Setup error.</p></td>
<td align="left"><p>Indicates that a terminating error has occurred while enabling\disabling or configuring an MBAM feature. Known errors include:</p>
<ul>
<li><p>Failure to read MBAM configuration in IIS</p></li>
<li><p>Corrupt appSettings section in IIS configuration or misconfigured settings</p></li>
<li><p>Failure to validate host name</p></li>
<li><p>Failure to read SQL version information</p></li>
<li><p>Failure to register VSS writer in SQL</p></li>
</ul>
<p>The event message will contain more information about the specific error. Verify that IIS is installed and configured correctly. Verify that all MBAM software prerequisite checks pass. For a successful VSS writer registration, verify that a supported version of SQL is installed and an instance is accessible to the user who is running the MBAM setup.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>602</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>SetupWarning</p></td>
<td align="left"><p>Setup warning.</p></td>
<td align="left"><p>Indicates that a non-terminating error has occurred while enabling\disabling or configuring an MBAM feature such as Configuration Manager (CM) Integration or MBAM web application. Known errors include: failure to delete MBAM Reports from SRS Role point in the CM, and failure to resolve a host name from the domain controller. The event message will contain more information about the specific error.</p>
<p>Verify that AD is reachable from the server where MBAM setup is running. Verify that the user who is running the MBAM setup has remove permissions on the SSRS instance that is configured as an SRS Role point in CM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>603</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server/Operational</p></td>
<td align="left"><p>SetupInformation</p></td>
<td align="left"><p>Setup information.</p></td>
<td align="left"><p>Informational only; no troubleshooting required.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>605</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>WebProviderSoftwareCheckFailure</p></td>
<td align="left"><p>Web application cannot be enabled because one or more software dependencies are not being met.</p></td>
<td align="left"><p>During MBAM web site/web service installation, MBAM setup verifies if necessary prerequisites are in place. This message indicates that MBAM failed to install the requested web site/web service as the necessary prerequisite is missing. Refer to error messages preceding this message to get more information about missing prerequisites.</p></td>
</tr>
<tr class="even">
<td align="left"><p>606</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>SetupParameterValidationFailure</p></td>
<td align="left"><p>The parameter that is needed to enable the server feature was either not specified or it did not pass the validation.</p></td>
<td align="left"><p>Indicates that the parameter that is needed to configure an MBAM feature was either not specified or it did not pass the validation.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>607</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>SetupParameterValidationFailureWithError</p></td>
<td align="left"><p>Error encountered while trying to validate specified parameter that is needed to enable the server feature.</p></td>
<td align="left"><p>Indicates that an error was encountered while trying to validate specified parameter that is needed to enable the server feature.</p></td>
</tr>
<tr class="even">
<td align="left"><p>700</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>DbProviderUnexpectedError</p></td>
<td align="left"><p>DB provider unexpected error.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>701</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>DbProviderError</p></td>
<td align="left"><p>DB provider error.</p></td>
<td align="left"><p>The message contained in the EventDetails section should provide more information about actual error. These are some of the areas to verify:</p>
<ul>
<li><p>MBAM Setup failed to connect to Database using the provided connection information. Verify the connection string details provided to MBAM setup.</p></li>
<li><p>MBAM Setup could not connect to the given database using the supplied domain account credentials. Verify that domain account user name and password are valid.</p></li>
<li><p>MBAM Setup could not connect to the given database using the supplied domain account credentials. Verify that the provided domain account has necessary permissions in place to connect to MBAM database.</p></li>
<li><p>MBAM Dac pac will fail if a newer version of MBAM database is already installed. Verify that a new version of MBAM DBs does not exist on the given SQL server.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>702</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>DbProviderWarning</p></td>
<td align="left"><p>DB provider warning.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>703</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server/Operational</p></td>
<td align="left"><p>DbProviderInformation</p></td>
<td align="left"><p>DB provider information.</p></td>
<td align="left"><p>Informational only; no troubleshooting required.</p></td>
</tr>
<tr class="even">
<td align="left"><p>704</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>DbProviderDacError</p></td>
<td align="left"><p>An error occurred while deploying the Data-Tier Application.</p></td>
<td align="left"><p>MBAM packages its databases as data tier applications and tries to register them using Microsoft.SqlServer.Dac.DacServices. The error message in context is reported by DAC service. The event should contain detailed information about what caused it. Read the information in the error message to troubleshoot and fix the issue.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>705</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>DbProviderDacWarning</p></td>
<td align="left"><p>A warning occurred while deploying the Data-Tier Application.</p></td>
<td align="left"><p>MBAM packages its databases as data tier application and tries to register them using Microsoft.SqlServer.Dac.DacServices. The warning message in context is reported by DAC service. The event should contain detailed information about what caused it. Read the information in the warning message to troubleshoot and fix the issue.</p></td>
</tr>
<tr class="even">
<td align="left"><p>706</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server/Operational</p></td>
<td align="left"><p>DbProviderDacInformation</p></td>
<td align="left"><p>A message was raised while deploying the Data-Tier Application.</p></td>
<td align="left"><p>Informational only; no troubleshooting required.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>800</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>ReportProviderUnexpectedError</p></td>
<td align="left"><p>Report provider unexpected error.</p></td>
<td align="left"><p>Report provider unexpected error. {Description} {exceptionDetails} These are some of the possible exception details:</p>
<p><strong>An error occurred while getting the name of directory '{directoryName}'</strong></p>
<p><strong>An exception occurred while getting files for directory '{directoryName}'</strong></p>
<p><strong>An exception occurred while enumerating directories in directory '{directoryName}'</strong></p>
<p><strong>An exception occurred while reading all bytes for file '{fileName}'</strong></p>
<p>During MBAM installation, MBAM setup unzips all the report files to the specified installation path. As a part of report installation, install module tries to access the unzipped report files at installation path and communicates with SQL Reporting services to publish the report files. The above errors occur when MBAM cannot access the files/folders at unzipped Installation path. These are some tips to troubleshoot this issue:</p>
<ul>
<li><p>Verify that MBAM is installed.</p></li>
<li><p>Verify that regkey HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MBAM Server\InstallationPath is present and accessible to the executing user.</p></li>
<li><p>Verify that Path to Report files under MBAM InstallationPath does not exceed 248 characters.</p></li>
<li><p>Verify that MBAM Setup folder or the files contained in MBAM Installation path has not been modified since installation.</p></li>
<li><p>Verify that user running the setup is authorized to read from/write to MBAM Installation folder.</p></li>
</ul>
<p><strong>Reporting Services connectivity failed.{exceptionDetails}</strong></p>
<p>During MBAM reports installation, modules tries to communicate with SSRS web services to create folders and publish reports. The above message indicates that MBAM could not find or communicate with SSRS web services. These are some tips to troubleshoot this issue:</p>
<ul>
<li><p>Verify that SSRS is installed on the specified machine.</p></li>
<li><p>Using SSRS console verify that SSRS is enabled and running.</p></li>
<li><p>Verify that user running the setup is authorized to access SSRS.</p></li>
</ul>
<p><strong>Failed to remove the MBAM Reports using Reporting Services instance URL '{SSRSInstanceUrl}'.Make sure the SSRS instance required for MBAM Reports is running and configured correctly.</strong></p>
<p>When MBAM installation fails or When user disables MBAM Reporting features, setup module removes SSRS reports. The above message indicates that MBAM failed to remove SSRS reports. These are some tips to troubleshoot this issue:</p>
<ul>
<li><p>Verify that SSRS is installed on the specified machine.</p></li>
<li><p>Using SSRS console verify that SSRS is enabled and running.</p></li>
<li><p>Verify that the user running the setup is authorized to access SSRS.</p></li>
</ul>
<p><strong>An error occurred while publishing reports.{exceptionDetails}.</strong></p>
<p>During MBAM reports installation, modules tries to communicate with SSRS web services to create folders and publish reports. The above message indicates that SSRS web service reported and exception while publishing reports. These are some tips to troubleshoot this issue:</p>
<ul>
<li><p>Using SSRS console verify that SSRS is enabled and running.</p></li>
<li><p>Verify that the user running the setup is authorized to access/publish reports to SSRS.</p></li>
</ul>
<p><strong>A policy for group user name '{userName}' already exists. In case this is not correct, manually revise the Reporting Service for duplicate or invalid policies.</strong></p>
<p>After Publishing MBAM reports, MBAM setup tries to create a MBAM Report Users roles (if it does not exist already) and sets corresponding user policy. The above error indicates that SSRS web service threw an exception while setting up report user role policy. Follow the instructions in the event message and refer to &quot;https://www.microsoft.com/technet/support/ee/transform.aspx?ProdName=SQL+Server+Reporting+Services&amp;ProdVer=8.00&amp;EvtID=rsInvalidPolicyDefinition&amp;EvtSrc=Microsoft.ReportingServices.Diagnostics.ErrorStrings.resources.Strings&amp;LCID=1033&quot; for more help.</p>
<p><strong>An error occurred while validating access to SSRS {exceptionDetails}.</strong></p>
<p>As part of prerequisite check, MBAM setup verifies if the user has necessary permissions to access/create folder under SSRS. The error message indicates that an exception has occurred while verifying access to SSRS. Refer to the exception details for debugging tips.</p>
<p><strong>A SOAP error occurred while checking the SSRS URL.{exceptionDetails}</strong></p>
<p><strong>A web error occurred while checking the SSRS URL.{exceptionDetails}</strong></p>
<p><strong>An http/https error occurred while checking the SSRS URL.{exceptionDetails}</strong></p>
<p><strong>An error occurred while checking the SSRS URL.{exceptionDetails}</strong></p>
<p>As part of prerequisite check, MBAM setup retrieves URLs associated with the supplied SSRS instance and tries to communicate with SSRS web service. The above error message indicates that SSRS web service at the given URL threw an exception, Refer to exception details for more information. These are some tips to resolve SSRS communication issues.</p>
<ul>
<li><p>Verify that SSRS is installed on the specified machine.</p></li>
<li><p>Using SSRS console verify that SSRS is enabled and running.</p></li>
<li><p>Verify that the user running the setup is authorized to access SSRS.</p></li>
</ul>
<p><strong>An error occurred while retrieving the SSRS version. {exceptionDetails}</strong></p>
<p>As part of prerequisite check, MBAM setup queries WMI to retrieve the version number associated to the supplied SSRS instance. The above error message indicates that an exception occurred while querying WMI. Refer to exceptionDetails for more information. These are some checks you can perform:</p>
<ul>
<li><p>Verify that SSRS with given instance name is installed on the specified machine.</p></li>
<li><p>Using SSRS console verify that SSRS is enabled and running.</p></li>
<li><p>Verify that the user executing the setup is authorized to query SSRS class under WMI namespace.</p></li>
</ul>
<p><strong>The current user is not authorized to access the WMI namespace '{ssrsWMINamespace}'.</strong></p>
<p><strong>An error occurred while enumerating the namespace '{ssrsWMINamespace}'. RPC server for SSRS WMI provider on the local host is not found.</strong></p>
<p><strong>An error occurred while enumerating the namespace '{ssrsNamespace}'. Unable to find an instance of SSRS on the local host.</strong></p>
<p><strong>An error occurred while accessing WMI. RPC server for instance '{ssrsInstance}' was not found.</strong></p>
<p><strong>An error occurred while accessing WMI. Instance name '{ssrsInstanceName}' is not correct.</strong></p>
<p><strong>An error occurred while accessing WMI. Unable to find instance '{ssrsInstanceName}' on the local host.</strong></p>
<p>As part of prerequisite check, MBAM setup queries WMI to retrieve WMI namespace associated to given instance. The above error message indicates that and exception was occurred while querying WMI. Refer to exceptionDetails for more information. These are some checks you can perform:</p>
<ul>
<li><p>Verify that SSRS with given instance name is installed on the specified machine.</p></li>
<li><p>Using SSRS console verify that SSRS is enabled and running.</p></li>
<li><p>Verify that the user running the setup is authorized to access/query SSRS class under WMI namespace.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>801</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>ReportProviderError</p></td>
<td align="left"><p>Report provider unexpected error.</p></td>
<td align="left"><p>Given the SQL server reporting services instance name, MBAM tries to find the WMI namespace corresponding to the reporting instance and connect to it. This error occurs if MBAM encounters an exception when MBAM searches for or tries to connect to SSRS WMI namespace. Read the information in the error messages logged in the MBAM setup channel before this message to get more details. Here are some things you can check:</p>
<ul>
<li><p>Verify that SSRS with supplied instance name is up and running</p></li>
<li><p>Verify that the user account running MBAM installation has necessary permissions to query/connect to SSRS WMI namespace</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>802</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>ReportProviderWarning</p></td>
<td align="left"><p>Report provider warning.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>803</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server/Operational</p></td>
<td align="left"><p>ReportProviderInformation</p></td>
<td align="left"><p>Report provider information.</p></td>
<td align="left"><p>Informational only; no troubleshooting required.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>900</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>CMProviderUnexpectedError</p></td>
<td align="left"><p>CM provider unexpected error.</p></td>
<td align="left"><p>Indicates that a terminating error has occurred while enabling\disabling or configuring the Configuration Manager (CM) Integration feature in MBAM. Known errors include:</p>
<ul>
<li><p>Failure to connect to the CM site server via the SMS Provider</p></li>
<li><p>Failure to read from the registry</p></li>
<li><p>Failure to create or delete a folder in the file system</p></li>
<li><p>Failure to locate the Configuration Manager Console installation on the local machine</p></li>
<li><p>Failure to retrieve information for the SSRS instance that is configured as an SRS Role point in CM</p></li>
</ul>
<p>The event message will contain more information about the specific error. Verify that all MBAM software prerequisite checks pass. Verify that the MBAM registry path, if exists, HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MBAM Server and all the subkeys are readable. Verify that MBAM is being integrated with a supported version of Configuration Manager. Verify that the Configuration Manager Console is installed on the machine where the MBAM setup is being invoked and that the console can be used to connect to the target CM Site Server. Verify that a valid SSRS instance is configured as an SRS Role point in CM and that the user who is running the MBAM setup has read\write permissions on the SSRS instance.</p></td>
</tr>
<tr class="even">
<td align="left"><p>901</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server /Admin</p></td>
<td align="left"><p>CMProviderError</p></td>
<td align="left"><p>CM provider unexpected error.</p></td>
<td align="left"><p>Indicates that a terminating error has occurred while enabling\disabling or configuring the Configuration Manager (CM) Integration feature in MBAM. Known errors include:</p>
<ul>
<li><p>failure to connect to the CM Site Server via the SMS Provider</p></li>
<li><p>failure to read from the registry</p></li>
<li><p>failure to create or delete a folder in the file system</p></li>
<li><p>failure to locate the Configuration Manager Console installation on the local machine</p></li>
<li><p>missing ConfigMgr folder in SSRS as the root folder for the SRS Role point reports</p></li>
<li><p>missing ConfigMgr shared data source in SSRS</p></li>
<li><p>failure to deploy SSRS reports in the SSRS instance that is configured as an SRS Role point in CM</p></li>
<li><p>failure to create Configuration Items and baselines in CM</p></li>
</ul>
<p>The event message will contain more information about the specific error. Verify that all MBAM software prerequisite checks pass. Verify that the MBAM registry path, if exists, HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MBAM Server and all the subkeys are readable. Verify that MBAM is being integrated with a supported version of Configuration Manager. Verify that the Configuration Manager Console is installed on the machine where the MBAM setup is being invoked and that the console can be used to connect to the target CM Site Server. Verify that the user has the required read\write permissions to create Configuration Items, Baselines, and Collections in CM. Verify that a valid SSRS instance is configured as an SRS Role point in CM and that the user who is running the MBAM setup has read\write permissions on the SSRS instance.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>902</p></td>
<td align="left"><p>Microsoft_Windows_MBAM_Server_Admin</p></td>
<td align="left"><p>CMProviderWarning</p></td>
<td align="left"><p>CM provider warning.</p></td>
<td align="left"><p>Indicates that a non-terminating error has occurred while enabling the Configuration Manager (CM) Integration feature. Known errors include: failure to commit collection rules in the MBAM Supported Computers collection in CM, and other SSRS and network related errors.</p>
<p>The event message will contain more information about the specific error. Some operations that caused this warning are retired after the warning. If after several retries the error persists, then MBAM might end with an actual error. Inspect other event messages in the log to further diagnose MBAM setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p>903</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Server/Operational</p></td>
<td align="left"><p>CMProviderInformation</p></td>
<td align="left"><p>CM provider information.</p></td>
<td align="left"><p>Informational only; no troubleshooting required.</p></td>
</tr>
</tbody>
</table>

 

## Operation


The following table contains messages and troubleshooting information for event IDs that can occur while MBAM is running.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Event ID</th>
<th align="left">Source</th>
<th align="left">Event Symbol</th>
<th align="left">Message</th>
<th align="left">Troubleshooting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>1</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>WebAppSpnError</p></td>
<td align="left"><p>Application: {SiteName}\{VirtualDirectory} is missing the following Service Principal Names (SPNs):{ListOfSpns} Register the required SPNs on the account: {ExecutionAccount}.</p></td>
<td align="left"><p>For Integrated Windows Authentication to succeed, necessary SPNs needs to be in place. This message indicates that the SPN required for MBAM application has not been correctly configured. Details contained in this event should provide more information.</p>
<p>See “Service Principal Name (SPN)” in [MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md#bkmk-prereqsams) for more information.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Operational</p></td>
<td align="left"><p>PerformanceCounterError</p></td>
<td align="left"><p>An error occurred while retrieving a performance counter.</p>
<p>Message:{EventMessage}Category:{CategoryOfPerformanceCounter} Performance Counter:{NameOfPerformanceCounter} Instance:{Name of performance counter category instance} Exception:{ExceptionThrown}</p>
<p>Trace message will contain the actual exception message, some of which are explained here:</p>
<p><strong>ArgumentNullException</strong>: This exception is thrown if the category, counter or instance of requested Performance counter is invalid.</p>
<p><strong>System.InvalidOperationException</strong>: categoryName is an empty string (&quot;&quot;).-or- counterName is an empty string(&quot;&quot;).</p>
<p>-or- The read/write permission setting requested is invalid for this counter.</p>
<p>-or- The category specified does not exist (if readOnly is true).</p>
<p>-or- The category specified is not a .NET Framework custom category (if readOnly is false).</p>
<p>-or-The category specified is marked as multi-instance and requires the performance counter to be created with an instance name.</p>
<p>-or-instanceName is longer than 127 characters.</p>
<p>-or-categoryName and counterName have been localized into different languages.</p>
<p><strong>System.ComponentModel.Win32Exception</strong>: An error occurred when accessing a system API.</p>
<p><strong>System.PlatformNotSupportedException</strong>: The platform is Windows 98 or Windows Millennium Edition (ME), which does not support performance counters.</p>
<p><strong>System.UnauthorizedAccessException</strong>: Code that is executing without administrative privileges attempted to read a performance counter.</p></td>
<td align="left"><p>The message contained in the event will provide more details around the exception that was thrown. If a System.UnauthorizedAccessException was thrown, verify that MBAM execution account (app pool) has access to performance counter APIs.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>100</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>AdminServiceRecoveryDbError</p></td>
<td align="left"><p><strong>GetMachineUsers</strong>: An error occurred while getting user information from the database. Message:{message} -or-</p>
<p><strong>GetRecoveryKey</strong>: an error occurred while getting recovery key from the database. Message:{message} -or-</p>
<p><strong>GetRecoveryKey</strong>: an error occurred while getting user information from the database. Message:{message} -or-</p>
<p><strong>GetRecoveryKeyIds</strong>: an error occurred while getting recovery key Ids from the database. Message:{message} -or-</p>
<p><strong>GetTpmHashForUser</strong>: An error occurred while getting TPM hash data from the recovery database. Message:{message} -or-</p>
<p><strong>GetTpmHashForUser</strong>: An error occurred while getting TPM hash data from the recovery database. Message:{message}-or-</p>
<p><strong>QueryDriveRecoveryData</strong>: An error occurred while getting drive recovery data from the database. Message:{message}-or-</p>
<p><strong>QueryRecoveryKeyIdsForUser</strong>: An error occurred while getting recovery key Ids from the database. Message:{message} -or-</p>
<p><strong>QueryVolumeUsers</strong>: An error occurred while getting user information from the database.</p></td>
<td align="left"><p>This message is logged whenever there is an exception while communicating with the MBAM recovery database. Read through the information contained in the trace to get specific details about the exception.</p>
<p>For detailed troubleshooting steps, see the TechNet article [How to Troubleshoot Connecting to the SQL Server Database Engine](https://social.technet.microsoft.com/wiki/contents/articles/2102.how-to-troubleshoot-connecting-to-the-sql-server-database-engine.aspx).</p></td>
</tr>
<tr class="even">
<td align="left"><p>101</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>AdminServiceComplianceDbError</p></td>
<td align="left"><p><strong>GetRecoveryKey</strong>: An error occurred while logging an audit event to the compliance database. Message:{message} -or-</p>
<p><strong>GetRecoveryKeyIds</strong>: An error occurred while logging an audit event to the compliance database. Message:{message} -or-</p>
<p><strong>GetTpmHashForUser</strong>: An error occurred while logging an audit event to the compliance database. Message:{message} -or-</p>
<p><strong>QueryRecoveryKeyIdsForUser</strong>: An error occurred while logging an audit event to the compliance database. Message:{message} -or-</p>
<p><strong>QueryDriveRecoveryData</strong>: An error occurred while logging an audit event to the compliance database. Message:{message}</p></td>
<td align="left"><p>This message is logged whenever there is an exception while communicating the MBAM compliance database. Read through the information contained in the trace to get specific details about the exception.</p>
<p>For detailed troubleshooting steps, see the TechNet article [How to Troubleshoot Connecting to the SQL Server Database Engine](https://social.technet.microsoft.com/wiki/contents/articles/2102.how-to-troubleshoot-connecting-to-the-sql-server-database-engine.aspx).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>102</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>AgentServiceRecoveryDbError</p></td>
<td align="left"><p></p></td>
<td align="left"><p>This message indicates an exception when MBAM Agent service tries to communicate with the recovery database. Read through the message contained in the event to get specific information about the exception.</p>
<p>See the TechNet article [How to Troubleshoot Connecting to the SQL Server Database Engine](https://social.technet.microsoft.com/wiki/contents/articles/2102.how-to-troubleshoot-connecting-to-the-sql-server-database-engine.aspx) to verify whether the MBAM app pool account has required permissions in place to connect or execute on MBAM recovery database.</p></td>
</tr>
<tr class="even">
<td align="left"><p>103</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>AgentServiceError</p></td>
<td align="left"><p>Unable to detect client machine account or data migration user account. -or-</p>
<p>Account verification failed for caller identity.</p></td>
<td align="left"><p>Whenever a call is made to the &quot;PostKeyRecoveryInfo&quot;, &quot;IsRecoveryKeyResetRequired&quot;, &quot;CommitRecoveryKeyRest&quot;, or &quot;GetTpmHash&quot; web methods on MBAM Agent services, it retrieves the caller context to obtain caller credentials. If the caller context is null or empty, the MBAM Agent service logs &quot;Unable to detect client machine account or data migration user account.&quot;</p>
<p>The message &quot;Account verification failed for caller identity &quot; is logged if the web method is expecting the caller to a be computer account and the caller is not a computer account, or if the web method is excepting the caller to be a user account and the caller is not a user account or member of data migration group account.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>104</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>StatusServiceComplianceDbConfigError</p></td>
<td align="left"><p>&quot;The Compliance database connection string in the registry is empty.&quot;</p></td>
<td align="left"><p>This message is logged whenever the compliance db connection string is invalid.</p>
<p>Verify the value at the registry key HKLM\Software\Microsoft\MBAM Server\Web\ComplianceDBConnectionString</p></td>
</tr>
<tr class="even">
<td align="left"><p>105</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>StatusServiceComplianceDbError</p></td>
<td align="left"><p></p></td>
<td align="left"><p>This error indicates that MBAM websites/web services were unable to connect to the MBAMCompliance database.</p>
<p>See the TechNet article [How to Troubleshoot Connecting to the SQL Server Database Engine](https://social.technet.microsoft.com/wiki/contents/articles/2102.how-to-troubleshoot-connecting-to-the-sql-server-database-engine.aspx) to verify that the IIS app pool account could connect to the MBAM compliance database.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>106</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>HelpdeskError</p></td>
<td align="left"><p>The request to URL {url} caused an internal error. -or-</p>
<p>An error occurred while obtaining execution context information. Unable to verify Service Principal Name (SPN) registration. -or-</p>
<p>An error occurred while verifying Service Principal Name (SPN) registration.</p></td>
<td align="left"><p>Indicates that an unhandled exception has been raised in Helpdesk application. Review the log entries in the MBAM Admin operational channel to find the specific exception. –or-</p>
<p>During the initial Helpdesk website load operation, an SPN check is performed. To verify SPN, the Helpdesk requires execution account information, IIS Sitename, and ApplicationVirtualPath corresponding to Helpdesk website. This error message is logged when one or more of these is invalid or missing. –or-</p>
<p>This message indicates that a security exception is thrown while performing SPN verification. Refer to the exception contained in event details section.</p></td>
</tr>
<tr class="even">
<td align="left"><p>107</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>SelfServicePortalError</p></td>
<td align="left"><p>An error occurred while getting recovery key for a user. EventDetails:{ExceptionMessage} -or-</p>
<p>An error occurred while obtaining execution context information. Unable to verify Service Principal Name (SPN) registration. EventDetails: User: {username Identity} Application:{SiteName\ApplicationVirtualPath} -or-</p>
<p>An error occurred while verifying Service Principal Name (SPN) registration. EventDetails:{ExceptionMessage}</p></td>
<td align="left"><p>Indicates that an unexpected exception was thrown when a request was made to retrieve recovery key. Refer to the exception message contained in event details section. If tracing is enabled on MBAM Helpdesk, refer to trace data to obtain detailed exception messages. –or-</p>
<p>During an initial load operation, the Self-Service Portal (SSP) retrieves execution account information, IIS Sitename, and ApplicationVirtualPath corresponding to the Self-Service website to verify SPN. This error message is logged when one or more of these is invalid. –or-</p>
<p>This message indicates that a security exception was thrown while performing SPN verification. Refer to the exception contained in event details section.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>108</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>DomainControllerError</p></td>
<td align="left"><p>An error occurred while resolving domain name {DomainName}, A memory allocation failure occurred. -or-</p>
<p>Could not invoke DsGetDcName method. EventDetails:{ExceptionMessage}</p></td>
<td align="left"><p>To resolve Domain name, MBAM leverages &quot;DsGetDcName&quot; windows API. This message is logged when &quot;DsGetDcName&quot; returns &quot;ERROR_NOT_ENOUGH_MEMORY&quot; indicating a memory allocation failure. –or-</p>
<p>This message indicates that &quot;DsGetDcName&quot; API method is unavailable on the hosting system.</p></td>
</tr>
<tr class="even">
<td align="left"><p>109</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>WebAppRecoveryDbError</p></td>
<td align="left"><p>An error occurred while reading the configuration of the Recovery database. The connection string to the Recovery database is not configured. Message:{message} -or-</p>
<p><strong>DoesUserHaveMatchingRecoveryKey</strong>: an error occurred while getting recovery key Ids for a user. Message:{message} -or-</p>
<p><strong>QueryDriveRecoveryData</strong>: an error occurred while getting drive recovery data. Message:{message} -or-</p>
<p><strong>QueryRecoveryKeyIdsForUser</strong>: an error occurred while getting recovery key Ids for a user. Message:{message} -or-</p>
<p>An error occurred while getting TPM password hash from the Recovery database. EventDetails:{ExceptionMessage}</p></td>
<td align="left"><p>This message indicates that recovery database connection string information at &quot;HKLM\Software\Microsoft\MBAM Server\Web\RecoveryDBConnectionString&quot; is invalid. Verify the given registry key value. –or-</p>
<p>If any of the remaining messages are logged, refer to the troubleshooting steps listed at the TechNet article [How to Troubleshoot Connecting to the SQL Server Database Engine](https://social.technet.microsoft.com/wiki/contents/articles/2102.how-to-troubleshoot-connecting-to-the-sql-server-database-engine.aspx) to verify whether a connection could be made to the MBAM Recovery database from IIS server using app pool credentials.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>110</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>WebAppComplianceDbError</p></td>
<td align="left"><p>An error occurred while reading the configuration of the Compliance database. The connection string to the Compliance database is not configured. -or-</p>
<p><strong>GetRecoveryKeyForCurrentUser</strong>: an error occurred while logging an audit event to the Compliance database. Message:{message} -or-</p>
<p><strong>QueryRecoveryKeyIdsForUser</strong>: an error occurred while logging an audit event to the Compliance database. Message:{message} -or-</p>
<p><strong>QueryRecoveryKeyIdsForUser</strong>: an error occurred while logging an audit event to the compliance database. Message:{message}</p></td>
<td align="left"><p>This message indicates that compliance db connection string information at &quot;HKLM\Software\Microsoft\MBAM Server\Web\ComplianceDBConnectionString&quot; is invalid. Verify the value corresponding to above registry key. –or-</p>
<p>If any of the remaining messages are logged, refer to the troubleshooting steps listed at the TechNet article [How to Troubleshoot Connecting to the SQL Server Database Engine](https://social.technet.microsoft.com/wiki/contents/articles/2102.how-to-troubleshoot-connecting-to-the-sql-server-database-engine.aspx) to verify whether a connection could be made to the MBAM Compliance database from IIS server using app pool credentials.</p></td>
</tr>
<tr class="even">
<td align="left"><p>111</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>WebAppDbError</p></td>
<td align="left"><p></p></td>
<td align="left"><p>These errors indicate one of the following two conditions</p>
<ul>
<li><p>MBAM websites/webservices were unable to either connect to MBAMCompliance OR MBAMRecovery database</p></li>
<li><p>MBAM websites/webservices execution account(app pool account) could not run the GetVersion stored procedure on MBAMCompliance OR MBAMRecovery database</p></li>
</ul>
<p>The message contained in the event will provide more details about the exception.</p>
<p>Refer to the troubleshooting steps listed at the TechNet article [How to Troubleshoot Connecting to the SQL Server Database Engine](https://social.technet.microsoft.com/wiki/contents/articles/2102.how-to-troubleshoot-connecting-to-the-sql-server-database-engine.aspx) to verify that the MBAM execution account (app pool account) could connect to MBAM compliance/recovery database and it has permissions in place to execute GetVersion stored procedure.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>112</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Admin</p></td>
<td align="left"><p>WebAppError</p></td>
<td align="left"><p>An error occurred while verifying Service Principal Name (SPN) registration. EventDetails:{ExceptionMessage}</p></td>
<td align="left"><p>To perform SPN verification, MBAM queries Active Directory to retrieve a list of SPNs mapped execution account. MBAM also queries the &quot;ApplicationHost.config&quot; to obtain MBAM website bindings. This error message indicates that MBAM could not communicate with Active Directory or it could not load the applicationHost.config file.</p>
<p>Verify that the execution account (app pool account) has permissions to query AD or the ApplicationHost.config file. Also verify the site binding entries in ApplicationHost.config file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>200</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Operational</p></td>
<td align="left"><p>HelpDeskInformation</p></td>
<td align="left"><p>The administration website application successfully found and connected to a supported version of the Recovery database. -or-</p>
<p>The administration website application successfully found and connected to a supported version of the Compliance database.</p></td>
<td align="left"><p>Indicates successful connection to the Recovery/Compliance database from the MBAM Helpdesk website.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>201</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Operational</p></td>
<td align="left"><p>SelfServicePortalInformation</p></td>
<td align="left"><p>The Self-Service Portal application successfully found and connected to a supported version of the Recovery database. -or-</p>
<p>The Self-Service Portal application successfully found and connected to a supported version of the Compliance database.</p></td>
<td align="left"><p>Indicates successful connection to the Recovery/Compliance database from the MBAM Self-Service Portal.</p></td>
</tr>
<tr class="even">
<td align="left"><p>202</p></td>
<td align="left"><p>Microsoft-Windows-MBAM-Web/Operational</p></td>
<td align="left"><p>WebAppInformation</p></td>
<td align="left"><p>Application has its SPNs registered correctly.</p></td>
<td align="left"><p>Indicates that the SPNs required for the MBAM Helpdesk website are correctly registered against the executing account.</p></td>
</tr>
</tbody>
</table>

 


## Related topics


[Technical Reference for MBAM 2.5](technical-reference-for-mbam-25.md)

[Client Event Logs](client-event-logs.md)

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring).
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).
 





