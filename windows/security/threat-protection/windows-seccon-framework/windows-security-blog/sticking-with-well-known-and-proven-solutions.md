---
title: Sticking with Well-Known and Proven Solutions 
description: Using proven enterprise management technologies instead of creating and maintaining your own will increase flexibility and reduce costs.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: aaronmar
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 03/15/2019
---

# Sticking with Well-Known and Proven Solutions

**Applies to**
 -   Windows 10
 -   Windows Server

I work with a lot of customers, and there are some problems I see over and over. 
One problem that I've seen and been thinking about a lot lately is the way that a number of customers paint themselves into a corner through excessive customization of their environment. 
Lately I've been making the case that they would be much better off by sticking with defaults or broadly known and well-tested configurations, and with proven enterprise solutions over home-grown tools. 

First, let me make it clear that these situations generally haven't arisen from anyone's bad decisions. 
They were reasonable choices and possibly the best options available when the decisions were first made. 
However, desktop and application deployment, enterprise management and security guidance have evolved and matured rapidly over the past several years. 
We know a lot today that we didn't ten years ago. 
If your organization (like many others) is planning to migrate to Windows 10, this is a perfect opportunity to revisit those decisions. 
I liken it to moving to a new house after living in the old one for ten years.  
You can pack all your old dusty, broken and ill-fitting possessions into boxes, ship them to the new house, then unpack the boxes and figure out where to fit all the clutter. 
Or you can take advantage of the opportunity to get rid of detritus and enjoy the new place.

What kinds of customizations am I talking about? 
They include but are certainly not limited to home-grown software for deploying applications and monitoring desktop configuration, enforcing non-standard file and folder locations or renaming those folders, enabling unnecessary and low-value security options, reverse-engineering and then depending on or even modifying undocumented registry data, and modifying the permissions of operating system files, folders and registry keys.

These customizations usually turn out to be expensive. 
They limit flexibility, increase the cost and complexity of managing the environment, and cause strange unexpected behaviors including patch failures. 
Have you had any of these issues in your environment?

- Every piece of software to be deployed needs custom and time-consuming repackaging that is unique to your environment.
- Your custom management solutions don't work on Windows 10.
- The apps you purchase don't work the way they should without additional customization.
- Ramp-up time for new personnel takes longer than it should because they need to learn all the idiosyncrasies of your configuration.
- Bugs occur that wouldn't occur in a default or industry-standard configuration, and it takes a long time for techs to diagnose because they don't know about the quirks or realize their impact.
- You have home-grown tools or scripts that have an admin password embedded in them.  (This is always a bad security risk.  **Always.**)
- Your security experts don't think they're doing their job unless they put their own personal stamp on your security configuration, as if they get paid by the tweak.
- If the guy who manages your app deployment gets hit by a truck, you'll probably go out of business.
- The guy who owns the custom code insists that all commercial alternatives suck and won't work in your environment.  (Perhaps you've had the sense that his ego and reality mutually agreed to separate a while ago.)

Sometimes you need to write your own software, particularly for line-of-business (LOB) purposes. 
But there is a vanishingly small need for any business to write or maintain its own desktop management or application deployment software. 
Unlike proven enterprise solutions, home-grown software tends to take dependencies on platform-specific features such as hardcoded file paths or undocumented system behaviors and to use undocumented and unsupported interfaces and registry data, which makes it hard to move to a new platform or even a standard configuration of your existing platform. 
They also tend not to meet the performance and scale characteristics or upgrade paths of proven products from a product group with robust testing and support organizations behind them.

Consider the US Government Configuration Baseline (USGCB). 
It includes a large set of security settings which is supposed to be mandated across the entire US Federal government. 
If you apply them, you're applying the same settings that lots of other groups have tested and worked with.
Setting-specific issues will generally be well-known. 
Now consider the problem that one of my customers ran into just the other day. 
Along with a whole raft of other non-standard security settings, their security organization had applied the IE security option, "Do not save encrypted pages to disk," which prevents content that arrived over a secure HTTPS channel from being written to disk. 
On the face of it, doesn't that sound like a good idea? 
Sure! 
Enable that policy! 
After the new policies had been in production for a while, all of a sudden people panicked. 
It was payday, and the paystub web site was showing a blank page where it was supposed to display the user's paystub as a PDF document. 
Naturally, fixing this high-visibility issue was immediately assigned as the top priority to a group of tech experts who had to set aside other high priority tasks. 
Now, there are USGCB settings that are known to interfere with Adobe Acrobat Reader integration with Internet Explorer, and this is where I focused my attention. 
That turned out to be a dead end. 
A colleague of mine eventually took to disabling bunches of settings at a time to try to narrow down the issue, until he finally traced it to "Do not save encrypted pages to disk." 
Because this setting is not mandated or used by the FDCC, USGCB, or any Department of Defense configurations, the symptom and root cause was not one with which we were familiar, nor would it be one that I would expect most other people would think to focus on if they had not run into the problem themselves. 
Oh and guess what? 
It turns out that years ago this setting was specifically excluded from the earliest revisions of the US Air Force Standard Desktop Configuration (the ancestor of the FDCC) because of problems just like this.

Bottom line: if you stick with the Windows defaults wherever possible or industry-standard configurations such as the Microsoft Windows security guidance or the USGCB, and use proven enterprise management technologies instead of creating and maintaining your own, you will increase flexibility, reduce costs, and be better able to focus on your organization's real mission.