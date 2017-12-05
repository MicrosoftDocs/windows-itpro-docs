---
title: Using Device Health
description: Explains how to begin usihg Device Health.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.date: 10/17/2017
ms.pagetype: deploy
author: jaimeo
---

# Using Device Health

This section describes how to use Device Health to monitor devices deployed on your network and troubleshoot the causes if they crash.


Device Health provides IT Pros with reports on some common problems that users might experience so that they can be proactively remediated. This decreases support calls and improves productivity.

Device Health provides the following benefits:

- Identification of devices that crash frequently and therefore might need to be rebuilt or replaced
- Identification of device drivers that are causing device crashes, with suggestions of alternative versions of those drivers that might reduce the number of crashes
- Notification of Windows Information Protection misconfigurations that send prompts to end users


>[!NOTE]
>Information is refreshed daily so that health status can be monitored. Changes will be displayed about 24-48 hours after their occurrence, so you always have a recent snapshot of your devices.

In OMS, the aspects of a solution's dashboard are usually divided into <I>blades</I>. Blades are a slice of information, typically with a summarization tile and an enumeration of the items that makes up that data. All data is presented through <I>queries</I>. <I>Perspectives</I> are also possible, wherein a given query has a unique view designed to display custom data. The terminology of blades, tiles, and perspectives will be used in the sections that follow. 


## Device Reliability

- [Frequently Crashing Devices](#frequently-crashing-devices)
- [Driver-Induced OS Crashes](#driver--induced-OS-crashes)



### Frequently Crashing Devices

This middle blade in Device Reliability displays the devices that have crashed the most often in the last week. This can help you identify unhealthy devices that might need to be rebuilt or replaced.

See the following example: 


![The blade in the middle summarizes devices that crash most often](images/dev-health-main-tile-sterile.png)

Clicking the header of the Frequently Crashing Devices blade opens a reliability perspective view, where you can filter data (by using filters in the left pane), see trends, and compare to commercial averages:

![Reliability perspective](images/device-reliability2-sterile.png)

"Commercial averages" here refers to data collected from deployments with a mix of operating system versions and device models that is similar to yours. If your crash rate is higher, there are opportunities for improvement, for example by moving to newer driver versions.

Notice the filters in the left pane; they allow you to filter the crash rate shown to a particular operating system version, device model, or other parameter. 

>[!NOTE]
>Use caution when interpreting results filtered by model or operating system version. This is very useful for troubleshooting, but might not be accurate for *comparisons* because the crashes displayed could be of different types. The overall goal for working with crash data is to ensure that most devices have the same driver versions and that that version has a low crash rate.

>[!TIP]
>Once you've applied a filter (for example setting OSVERSION=1607) you will see the query in the text box change to append the filter (for example, with “(OSVERSION=1607)”). To undo the filter, remove that part of the query in the text box and click the search button to the right of the text box to run the adjusted query.”


If you click through a particular device from the view blade or from the Device Reliability perspective, it will take you to the Crash History perspective for that device.

![Device detail and history](images/device-crash-history2-sterile.png)

This displays device records sorted by date and crash details by failure ID, also sorted by date. In this view are a number of useful items:

- Crash history records by date, aggregated  by Failure ID. The Failure ID is an internal number that is used to group crashes that are related to each other. Eventually over time, you can use the Failure ID to provide additional info. If a crash was caused by driver, some driver fields will also be populated.

- StopCode: this is hex value that would be displayed on a bluescreen if you were looking directly at the affected device.

- Count: the number times that particular Failure ID has occurred on that specific device *on that date*.


 
 
### Driver-Induced OS Crashes

This blade (on the right) displays drivers that have caused the most devices to crash in the last two weeks. If your crash rate is high, you can reduce the overall operating system crashes in your deployment by upgrading those drivers with a high crash rate.


![The blade on the right summarizes devices that crash most often](images/dev-health-main-tile-sterile.png)

Clicking a listed driver on the Driver-Induced OS Crashes blade opens a driver perspective view, which shows the details for the responsible driver, trends and commercial averages for that driver, and alternative versions of the driver.

![Driver detail and history](images/driver-detail-1-sterile.png)
![Driver detail and history scrolldown](images/driver-detail-2-sterile.png)

The driver version table can help you determine whether deploying a newer version of the driver might help you reduce the crash rate. In the example shown above, the most commonly installed driver version (19.15.1.5) has a crash rate of about one-half of one percent--this is low, so this driver is probably fine. However, driver version 19.40.0.3 has a crash rate of almost 20%. If that driver had been widely deployed, updating it would substantially reduce the overal number of crashes in your organization.





## Windows Information Protection


Windows Information Protection (WIP) helps protect work data from accidental sharing. Users might be disrupted if WIP rules are not aligned with real work behavior. WIP App Learning shows which apps on which computers are attempting to cross policy boundaries.

For details about deploying WIP policies, see [Protect your enterprise data using Windows Information Protection (WIP)](https://docs.microsoft.com/windows/threat-protection/windows-information-protection/protect-enterprise-data-using-wip).

Once you have WIP policies in place, by using the WIP section of Device Health, you can:

- Reduce disruptive prompts by adding rules to allow data sharing from approved apps.
- Tune WIP rules, for example by confirming that certain apps are allowed or disallowed by current policy.


![Main Windows Information Protection view](images/WIPNEWMAIN-sterile.png)


Clicking through the **APP LEARNING** tile shows details of app statistics that you can use to explore each incident and update app policies by using AppLocker or WIP AppIDs.

![WIP details view](images/WIPNEW1-chart-selected-sterile.png)

In this chart view, you can click a particular app listing, which will open additional details on the app in question, including details you need to adjust your Windows Information Protection Policy:

![WIP details view for a specific app](images/WIPappID-sterile.png)

Here you can copy the WipAppid and use that for adjusting the WIP policy.

## Data model and OMS built-in extensibility

All of the views and blades display slices of the most useful data by using pre-formed queries. You have access to the full set of data collected by Device Health, which means you can construct your own queries to expose any data that is of interest to you. For documentation on working with log searches, see [Find data using log searches](https://docs.microsoft.com/azure/log-analytics/log-analytics-log-searches). This topic section provides information about the data types being populated specifically by Device Health.

### Example queries

You can run these queries from the OMS **Log Search** interface (available at several points in the Device Health interface) by just typing them in. There are few details to be aware of:

- After running a query, make sure to set the date range (which appears upper left after running initial query) to "7 days" to ensure you get data back.
- If you see the search tutorial dialog appearing frequently, it's likely because you are have read-only access to the OMS workspace. Ask a workspace administrator to grant you "contributor" permissions (which is required for the "completed tutorial" state to persist).
- If you use the search filters in the left pane, you might notice there is no control to undo a filter selection. To undo a selection, delete the (FilterName="FilterValue") element that is appended to the search query and then click the search button again. For example, after you run a base query of *Type = DHOSReliability KernelModeCrashCount > 0*, a number of filter options appear on the left. If you then filter on **Manufacturer** (for example, by setting *Manufacturer="Microsoft Corporation"* and then clicking **Apply**), the query will change to *Type = DHOSReliability KernelModeCrashCount > 0 (Manufacturer="Microsoft Corporation")*. Delete *(Manufacturer="Microsoft Corporation")* and then click the **search** button again to re-run the query without that filter.

### Device reliability query examples

|Data|Query|
|-------------------|------------------------|
|Total devices|	Type = DHOSReliability \| measure countdistinct(ComputerID) by Type|
|Number of devices that have crashed in the last three weeks|	Type = DHOSReliability KernelModeCrashCount > 0 \| measure countdistinct(ComputerID) by Type|
|Compare the percentage of your devices that have not crashed with the percentage of similar devices outside your organization ("similar" here means other commercial devices with the same mix of device models, operating system versions and update levels).|	Type=DHOSReliability \| measure avg(map(KernelModeCrashCount, 1, 10000, 0, 1)) as MyOrgPercentCrashFreeDevices, avg(KernelModeCrashFreePercentForIndustry) as CommercialAvgPercentCrashFreeDevices by Type \| Display Table|
|As above, but sorted by device manufacturer|	Type=DHOSReliability \| measure avg(map(KernelModeCrashCount, 1, 10000, 0, 1)) as MyOrgPercentCrashFreeDevices, avg(KernelModeCrashFreePercentForIndustry) as CommercialAvgPercentCrashFreeDevices, countdistinct(ComputerID) as NumberDevices by Manufacturer \| sort NumberDevices desc \| Display Table|
|As above, but sorted by model|	Type=DHOSReliability \| measure avg(map(KernelModeCrashCount, 1, 10000, 0, 1)) as MyOrgPercentCrashFreeDevices, avg(KernelModeCrashFreePercentForIndustry) as CommercialAvgPercentCrashFreeDevices, countdistinct(ComputerID) as NumberDevices by ModelFamily\| sort NumberDevices desc \| Display Table|
|As above, but sorted by operating system version|	Type=DHOSReliability \| measure avg(map(KernelModeCrashCount, 1, 10000, 0, 1)) as MyOrgPercentCrashFreeDevices, avg(KernelModeCrashFreePercentForIndustry) as CommercialAvgPercentCrashFreeDevices, countdistinct(ComputerID) as NumberDevices by OSVersion \| sort NumberDevices desc \| Display Table|
|Crash rate trending in my organization compared to the commercial average. Each interval shows percentage of devices that crashed at least once in the trailing two weeks|	Type=DHOSReliability \| measure avg(map(KernelModeCrashCount, 1, 10000, 0, 1)) as MyOrgPercentCrashFreeDevices, avg(KernelModeCrashFreePercentForIndustry) as CommercialAvgPercentCrashFreeDevices by TimeGenerated \| Display LineChart|
|Table of devices that have crashed the most in the last two weeks|	Type = DHOSReliability KernelModeCrashCount > 0 \| Dedup ComputerID \| select Computer, KernelModeCrashCount \| sort TimeGenerated desc, KernelModeCrashCount desc \| Display Table|
|Detailed crash records, most recent first|	Type = DHOSCrashData \| sort TimeGenerated desc, Computer asc \| display Table|
|Number of devices that crashed due to drivers|	Type = DHDriverReliability DriverKernelModeCrashCount > 0 \| measure countdistinct(ComputerID) by Type|
|Table of drivers that have caused the most devices to crash|	Type = DHDriverReliability DriverKernelModeCrashCount > 0 \| measure countdistinct(ComputerID) by DriverName \| Display Table|
|Trend of devices crashed by driver by day|	* Type=DHOSCrashData DriverName!="ntkrnlmp.exe" DriverName IN {Type=DHOSCrashData \| measure count() by DriverName | top 5} \| measure countdistinct(ComputerID) as NumberDevices by DriverName interval 1day|
|Crashes for different versions of a given driver (replace netwtw04.sys with the driver you want from the previous list). This lets you get an idea of which *versions* of a given driver work best with your devices|	Type = DHDriverReliability DriverName="netwtw04.sys" \| Dedup ComputerID \| sort TimeGenerated desc \| measure countdistinct(ComputerID) as InstallCount, sum(map(DriverKernelModeCrashCount,1,10000, 1)) as DevicesCrashed by DriverVersion \| Display Table|
|Top crashes by FailureID|	Type =DHOSCrashData \| measure count() by KernelModeCrashFailureId \| Display Table|

### Windows Information Protection (WIP) App Learning query examples

|Data|Query|
|-------------------|------------------------|
|Apps encountering policy boundaries on the most computers (click on an app in the results to see details including computer names)| Type=DHWipAppLearning \| measure countdistinct(ComputerID) as ComputerCount by AppName|
|Trend of App Learning activity for a given app. Useful for tracking activity before and after a rule change| Type=DHWipAppLearning AppName="MICROSOFT.SKYPEAPP" | measure countdistinct(ComputerID) as ComputerCount interval 1day|

### Exporting data and configuring alerts

OMS enables you to export data to other tools. To do this, in any view that shows **Log Search** just click the **Export** button. Similarly, clicking the **Alert** button will enable you to run a query automaticlaly on a schedule and receive email alerts for particular query results that you set. If you have a PowerBI account, then you will also see a **PowerBI** button that enables you to run a query on a schedule and have the results automatically saved as a PowerBI data set.




## Related topics

[Get started with Device Health](device-health-get-started.md)<BR>

For the latest information on Windows Analytics, including new features and usage tips, see the [Windows Analytics blog](https://blogs.technet.microsoft.com/upgradeanalytics)