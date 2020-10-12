---
title: How to schedule scans with MDATP for Linux
description: Learn how to schedule an automatic scanning time for Microsoft Defender ATP in Linux to better protect your organization's assets.
keywords: microsoft, defender, atp, linux, scans, antivirus
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
---

# Schedule scans with Microsoft Defender ATP for Linux

For the command line to be able to run a scan on MDATP for Linux, see [Supported Commands](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/linux-resources#supported-commands).

Linux (and Unix) have the tool called **crontab** (similar to Task Scheduler) to be able to run scheduled tasks.

## Pre-requisite

> [!NOTE]
> To get a list of all the time zones, run the following command: 
> timedatectl list-timezones

> Examples for timezones:
> America/Los_Angeles
> America/New_York
> America/Chicago
> America/Denver

## To set the Cron job

**To backup crontab entries:**

sudo crontab -l > /var/tmp/cron_backup_200919.dat

> [!NOTE]
> Where 200919 == YRMMDD

> TIP: 
> Do this before you edit or remove.
> To edit the crontab and add a new job as a root user:
> sudo crontab -e

> [!NOTE]
> The default editor is VIM

You might see:

0 * * * * /etc/opt/microsoft/mdatp/logrorate.sh

Press “Insert”

Add the following entries:

CRON_TZ=America/Los_Angeles

0 2 * * sat /bin/mdatp scan quick > ~/mdatp_cron_job.log

> [!NOTE]
> In this example, we are setting it to 00 minutes, 2 a.m. (hour in 24 hour format), any day of the month, any month, on Saturdays. Meaning it will run Saturdays at 2:00 a.m. Pacific (UTC –8)

Press “Esc”

Type “:wq” w/o the double quotes.

> [!NOTE]
> w == write, q == quit

To view your cron jobs, type sudo crontab -l

:::image type="content" source="../../../../images/linux-mdatp.png" alt-text="linux mdatp":::

**How to inspect cron job runs:**

sudo grep mdatp /var/log/cron

**How to inspect the mdatp_cron_job.log**
sudo nano mdatp_cron_job.log

## For those of you that are using Ansible, Chef, or Puppet]
### How to set cron jobs in Ansible:

cron – Manage cron.d and crontab entries

See [https://docs.ansible.com/ansible/latest/modules/cron_module.html](https://docs.ansible.com/ansible/latest/modules/cron_module.html)

### How to set crontabs in Chef:
cron resource

See [https://docs.chef.io/resources/cron/](https://docs.chef.io/resources/cron/)

### How to set cron jobs in Puppet:
Resource Type: cron

See [https://puppet.com/docs/puppet/5.5/types/cron.html](https://puppet.com/docs/puppet/5.5/types/cron.html)

Automating with Puppet: Cron jobs and scheduled tasks

See [https://puppet.com/blog/automating-puppet-cron-jobs-and-scheduled-tasks/](https://puppet.com/blog/automating-puppet-cron-jobs-and-scheduled-tasks/)

## Additional information:

**To get help with crontab**
man crontab

**To get a list of crontab file of the current user:**

crontab -l

**To get a list of crontab file of another user:**

crontab -u username -l

**To backup crontab entries:**

crontab -l > /var/tmp/cron_backup.dat
> [!TIP]
> Do this before you edit or remove.

**To restore crontab entries:**

crontab /var/tmp/cron_backup.dat

**To edit the crontab and add a new job as a root user:**

Sudo crontab -e

**To edit the crontab and add a new job:**

crontab -e

**To edit other user’s crontab entries:**

crontab -u username -e

**To remove all crontab entries:**

crontab -r

**To remove other user’s crontab entries:**

crontab -u username -r

**Explanation**:

+—————- minute (values: 0 – 59) (special characters: , – * /)

| +————- hour (values: 0 – 23) (special characters: , – * /)

| | +———- day of month (values: 1 – 31) (special characters: , – * / L W C)

| | | +——- month (values: 1 – 12) (special characters: ,- * / )
| | | | +—- day of week (values: 0 – 6) (Sunday=0 or 7) (special characters: , – * / L W C)
| | | | |
* * * * * command to be executed









[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


While you can start a threat scan at any time with Microsoft Defender ATP, your enterprise might benefit from scheduled or timed scans. For example, you can schedule a scan to run at the beginning of every workday or week. 

## Schedule a scan with *launchd*

You can create a scanning schedule using the *launchd* daemon on a macOS device.

1. The following code shows the schema you need to use to schedule a scan. Open a text editor and use this example as a guide for your own scheduled scan file.

    For more information on the *.plist* file format used here, see [About Information Property List Files](https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/AboutInformationPropertyListFiles.html) at the official Apple developer website.

    ```XML
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
      "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
        <key>Label</key>
        <string>com.microsoft.wdav.schedquickscan</string>
        <key>ProgramArguments</key>
        <array>
            <string>sh</string>
            <string>-c</string>
            <string>/usr/local/bin/mdatp --scan --quick</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>StartCalendarInterval</key>
        <dict>
            <key>Day</key>
            <integer>3</integer>
            <key>Hour</key>
            <integer>2</integer>
            <key>Minute</key>
            <integer>0</integer>
            <key>Weekday</key>
            <integer>5</integer>
        </dict>
        <key>StartInterval</key>
        <integer>604800</integer>
        <key>WorkingDirectory</key>
        <string>/usr/local/bin/</string>
    </dict>
    </plist>
     ```

2. Save the file as *com.microsoft.wdav.schedquickscan.plist*.

    > [!TIP]
    > To run a full scan instead of a quick scan, change line 12, `<string>/usr/local/bin/mdatp --scan --quick</string>`, to use the `--full` option instead of `--quick` (i.e. `<string>/usr/local/bin/mdatp --scan --full</string>`) and save the file as *com.microsoft.wdav.sched**full**scan.plist* instead of *com.microsoft.wdav.sched**quick**scan.plist*.

3. Open **Terminal**.
4. Enter the following commands to load your file:

    ```bash
    launchctl load /Library/LaunchDaemons/<your file name.plist>
    launchctl start <your file name>
    ```

5. Your scheduled scan will run at the date, time, and frequency you defined in your p-list. In the example, the scan runs at 2:00 AM every Friday. 

    Note that the `StartInterval` value is in seconds, indicating that scans should run every 604,800 seconds (one week), while the `Weekday` value of `StartCalendarInterval` uses an integer to indicate the fifth day of the week, or Friday.

 > [!IMPORTANT]
 > Agents executed with *launchd* will not run at the scheduled time while the device is asleep. They will instead run once the device resumes from sleep mode.
 >
 > If the device is turned off, the scan will run at the next scheduled scan time.

## Schedule a scan with Intune

You can also schedule scans with Microsoft Intune. The [runMDATPQuickScan.sh](https://github.com/microsoft/shell-intune-samples/tree/master/Misc/MDATP#runmdatpquickscansh) shell script available at [Scripts for Microsoft Defender Advanced Threat Protection](https://github.com/microsoft/shell-intune-samples/tree/master/Misc/MDATP) will persist when the device resumes from sleep mode. 

See [Use shell scripts on macOS devices in Intune](https://docs.microsoft.com/mem/intune/apps/macos-shell-scripts) for more detailed instructions on how to use this script in your enterprise.
