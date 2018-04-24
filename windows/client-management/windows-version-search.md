---
title: What version of Windows am I running?
description: Discover which version of Windows you are running to determine whether or not your device is enrolled in the Long-Term Servicing Channel or Semi-Annual Channel.
keywords: Long-Term Servicing Channel, LTSC, LTSB, Semi-Annual Channel, SAC, Windows, version, OS Build
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: MikeBlodge, kaushika-msft
ms.author: MikeBlodge
ms.date: 04/20/2018
---

# What version of Windows am I running?

To determine if your device is enrolled in the [Long-Term Servicing Channel](https://docs.microsoft.com/en-us/windows/deployment/update/waas-overview#servicing-channels) (LTSC, formerly LTSB) or the [Semi-Annual Channel](https://docs.microsoft.com/en-us/windows/deployment/update/waas-overview#servicing-channels) (SAC) you'll need to know what version of Windows 10 you're running. There are a few ways to figure out which version of Windows you're running. Each method provides a different set of details, so it’s useful to learn about all of them. 

## System Properties
Click **Start** > **Settings** > **Settings** > click **About** from the bottom of the left-hand menu

You'll now see **Edition**, **Version**, and **OS Build** information. Something like this:

![screenshot of the system properties window for a device running Windows 10](images/systemcollage.png)

## Keyword Search
You can simply type **“winver”** in the search bar to see version details for your device. 

![screenshot of the About Windows display text](images/winver.png)

You can also type **“msinfo”** or **"msinfo32"** to show the following information:

![screenshot of the System Information display text](images/msinfo32.png)

Search using **"systeminfo"** will show:

![screenshot of system information display text](images/systeminfo.png)

Software licensing manager

![screenshot of software licensing manager](images/slmgr_dlv.png)

## What does it all mean?

The Long-term Servicing Channel is available only in the Windows 10 Enterprise LTSB edition. This build of Windows doesn’t contain many in-box applications, such as Microsoft Edge, Microsoft Store, Cortana (you do have some limited search capabilities), Microsoft Mail, Calendar, OneNote, Weather, News, Sports, Money, Photos, Camera, Music, and Clock. It’s important to remember that the LTSC model is primarily for specialized devices.

In the Semi-Annual Channel, you can set feature updates as soon as Microsoft releases them. This servicing modal is ideal for pilot deployments and to test Windows 10 feature updates and for users like developers who need to work with the latest features immediately. Once you've tested the latest release, you can choose when to roll it out broadly in your deployment.