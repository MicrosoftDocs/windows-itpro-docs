---
description: Microsoft Edge is designed with significant security improvements over existing browsers, helping to defend people from increasingly sophisticated and prevalent web-based attacks against Windows.
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
title: Security enhancements for Microsoft Edge (Microsoft Edge for IT Pros)
---

# Security enhancements for Microsoft Edge

**Applies to:**

- Windows 10
- Windows 10 Mobile
- Windows Server 2016

Microsoft Edge is designed with significant security improvements, helping to defend people from increasingly sophisticated and prevalent web-based attacks against Windows.

## Help to protect against web-based security threats
While most websites are safe, some sites have been designed to steal personal information or gain access to your system’s resources. Thieves by nature don’t care about rules, and will use any means to take advantage of victims, most often using trickery or hacking:

- **Trickery.** Means using things like “phishing” attacks to convince a person to enter a banking password into a website that looks like the bank, but isn’t.

- **Hacking.** Means attacking a system through malformed content that exploits subtle flaws in a browser, or in various browser extensions, such as video decoders. This exploit lets an attacker run code on a device, taking over first a browsing session, and perhaps ultimately the entire device.

While trickery and hacking are threats faced by every browser, it’s important that we explore how Microsoft Edge addresses these threats and is helping make the web a safer experience.

### Help against trickery
Web browsers can help defend your employees against trickery by identifying and blocking known tricks, and by using strong security protocols to ensure that they’re talking to the web site they think they’re talking to.

#### Windows Hello
Phishing scams get people to enter passwords into a fake version of a trusted website, such as a bank. Attempts to identify legitimate websites through the HTTPS lock symbol and the EV Cert green bar have met with only limited success, since attackers are too good at faking legitimate experiences for many people to notice the difference.

To really address this problem, we need to stop people from entering plain-text passwords into websites. So in Windows 10, we gave you [Windows Hello](http://blogs.windows.com/bloggingwindows/2015/03/17/making-windows-10-more-personal-and-more-secure-with-windows-hello/) technology with asymmetric cryptography that authenticates both the person and the website.

Microsoft Edge is the first browser to natively support Windows Hello as a more personal, seamless, and secure way to authenticate on the web, powered by an early implementation of the [Web Authentication (formerly FIDO 2.0 Web API) specification](http://w3c.github.io/webauthn/).

#### Microsoft SmartScreen
Microsoft SmartScreen, used in Windows 10 and both Internet Explorer 11 and Microsoft Edge, helps to defend against phishing by performing reputation checks on visited sites and blocking any sites that are thought to be phishing sites. SmartScreen also helps to defend people against being tricked into installing malicious [socially-engineered software downloads](http://operationstech.about.com/od/glossary/g/Socially-Engineered-Malware.htm and against [drive-by attacks](https://blogs.windows.com/msedgedev/2015/12/16/smartscreen-drive-by-improvements/). Drive-by attacks are malicious web-based attacks that compromise your system by targeting security vulnerabilities in commonly used software, and may be hosted on trusted sites.

#### Certificate Reputation system
While people trust sites that have encrypted web traffic, that trust can be undermined by malicious sites using improperly obtained or fake certificates to impersonate legitimate sites. To help address this problem, we introduced the [Certificate Reputation system](http://blogs.msdn.com/b/ie/archive/2014/03/10/certificate-reputation-a-novel-approach-for-protecting-users-from-fraudulent-certificates.aspx) last year. This year, we’ve extended the system to let web developers use the [Bing Webmaster Tools](http://www.bing.com/toolbox/webmaster) to report directly to Microsoft to let us know about fake certificates.

### Help against hacking
While Microsoft Edge has done much to help defend against trickery, the browser’s “engine” has also been overhauled to resist hacking (attempts to corrupt the browser itself) including a major overhaul of the DOM representation in the browser’s memory, and the security mitigations described here.

#### Microsoft EdgeHTML and modern web standards
Microsoft Edge has a new rendering engine, Microsoft EdgeHTML, which is focused on modern standards that let web developers build and maintain a consistent site across all modern browsers.

The Microsoft EdgeHTML engine also helps to defend against hacking through these new security standards features:

- Support for the W3C standard for [Content Security Policy (CSP)](https://developer.microsoft.com/microsoft-edge/platform/documentation/dev-guide/security/content-Security-Policy), which can help web developers defend their sites against cross-site scripting attacks.

- Support for the [HTTP Strict Transport Security (HSTS)](https://developer.microsoft.com/microsoft-edge/platform/documentation/dev-guide/security/HSTS/) security feature (IETF-standard compliant). This helps ensure that connections to important sites, such as to your bank, are always secured.

    **Note**<br>
    Both Microsoft Edge and Internet Explorer 11 support HSTS.

#### All web content runs in an app container sandbox
Internet Explorer 7 on Windows Vista was the first web browser to provide a browsing sandbox, called [Protected Mode](http://windows.microsoft.com/windows-vista/What-does-Internet-Explorer-protected-mode-do). Protected Mode forced the part of the browser that rendered web content to run with less privilege than the browser controls or the user, providing a level of isolation and protection should a malicious website attempt to exploit a bug in the browser or one of its plug-ins.

Internet Explorer 10 introduced Enhanced Protected Mode (EPM), based on the Windows 8 app container technology, providing a stronger sandbox by adding deny-by-default and no-read-up semantics. EPM was turned on by default in the Windows 8 and Windows 8.1 immersive browser, but was optional on the Internet Explorer 10 and Internet Explorer 11 desktop versions.

Microsoft Edge takes the sandbox even farther, running its content processes in app containers not just by default, but all of the time. Because Microsoft Edge doesn’t support 3rd party binary extensions, there’s no reason for it to run outside of the containers, ensuring that Microsoft Edge is more secure. 

#### Microsoft Edge is now a 64-bit app
The largest security change to Microsoft Edge is that it's designed like a Universal Windows app. By changing the browser to an app, it fundamentally changes the process model so that both the outer manager process and the assorted content processes all live within app container sandboxes; helping to provide the user and the platform with the [confidence](http://blogs.msdn.com/b/b8/archive/2012/05/17/delivering-reliable-and-trustworthy-metro-style-apps.aspx) provided by other Windows store apps.

##### 64-bit processes and Address Space Layout Randomization (ASLR)
Microsoft Edge runs in 64-bit not just by default, but anytime it’s running on a 64-bit operating system. Because Microsoft Edge doesn’t support legacy ActiveX controls or 3rd-party binary extensions, there’s no longer a reason to run 32-bit processes on a 64-bit system.

The value of running 64-bit all the time is that it strengthens Windows Address Space Layout Randomization (ASLR). ASLR randomizes the memory layout of the browser processes, making it much harder for attackers to hit precise memory locations. In turn, 64-bit processes make ASLR much more effective by making the address space exponentially larger and, therefore, more difficult for attackers to find the sensitive memory components they’re looking for.

#### New extension model and HTML5 support
Back in 1996, we introduced ActiveX for web browser extensions in an attempt to let 3rd parties experiment with various forms of alternate content on the web. However, we quickly learned that browser extensions can come at a cost of security and reliability. For example, binary extensions can bring code and data into the browser’s processes without any protection, meaning that if anything goes wrong, the entire browser itself can be compromised or go down.

Based on that learning, we’ve stopped supporting binary extensions in Microsoft Edge and instead encourage everyone to use our new, scripted HTML5-based extension model. For more info about the new extensions, see the [Microsoft Edge Developer Center](https://developer.microsoft.com/microsoft-edge/extensions/).

#### Reduced attack surfaces
In addition to removing support for VBScript, Jscript, VML, Browser Helper Objects, Toolbars, and ActiveX controls, Microsoft Edge also removed support for legacy Internet Explorer [document modes](https://msdn.microsoft.com/library/jj676915.aspx). Because many IE browser vulnerabilities are only present in legacy document modes, removing support for document modes significantly reduces attack surface, making the browser much more secure than before. However, it also means that it’s not as backward compatible.

Because of the reduced backward compatibility, we’ve given Microsoft Edge the ability to automatically fall back to Internet Explorer 11, using the Enterprise Mode Site List, for any apps that need backward compatibility.

#### Code integrity and image loading restrictions
Microsoft Edge content processes support code integrity and image load restrictions, helping to prevent malicious DLLs from loading or being injected into the content processes. Only [properly signed images](https://blogs.windows.com/msedgedev/2015/11/17/microsoft-edge-module-code-integrity/) are allowed to load into Microsoft Edge. Binaries on remote devices (such as, UNC or WebDAV) can’t be loaded.

#### Memory corruption mitigations
Memory corruption happens most frequently to apps written in C or C++ because those languages don’t provide type safety or buffer overflow protection. Broadly speaking, memory corruption attacks happen when an attacker provides malformed input to a program and the program can’t handle it, corrupting the program’s memory state and allowing the attacker to take control of the program.

Over the years, a broad variety of mitigations have been created around memory corruption, but even as these mitigations roll out, attackers adapt and invent new ways to attack. At the same time, we’ve responded with new memory safety defenses, mitigating the most common new forms of attack, including and especially [use-after-free (UAF)](http://cwe.mitre.org/data/definitions/416.html) vulnerabilities.

##### Memory Garbage Collector (MemGC) mitigation
MemGC is the replacement for Memory Protector, currently turned on for both Microsoft Edge on Windows 10 and Internet Explorer 11 on Windows 7 and newer operating systems. MemGC is a memory garbage collection system that helps to defend the browser from UAF vulnerabilities by taking the responsibility for freeing memory away from the programmer and instead automating it, only freeing memory when the automation detects that there are no more references left pointing to a given block of memory.

##### Control Flow Guard
Ultimately, attackers use memory corruption attacks to gain control of the CPU program counter so that they can jump to any code location they want. Control Flow Guard is a Microsoft Visual Studio technology that compiles checks around code that performs indirect jumps based on a pointer, restricting those jumps to only go to function entry points with known addresses. This makes attacker take-overs much more difficult by severely constraining where a memory corruption attack can jump to.

#### Designed for security
We’ve spent countless hours reviewing, testing, and using Microsoft Edge to make sure that you’re more protected than ever before.

##### Fuzzing/Static Analysis
We’ve devoted more than 670 machine-years to fuzz testing Microsoft Edge and Internet Explorer during product development, including monitoring for possible exceptions such as crashes or memory leaks. We’ve also generated more than 400-billion DOM manipulations from 1-billion HTML files. Because of all of this, hundreds of security issues were addressed before the product shipped.

##### Code Review & Penetration Testing
Over 70 end-to-end security engagements reviewed all key features, helping to address security implementation and design issues before shipping.
 
##### Windows REDTEAM
The Windows REDTEAM emulates the techniques and expertise of skilled, real-world attackers. Exploited Microsoft Edge vulnerabilities discovered through penetration testing can be addressed before public discovery and real-world exploits.










