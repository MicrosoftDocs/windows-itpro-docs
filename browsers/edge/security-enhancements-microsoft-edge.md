---
description: Microsoft Edge is designed with significant security improvements over existing browsers, helping to defend people from increasingly sophisticated and prevalent web-based attacks against Windows.
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
title: Security enhancements for Microsoft Edge (Microsoft Edge for IT Pros)
---

# Security enhancements for Microsoft Edge
Microsoft Edge is designed with significant security improvements over existing browsers, helping to defend people from increasingly sophisticated and prevalent web-based attacks against Windows.

## Help to protect against web-based security threats
While the web is predominantly a safe environment, there are some sites that have been designed to steal money and personal information. Thieves by nature don’t care about rules, and will use any means to take advantage of victims, most often using trickery or hacking:

- **Trickery.** Means using things like “phishing” attacks to convince a person to enter a banking password into a website that looks like the bank, but isn't.

- **Hacking.** Means attacking a person through malformed content that exploits subtle flaws in a browser, or in various browser extensions, such as video decoders. This exploit lets an attacker run code on a person’s device, taking over first their browsing session, and perhaps ultimately the entire device.

While trickery and hacking are threats faced by every browser, it’s important that we explore how Microsoft Edge addresses these threats and is helping make the web a safer experience.

### Windows Hello
Phishing scams gets people to enter passwords into a fake version of a trusted website, such as a bank. Our current attempts to identify legitimate websites through the HTTPS lock symbol and the EV Cert green bar have met with only limited success. Attackers are just too competent at faking legitimate experiences for more people to notice the difference.

To really address this problem, we need to stop people from entering plain-text passwords into websites. So in Windows 10, we gave you [Windows Hello](http://blogs.windows.com/bloggingwindows/2015/03/17/making-windows-10-more-personal-and-more-secure-with-windows-hello/) technology with asymmetric cryptography that authenticates both the person and the website.

Microsoft Edge is the first browser to natively support Windows Hello as a more personal, seamless, and secure way to authenticate on the web, powered by an early implementation of the [Web Authentication (formerly FIDO 2.0 Web API) specification](http://w3c.github.io/webauthn/).

### Microsoft SmartScreen
Microsoft SmartScreen, using both Windows 10 and Microsoft Edge, helps to defend against phishing by performing reputation checks on visited sites; blocking any sites that are thought to be phishing sites. SmartScreen also helps to defend against people being tricked into installing malicious [socially-engineered software downloads](http://operationstech.about.com/od/glossary/g/Socially-Engineered-Malware.htm) and against [drive-by attacks](https://blogs.windows.com/msedgedev/2015/12/16/smartscreen-drive-by-improvements/), malicious web attacks that tend to start on trusted websites, targeting security vulnerabilities in commonly used software.

**Note**<br>
Both Microsoft Edge and Internet Explorer 11 help to prevent drive-by attacks on Windows 10.

### Certificate Reputation system
While people trust sites that have encrypted web traffic, that trust can be undermined by malicious sites using improperly obtained or fake certificates to impersonate legitimate sites.
To help address this problem, we introduced the [Certificate Reputation system](http://blogs.msdn.com/b/ie/archive/2014/03/10/certificate-reputation-a-novel-approach-for-protecting-users-from-fraudulent-certificates.aspx) last year. This year, we’ve extended the system to let web developers use the [Bing Webmaster Tools](http://www.bing.com/toolbox/webmaster) to report directly to Microsoft to let us know about fake certificates.




