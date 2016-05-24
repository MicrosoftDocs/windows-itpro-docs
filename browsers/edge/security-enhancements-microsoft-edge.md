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

### Microsoft EdgeHTML and modern web standards
Microsoft Edge has a new rendering engine, Microsoft EdgeHTML, which is focused on modern standards that let web developers build and maintain a consistent site across all modern browsers.

The Microsoft EdgeHTML engine also helps to defend against trickery through these new security standards features:

- Support for the W3C standard and the [Content Security Policy (CSP) specification](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/security/content-Security-Policy). Both of which can help developers defend against cross-site scripting attacks.

- Support for the [HTTP Strict Transport Security (HSTS)](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/security/HSTS/) security feature (IETF-standard compliant). This helps ensure that connections to important sites, such as to your bank, are always secured.

- Support for the [Meta referrer](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/security/meta-referrer/) tag, which specifies what info should be passed through the HTTP header to any request sent from a webpage.

## Help against hacking
While Microsoft Edge has done much to help defend against trickery, it’s also undergone a major overhaul of the DOM representation in the browser’s memory, allowing the code to be more resistant to attacks that attempt to subvert the browser, like in many hacking attempts.

### Microsoft Edge is now a 64-bit app
The largest security change to Microsoft Edge is that we’ve made it a Universal Windows app. By changing the browser to an app, it fundamentally changes the process model so that both the outer manager process and the assorted content processes all live within app container sandboxes; providing reliable and trustworthy behavior along with additional isolation and protection from outside attacks.

Additionally, Microsoft Edge has been updated to run in 64-bit not just by default, but anytime it’s running on a 64-bit operating system. Because Microsoft Edge doesn’t support legacy ActiveX controls or 3rd-party binary extensions, there’s no longer a reason to run 32-bit processes.

#### 64-bit processes and Address Space Layout Randomization (ASLR)
Strengthening Windows Address Space Layout Randomization (ASLR) provides significant advantages to 64-bit processes in general, and browser processes specifically, making it much more difficult for attackers to inject malicious code into a browser process through a coding exploit.

ASLR randomizes the memory layout of the browser processes, making it much harder for attackers to hit precise memory locations. In turn, 64-bit processes make ASLR much more effective by making the address space exponentially larger and therefore, more difficult for attackers to find the sensitive memory components they’re looking for.

### All web content runs in an app container sandbox
Internet Explorer 7 on Windows Vista was the first web browser to provide a browsing sandbox, called [Protected Mode](http://windows.microsoft.com/en-US/windows-vista/What-does-Internet-Explorer-protected-mode-do). Protected Mode forced the part of the browser that rendered web content to run with less privilege than the browser controls or the user, providing a level of isolation and protection should a malicious website attempt to exploit a bug in the browser or one of its plug-ins.

Internet Explorer 10 introduced Enhanced Protected Mode (EPM), based on the Windows 8 technology, providing an even stronger sandbox, using deny-by-default and no-read-up semantics. EPM was turned on by default in the Windows 8 and Windows 8.1 immersive browser, but was optional on the Internet Explorer 10 and Internet Explorer 11 desktop versions.

Microsoft Edge takes EPM even farther, running its content processes in app containers not just by default, but all of the time. Because Microsoft Edge doesn’t support 3rd party binary extensions, there’s no reason for it to run outside of the containers, making it the most secure client-side app sandbox in Windows.

### New extension model and HTML5 support
Back in 1996, we introduced ActiveX for web browser extensions in an attempt to let 3rd parties experiment with various forms of alternate content on the web. However, we quickly learned that browser extensions can come at a cost of security and reliability. For example, binary extensions can bring code and data into the browser’s processes without any protection, meaning that if anything goes wrong, the entire browser itself can be compromised or go down.

Our answer to this problem was to create an extension model with less shared state between the browser and its extensions. Meaning that Microsoft Edge doesn’t support [Vector Markup Language, VBScript, JScript, Toolbars, Browser Helper Objects, or ActiveX](http://blogs.windows.com/msedgedev/2015/05/06/a-break-from-the-past-part-2-saying-goodbye-to-activex-vbscript-attachevent/). However, with the use and support of HTML5, the need for those extensions has been greatly reduced, allowing sites to be as full-functioning across browsers as before, without the same potential risks.

If you still want to have more extensibility beyond what’s provided by HTML5, you can see the [Microsoft Edge Extensions](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/extensions/) documentation for a modern, HTML/JS/CSS-based extension model.  Extensions can be disabled through [Group Policy or Mobile Data Management (MDM)](https://technet.microsoft.com/itpro/microsoft-edge/available-policies) policies.

### Reduced attack surfaces
In addition to removing support for VBScript, Jscript, VML, Browser Helper Objects, Toolbars, and ActiveX controls, Microsoft Edge also has no support for legacy Internet Explorer [document modes](https://msdn.microsoft.com/en-us/library/jj676915.aspx). This means that the browser is much more secure than before. However, it also means that it’s not as backward compatible as before.

Because of that, we’ve given Microsoft Edge the ability to automatically fall back to Internet Explorer 11, using the Enterprise Mode Site List, for any apps that need backwards compatibility.

### Code integrity and image loading restrictions
Microsoft Edge content processes support code integrity and image load restrictions, helping to prevent malicious DLLs from loading or being injected into the content processes. Only [properly signed images](https://blogs.windows.com/msedgedev/2015/11/17/microsoft-edge-module-code-integrity/) are allowed to load into Microsoft Edge. Binaries on remote devices (such as, UNC or WebDAV) can’t be loaded.

### Memory corruption mitigations
Memory corruption happens most frequently to apps written in C or C++ because the languages don’t provide type safety or buffer overflow protection. Broadly speaking, memory corruption attacks happen when an attacker provides malformed info to a program and the program can’t handle it, causing the program’s memory state to corrupt and to allow the attacker to take control of the program.

Over the years, a broad variety of mitigations have been created around memory corruption, but even as these mitigations roll out, attackers adapt and invent new ways to attack. At the same time, we’ve responded with new memory safety defenses, mitigating the most common new forms of attack, including and especially [use-after-free (UAF)](http://cwe.mitre.org/data/definitions/416.html) vulnerabilities.

#### Memory Garbage Collector (MemGC) mitigation
MemGC is a memory garbage collection system that helps to defend the browser from UAF vulnerabilities by taking the responsibility for freeing memory away from the programmer and instead automating it, only freeing memory when the automation detects that there are no more references left pointing to a given block of memory.

**Note**<br>MemGC is the replacement for Memory Protector, currently turned on for both Microsoft Edge and Internet Explorer 11.

#### Control Flow Guard
Ultimately, attackers use memory corruption attacks to gain control of the CPU program counter so that they can jump to any code location they want. Control Flow Guard is a Microsoft Visual Studio technology that compiles checks around code that performs indirect jumps based on a pointer, restricting those jumps to only go to function entry points with known addresses. This makes attacker take-overs much more difficult by severely constraining where a memory corruption attack can jump to.

**Note**<br>Control Flow Guard is always turned on for Microsoft Edge.

### Designed for security
We’ve spent countless hours reviewing, testing, and using Microsoft Edge to make sure that you’re more protected than ever before.

#### Fuzzing/Static Analysis
We’ve devoted more than 320 machine-years to fuzz testing Microsoft Edge and Internet Explorer during product development, including monitoring for possible exceptions such as crashes or memory leaks. We’ve also generated more than 100-billion DOM manipulations from 230-million non-unique HTML files. That’s a 3x scale increase over previous product testing. Because of all of this, hundreds of security issues were addressed before the product shipped.

#### Code Review & Penetration Testing
Over 70 end-to-end security engagements reviewed all key features, helping to address security implementation and design issues before shipping.
  
#### Windows REDTEAM
The Windows REDTEAM emulates the techniques and expertise of skilled, real-world attackers.  Exploited Microsoft Edge vulnerabilities discovered through penetration testing can be addressed before public discovery and real-world exploits.
 
#### Bug Bounty Programs
Despite all of our best efforts, we realize that there will be security vulnerabilities in Microsoft Edge that we don’t yet know about. To minimize customer impact, we offer ongoing bounty programs intended to incent security researchers to report vulnerabilities to us. If you’re a security researcher and you’re interested in the bounty program, you can find more info [here](https://technet.microsoft.com/en-us/library/dn425036.aspx).










