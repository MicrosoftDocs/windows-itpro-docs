---
title: How to protect against phishing attacks
ms.reviewer: 
description: Learn about how phishing work, deliver malware do your devices, and  what you can do to protect yourself
keywords: security, malware, phishing, information, scam, social engineering, bait, lure, protection, trends, targeted attack
ms.prod: m365-security
ms.mktglfcycl: secure
ms.sitesec: library
ms.localizationpriority: medium
ms.author: ellevin
author: levinec
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
search.appverid: met150
ms.technology: mde
---

# How to protect against phishing attacks

Phishing attacks attempt to steal sensitive information through emails, websites, text messages, or other forms of electronic communication. They try to look like official communication from legitimate companies or individuals.

Cybercriminals often attempt to steal usernames, passwords, credit card details, bank account information, or other credentials. They use stolen information for malicious purposes, such as hacking, identity theft, or stealing money directly from bank accounts and credit cards. The information can also be sold in cybercriminal underground markets.

Social engineering attacks are designed to take advantage of a user's possible lapse in decision-making. Be aware and never provide sensitive or personal information through email or unknown websites, or over the phone. Remember, phishing emails are designed to appear legitimate.

## Learn the signs of a phishing scam

The best protection is awareness and education. Don’t open attachments or links in unsolicited emails, even if the emails came from a recognized source. If the email is unexpected, be wary about opening the attachment and verify the URL.

Enterprises should educate and train their employees to be wary of any communication that requests personal or financial information. They should also instruct employees to report the threat to the company’s security operations team immediately.

Here are several telltale signs of a phishing scam:

* The links or URLs provided in emails are **not pointing to the correct location** or are pointing to a third-party site not affiliated with the sender of the email. For example, in the image below the URL provided doesn't match the URL that you'll be taken to.

    ![example of how exploit kits work](./images/URLhover.png)

* There's a **request for personal information** such as social security numbers or bank or financial information. Official communications won't generally request personal information from you in the form of an email.

* **Items in the email address will be changed** so that it is similar enough to a legitimate email address, but has added numbers or changed letters.

* The message is **unexpected and unsolicited**. If you suddenly receive an email from an entity or a person you rarely deal with, consider this email suspect.

* The message or the attachment asks you to **enable macros, adjust security settings, or install applications**. Normal emails won't ask you to do this.

* The message contains **errors**. Legitimate corporate messages are less likely to have typographic or grammatical errors or contain wrong information.

* The **sender address doesn't match the signature** on the message itself. For example, an email is purported to be from Mary of Contoso Corp, but the sender address is john<span></span>@example.com.

* There are **multiple recipients** in the “To” field and they appear to be random addresses. Corporate messages are normally sent directly to individual recipients.

* The greeting on the message itself **doesn't personally address you**. Apart from messages that mistakenly address a different person, greetings that misuse your name or pull your name directly from your email address tend to be malicious.

* The website looks familiar but there are **inconsistencies or things that aren't quite right**. Warning signs include outdated logos, typos, or ask users to give additional information that is not asked by legitimate sign-in websites.

* The page that opens is **not a live page**, but rather an image that is designed to look like the site you are familiar with. A pop-up may appear that requests credentials.

If in doubt, contact the business by known channels to verify if any suspicious emails are in fact legitimate.

## Software solutions for organizations

* [Microsoft Edge](/microsoft-edge/deploy/index) and [Windows Defender Application Guard](../microsoft-defender-application-guard/md-app-guard-overview.md) offer protection from the increasing threat of targeted attacks using Microsoft's industry-leading Hyper-V virtualization technology. If a browsed website is deemed untrusted, the Hyper-V container will isolate that device from the rest of your network thereby preventing access to your enterprise data.

* [Microsoft Exchange Online Protection (EOP)](https://products.office.com/exchange/exchange-email-security-spam-protection) offers enterprise-class reliability and protection against spam and malware, while maintaining access to email during and after emergencies.  Using various layers of filtering, EOP can provide different controls for spam filtering, such as bulk mail controls and international spam, that will further enhance your protection services.

* Use [Microsoft Defender for Office 365](https://products.office.com/exchange/online-email-threat-protection?ocid=cx-blog-mmpc) to help protect your email, files, and online storage against malware. It offers holistic protection in Microsoft Teams, Word, Excel, PowerPoint, Visio, SharePoint Online, and OneDrive for Business. By protecting against unsafe attachments and expanding protection against malicious links, it complements the security features of Exchange Online Protection to provide better zero-day protection.

## What to do if you've been a victim of a phishing scam

If you feel you've been a victim of a phishing attack:

1. Contact your IT admin if you are on a work computer
2. Immediately change all passwords associated with the accounts
3. Report any fraudulent activity to your bank and credit card company

### Reporting spam

- **Outlook.com**: If you receive a suspicious email message that asks for personal information, select the check box next to the message in your Outlook inbox. Select the arrow next to **Junk**, and then select **Phishing**.

- **Microsoft Office Outlook**: While in the suspicious message, select **Report message** from the ribbon, and then select **Phishing**.

- **Microsoft**: Create a new, blank email message with the one of the following recipients:
    - Junk: junk@office365.microsoft.com
    - Phishing: phish@office365.microsoft.com

    Drag and drop the junk or phishing message into the new message. This will save the junk or phishing message as an attachment in the new message. Don't copy and paste the content of the message or forward the message (we need the original message so we can inspect the message headers). For more information, see [Submit spam, non-spam, and phishing scam messages to Microsoft for analysis](/office365/SecurityCompliance/submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis).

- **Anti-Phishing Working Group**: phishing-report@us-cert.gov. The group uses reports generated from emails sent to fight phishing scams and hackers. ISPs, security vendors, financial institutions, and law enforcement agencies are involved.

### If you’re on a suspicious website

- **Microsoft Edge**: While you’re on a suspicious site, select the **More (…) icon** > **Help and feedback** > **Report Unsafe site**. Follow the instructions on the webpage that displays to report the website.

- **Internet Explorer**: While you’re on a suspicious site, select the gear icon, point to **Safety**, and then select **Report Unsafe Website**. Follow the instructions on the webpage that displays to report the website.

## More information about phishing attacks

- [Protect yourself from phishing](https://support.microsoft.com/help/4033787/windows-protect-yourself-from-phishing)
- [Phishing trends](phishing-trends.md)
- [Microsoft e-book on preventing social engineering attacks](https://info.microsoft.com/Protectyourweakestlink.html?ls=social), especially in enterprise environments.