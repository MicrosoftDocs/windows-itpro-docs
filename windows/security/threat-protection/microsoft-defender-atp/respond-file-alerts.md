---
title: Take response actions on a file in Microsoft Defender ATP
description: Take response actions on file related alerts by stopping and quarantining a file or blocking a file and checking activity details.
keywords: respond, stop and quarantine, block file, deep analysis
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Take response actions on a file

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)
 
[!include[Prerelease information](prerelease.md)]

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-responddile-abovefoldlink)

Quickly respond to detected attacks by stopping and quarantining files or blocking a file. After taking action on files, you can check activity details in the Action center.

Response actions are available on a file's detailed profile page. Once on this page, you can switch between the new and old page layouts by toggling **new File page**. The rest of this article describes the newer page layout.

Response actions run along the top of the file page, and include:

- Stop and Quarantine File
- Add Indicator
- Download file
- Action center

You can also submit files for deep analysis, to run the file in a secure cloud sandbox. When the analysis is complete, you'll get a detailed report that provides information about the behavior of the file. You can submit files for deep analysis and read past reports by selecting the **Deep analysis** tab. It's located below the file information cards.

## Stop and quarantine files in your network

You can contain an attack in your organization by stopping the malicious process and quarantining the file where it was observed.

>[!IMPORTANT]
>You can only take this action if:
>
> - The machine you're taking the action on is running Windows 10, version 1703 or later
> - The file does not belong to trusted third-party publishers or not signed by Microsoft
> - Windows Defender Antivirus must at least be running on Passive mode. For more information, see [Windows Defender Antivirus compatibility](../windows-defender-antivirus/windows-defender-antivirus-compatibility.md).

The **Stop and Quarantine File** action includes stopping running processes, quarantining the files, and deleting persistent data, such as any registry keys.

This action takes effect on machines with Windows 10, version 1703 or later, where the file was observed in the last 30 days.

>[!NOTE]
>You’ll be able to restore the file from quarantine at any time.

### Stop and quarantine files

1. Select the file you want to stop and quarantine. You can select a file from any of the following views or use the Search box:

    - **Alerts** - click the corresponding links from the Description or Details in the Artifact timeline
    - **Search box** - select **File** from the drop–down menu and enter the file name

2. Go to the top bar and select **Stop and Quarantine File**.

    ![Image of stop and quarantine file action](images/atp-stop-quarantine-file.png)

3. Specify a reason, then click **Confirm**.

    ![Image of stop and quarantine file modal window](images/atp-stop-quarantine.png)

    The Action center shows the submission information:
    ![Image of stop and quarantine file action center](images/atp-stopnquarantine-file.png)

    - **Submission time** - Shows when the action was submitted.
    - **Success** - Shows the number of machines where the file has been stopped and quarantined.
    - **Failed** - Shows the number of machines where the action failed and details about the failure.
    - **Pending** - Shows the number of machines where the file is yet to be stopped and quarantined from. This can take time for cases when the machine is offline or not connected to the network.

4. Select any of the status indicators to view more information about the action. For example, select **Failed** to see where the action failed.

**Notification on machine user**:</br>
When the file is being removed from a machine, the following notification is shown:

![Image of notification on machine user](images/atp-notification-file.png)

In the machine timeline, a new event is added for each machine where a file was stopped and quarantined.

For files that widely used throughout an organization, a warning is shown before an action is implemented, to validate that the operation is intended.

## Restore file from quarantine

You can roll back and remove a file from quarantine if you’ve determined that it’s clean after an investigation. Run the following command on each machine where the file was quarantined.

1. Open an elevated command–line prompt on the machine:

    a. Go to **Start** and type _cmd_.

    b. Right–click **Command prompt** and select **Run as administrator**.

2. Enter the following command, and press **Enter**:

   ```Powershell
   “%ProgramFiles%\Windows Defender\MpCmdRun.exe” –Restore –Name EUS:Win32/CustomEnterpriseBlock –All
   ```

> [!NOTE]
> Microsoft Defender ATP will restore all files that were quarantined on this machine in the last 30 days.

## Add indicator to block or allow a file

You can prevent further propagation of an attack in your organization by banning potentially malicious files or suspected malware. If you know a potentially malicious portable executable (PE) file, you can block it. This operation will prevent it from being read, written, or executed on machines in your organization.

>[!IMPORTANT]
>
>- This feature is available if your organization uses Windows Defender Antivirus and Cloud–based protection is enabled. For more information, see [Manage cloud–based protection](../windows-defender-antivirus/deploy-manage-report-windows-defender-antivirus.md).
>
>- The Antimalware client version must be 4.18.1901.x or later.
>- This feature is designed to prevent suspected malware (or potentially malicious files) from being downloaded from the web. It currently supports portable executable (PE) files, including _.exe_ and _.dll_ files. The coverage will be extended over time.
>- This response action is available for machines on Windows 10, version 1703 or later.
>- The allow or block function cannot be done on files if the file's classification exists on the device's cache prior to the allow or block action.

>[!NOTE]
> The PE file needs to be in the machine timeline for you to be able to take this action.
>
> There may be a couple of minutes of latency between the time the action is taken and the actual file being blocked.

### Enable the block file feature

To start blocking files, you first need to [turn the **Block or allow** feature on](advanced-features.md) in Settings.
  
### Allow or block file

When you add an indicator hash for a file, you can choose to raise an alert and block the file whenever a machine in your organization attempts to run it.

Files automatically blocked by an indicator won't show up in the files's Action center, but the alerts will still be visible in the Alerts queue.

 See [manage indicators](manage-indicators.md) for more details on blocking and raising alerts on files.

To stop blocking a file, remove the indicator. You can do so via the **Edit Indicator** action on the file's profile page. This action will be visible in the same position that the **Add Indicator** action was, before you added the indicator.

You can also edit indicators from  the **Settings** page, under **Rules** > **Indicators**. Indicators are listed in this area by their file's hash.

## Download or collect file

Selecting **Download file** from the response actions allows you to download a local, password-protected .zip archive containing your file.

![Image of download file action](images/atp-download-file-action.png)

When you select this action, a fly-out will appear. From the fly-out, you can record a reason as to why you are downloading the file. You can also set a password to open the file.

![Image of download file fly-out](images/atp-download-file.png)

If a file is not already stored by Microsoft Defender ATP, you cannot download it. Instead, you will see a **Collect file** button in the same location. If a file has not been seen in the organization in the past 30 days, **Collect file** will be disabled.

## Check activity details in Action center

The **Action center** provides information on actions that were taken on a machine or file. You’ll be able to view the following details:

- Investigation package collection
- Antivirus scan
- App restriction
- Machine isolation

All other related details are also shown, for example, submission date/time, submitting user, and if the action succeeded or failed.

![Image of action center with information](images/action-center-details.png)


## Deep analysis

Cyber security investigations are typically triggered by an alert. Alerts are related to one or more observed files that are often new or unknown. Clicking a file takes you to the file view where you can see the file's metadata. To enrich the data related to the file, you can submit the file for deep analysis.

The Deep analysis feature executes a file in a secure, fully instrumented cloud environment. Deep analysis results show the file's activities, observed behaviors, and associated artifacts, such as dropped files, registry modifications, and communication with IPs.
Deep analysis currently supports extensive analysis of portable executable (PE) files (including _.exe_ and _.dll_ files).

Deep analysis of a file takes several minutes. Once the file analysis is complete, the Deep Analysis tab will update to display the date and time of the latest results available, as well as a summary of the report itself.

The Deep analysis summary includes a list of observed *behaviors*, some of which can indicate malicious activity, and *observables*, including contacted IPs and files created on the disk. If nothing was found, these sections will simply display a brief message.

Results of deep analysis are matched against threat intelligence and any matches will generate appropriate alerts.

Use the deep analysis feature to investigate the details of any file, usually during an investigation of an alert or for any other reason where you suspect malicious behavior. This feature is available within the **Deep analysis** tab, on the file's profile page.

**Submit for deep analysis** is enabled when the file is available in the Microsoft Defender ATP backend sample collection, or if it was observed on a Windows 10 machine that supports submitting to deep analysis.

> [!NOTE]
> Only files from Windows 10 can be automatically collected.

You can also manually submit a sample through the [Microsoft Security Center Portal](https://www.microsoft.com/security/portal/submission/submit.aspx) if the file was not observed on a Windows 10 machine, and wait for **Submit for deep analysis** button to become available.

> [!NOTE]
> Due to backend processing flows in the Microsoft Security Center Portal, there could be up to 10 minutes of latency between file submission and availability of the deep analysis feature in Microsoft Defender ATP.

When the sample is collected, Microsoft Defender ATP runs the file in is a secure environment and creates a detailed report of observed behaviors and associated artifacts, such as files dropped on machines, communication to IPs, and registry modifications.

**Submit files for deep analysis:**

1. Select the file that you want to submit for deep analysis. You can select or search a file from any of the following views:

    - Alerts - click the file links from the **Description** or **Details** in the Artifact timeline
    - **Machines list** - click the file links from the **Description** or **Details** in the **Machine in organization** section
    - Search box - select **File** from the drop–down menu and enter the file name

2. In the **Deep analysis** tab of the file view, click **Submit**.

    ![You can only submit PE files in the file details section](images/submit-file.png)

>**Note**&nbsp;&nbsp;Only PE files are supported, including _.exe_ and _.dll_ files

A progress bar is displayed and provides information on the different stages of the analysis. You can then view the report when the analysis is done.

> [!NOTE]
> Depending on machine availability, sample collection time can vary. There is a 3–hour timeout for sample collection. The collection will fail and the operation will abort if there is no online Windows 10 machine reporting at that time. You can re–submit files for deep analysis to get fresh data on the file.

**View deep analysis reports**

View the deep analysis report that Microsoft Defender ATP provides to see the details of the deep analysis that was conducted on the file you submitted. This feature is available in the file view context.

You can view the comprehensive report that provides details on the following sections:

- Behaviors
- Observables

The details provided can help you investigate if there are indications of a potential attack.

1. Select the file you submitted for deep analysis.
2. Select the **Deep analysis** tab. If there are any previous reports, the report summary will appear in this tab.

    ![The deep analysis report shows detailed information across a number of categories](images/analysis-results-nothing.png)

**Troubleshoot deep analysis**

If you encounter a problem when trying to submit a file, try each of the following troubleshooting steps.

1. Ensure that the file in question is a PE file. PE files typically have _.exe_ or _.dll_ extensions (executable programs or applications).
1. Ensure the service has access to the file, that it still exists, and has not been corrupted or modified.
1. You can wait a short while and try to submit the file again, in case the queue is full or there was a temporary connection or communication error.
1. If the sample collection policy is not configured, then the default behavior is to allow sample collection. If it is configured, then verify the policy setting allows sample collection before submitting the file again. When sample collection is configured, then check the following registry value:

    ```Powershell
    Path: HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection
    Name: AllowSampleCollection
    Type: DWORD
    Hexadecimal value :
      Value = 0 – block sample collection
      Value = 1 – allow sample collection
    ```

1. Change the organizational unit through the Group Policy. For more information, see [Configure with Group Policy](configure-endpoints-gp.md).
1. If these steps do not resolve the issue, contact [winatp@microsoft.com](mailto:winatp@microsoft.com).

## Related topics

- [Take response actions on a machine](respond-machine-alerts.md)
- [Investigate files](investigate-files.md)
