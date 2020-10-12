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

To get a list of all the time zones, run the following command: 

timedatectl list-timezones

> Examples for timezones:
America/Los_Angeles
America/New_York
America/Chicago
America/Denver

## To set the Cron job

**To backup crontab entries:**

sudo crontab -l > /var/tmp/cron_backup_200919.dat

> [!NOTE]

Where 200919 == YRMMDD

> TIP: 
Do this before you edit or remove.
To edit the crontab and add a new job as a root user:
sudo crontab -e

> [!NOTE]
> The default editor is VIM

You might see:

0 * * * * /etc/opt/microsoft/mdatp/logrorate.sh

Press “Insert”

Add the following entries:

CRON_TZ=America/Los_Angeles

0 2 * * sat /bin/mdatp scan quick > ~/mdatp_cron_job.log

> [!NOTE]
In this example, we are setting it to 00 minutes, 2 a.m. (hour in 24 hour format), any day of the month, any month, on Saturdays. Meaning it will run Saturdays at 2:00 a.m. Pacific (UTC –8)

Press “Esc”

Type “:wq” w/o the double quotes.

> [!NOTE]
 w == write, q == quit

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


