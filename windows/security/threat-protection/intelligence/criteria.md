---
title: How Microsoft identifies malware and potentially unwanted applications
ms.reviewer: 
description: Learn how Microsoft reviews software for unwanted behavior, advertising, privacy violations, and negative consumer opinion to determine if it is malware (malicious software) or potentially unwanted applications.
keywords: security, malware, virus research threats, research malware, pc protection, computer infection, virus infection, descriptions, remediation, latest threats, MMPC, Microsoft Malware Protection Center, PUA, potentially unwanted applications
ms.prod: w10
ms.mktglfcycl: secure
ms.sitesec: library
ms.localizationpriority: medium
ms.author: levinec
author: levinec
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance  
ms.topic: article
search.appverid: met150
---

# How Microsoft identifies malware and potentially unwanted applications

Microsoft aims to provide customers with the most delightful and productive Windows experience possible. To help achieve that, we try our best to ensure our customers are safe and in control of their devices.

Microsoft gives you the information and tools you need when downloading, installing, and running software, as well as tools that protect you when we know that something unsafe is happening. Microsoft does this by identifying and analyzing software and online content against criteria described in this article.

You can participate in this process by submitting software for analysis. Our analysts and intelligent systems can then help identify undesirable software and ensure they are covered by our security solutions.

Because new forms of malware and potentially unwanted applications are being developed and distributed rapidly, Microsoft reserves the right to adjust, expand, and update these criteria without prior notice or announcements.

## Malware

Malware is the overarching name for applications and other code, i.e. software, that Microsoft classifies more granularly as *malicious software* or *unwanted software*.

### Malicious software

Malicious software is an application or code that compromises user security. Malicious software might steal your personal information, lock your PC until you pay a ransom, use your PC to send spam, or download other malicious software. In general, malicious software tricks, cheats, or defrauds users, places users in vulnerable states, or performs other malicious activities.

Microsoft classifies most malicious software into one of the following categories:

* **Backdoor:** A type of malware that gives malicious hackers remote access to and control of your PC.

* **Downloader:** A type of malware that downloads other malware onto your PC. It needs to connect to the internet to download files.

* **Dropper:** A type of malware that installs other malware files onto your PC. Unlike a downloader, a dropper doesn’t need to connect to the internet to drop malicious files. The dropped files are typically embedded in the dropper itself.

* **Exploit:** A piece of code that uses software vulnerabilities to gain access to your PC and perform other tasks, such as installing malware. [See more information about exploits](exploits-malware.md).

* **Hacktool:** A type of tool that can be used to gain unauthorized access to your PC.

* **Macro virus:** A type of malware that spreads through infected documents, such as Microsoft Word or Excel documents. The virus is run when you open an infected document.

* **Obfuscator:** A type of malware that hides its code and purpose, making it more difficult for security software to detect or remove.

* **Password stealer:** A type of malware that gathers your personal information, such as user names and passwords. It often works along with a keylogger, which collects and sends information about the keys you press and websites you visit.

* **Ransomware:** A type of malware that encrypts your files or makes other modifications that can prevent you from using your PC. It then displays a ransom note stating you must pay money, complete surveys, or perform other actions before you can use your PC again. [See more information about ransomware](ransomware-malware.md).

* **Rogue security software:** Malware that pretends to be security software but doesn't provide any protection. This type of malware usually displays alerts about nonexistent threats on your PC. It also tries to convince you to pay for its services.

* **Trojan:** A type of malware that attempts to appear harmless. Unlike a virus or a worm, a trojan doesn't spread by itself. Instead it tries to look legitimate, tricking users into downloading and installing it. Once installed, trojans perform a variety of malicious activities, such as stealing personal information, downloading other malware, or giving attackers access to your PC.

* **Trojan clicker:** A type of trojan that automatically clicks buttons or similar controls on websites or applications. Attackers can use this trojan to click on online advertisements. These clicks can skew online polls or other tracking systems and can even install applications on your PC.

* **Worm:** A type of malware that spreads to other PCs. Worms can spread through email, instant messaging, file sharing platforms, social networks, network shares, and removable drives. Sophisticated worms take advantage of software vulnerabilities to propagate.

### Unwanted software

Microsoft believes that you should have control over your Windows experience. Software running on Windows should keep you in control of your PC through informed choices and accessible controls. Microsoft identifies software behaviors that ensure you stay in control. We classify software that does not fully demonstrate these behaviors as "unwanted software".

#### Lack of choice

You must be notified about what is happening on your PC, including what software does and whether it is active.

Software that exhibits lack of choice might:

* Fail to provide prominent notice about the behavior of the software and its purpose and intent.

* Fail to clearly indicate when the software is active and might also attempt to hide or disguise its presence.

* Install, reinstall, or remove software without your permission, interaction, or consent.

* Install other software without a clear indication of its relationship to the primary software.

* Circumvent user consent dialogs from the browser or operating system.

* Falsely claim to be software from Microsoft.

Software must not mislead or coerce you into making decisions about your PC. This is considered behavior that limits your choices. In addition to the previous list, software that exhibits lack of choice might:

* Display exaggerated claims about your PC’s health.

* Make misleading or inaccurate claims about files, registry entries, or other items on your PC.

* Display claims in an alarming manner about your PC's health and require payment or certain actions in exchange for fixing the purported issues.

Software that stores or transmits your activities or data must:

* Give you notice and get consent to do so. Software should not include an option that configures it to hide activities associated with storing or transmitting your data.

#### Lack of control

You must be able to control software on your computer. You must be able to start, stop, or otherwise revoke authorization to software.

Software that exhibits lack of control might:

* Prevent or limit you from viewing or modifying browser features or settings.

* Open browser windows without authorization.

* Redirect web traffic without giving notice and getting consent.

* Modify or manipulate webpage content without your consent.

Software that changes your browsing experience must only use the browser's supported extensibility model for installation, execution, disabling, or removal. Browsers that do not provide supported extensibility models will be considered non-extensible and should not be modified.

#### Installation and removal

You must be able to start, stop, or otherwise revoke authorization given to software. Software should obtain your consent before installing, and it must provide a clear and straightforward way for you to install, uninstall, or disable it.

Software that delivers *poor installation experience* might bundle or download other "unwanted software" as classified by Microsoft.

Software that delivers *poor removal experience* might:

* Present confusing or misleading prompts or pop-ups while being uninstalled.

* Fail to use standard install/uninstall features, such as Add/Remove Programs.

#### Advertising and advertisements

Software that promotes a product or service outside of the software itself can interfere with your computing experience. You should have clear choice and control when installing software that presents advertisements.

The advertisements that are presented by software must:

* Include an obvious way for users to close the advertisement. The act of closing the advertisement must not open another advertisement.

* Include the name of the software that presented the advertisement.

The software that presents these advertisements must:

* Provide a standard uninstall method for the software using the same name as shown in the advertisement it presents.

Advertisements shown to you must:

* Be distinguishable from website content.

* Not mislead, deceive, or confuse.

* Not contain malicious code.

* Not invoke a file download.

#### Consumer opinion

Microsoft maintains a worldwide network of analysts and intelligence systems where you can [submit software for analysis](https://www.microsoft.com/wdsi/filesubmission). Your participation helps us identify new malware quickly. After analysis, Microsoft creates Security intelligence for software that meets the described criteria. This Security intelligence identifies the software as malware and are available to all users through Windows Defender Antivirus and other Microsoft antimalware solutions.

## Potentially unwanted application (PUA)

Our PUA protection aims to safeguard user productivity and ensure enjoyable Windows experiences. This optional protection, available to enterprises, helps deliver more productive, performant, and delightful Windows experiences.

*PUAs are not considered malware.*

Microsoft uses specific categories and the category definitions to classify software as a PUA.

* **Advertising software:** Software that displays advertisements or promotions, or prompts the user to complete surveys for other products or services in software other than itself. This includes software that inserts advertisements to webpages.

* **Torrent software:** Software that is used to create or download torrents or other files specifically used with peer-to-peer file-sharing technologies.

* **Cryptomining software:** Software that uses your computer resources to mine cryptocurrencies.

* **Bundling software:** Software that offers to install other software that is not digitally signed by the same entity. Also, software that offers to install other software that qualify as PUA based on the criteria outlined in this document.

* **Marketing software:** Software that monitors and transmits the activities of the user to applications or services other than itself for marketing research.

* **Evasion software:** Software that actively tries to evade detection by security products, including software that behaves differently in the presence of security products.

* **Poor industry reputation:** Software that trusted security providers detect with their security products. The security industry is dedicated to protecting customers and improving their experiences. Microsoft and other organizations in the security industry continuously exchange knowledge about files we have analyzed to provide users with the best possible protection.
