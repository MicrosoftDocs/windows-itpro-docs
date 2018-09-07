---
title: Microsoft Edge - Security and privacy management
description: Microsoft Edge helps to defend from increasingly sophisticated and prevalent web-based attacks against Windows.  While most websites are safe, some sites have been designed to steal personal information or gain access to your system’s resources. 
ms.author: pashort
author: shortpatti
ms.date: 07/27/2018
---

# Security and privacy management

Microsoft Edge is designed with improved security in mind, helping to defend people from increasingly sophisticated and prevalent web-based attacks against Windows. Because Microsoft Edge is designed like a Universal Windows app, changing the browser to an app, it fundamentally changes the process model so that both the outer manager process and the different content processes all live within app container sandboxes. 

Microsoft Edge runs in 64-bit not just by default, but anytime it’s running on a 64-bit operating system. Because Microsoft Edge doesn’t support legacy ActiveX controls or 3rd-party binary extensions, there’s no longer a reason to run 32-bit processes on a 64-bit system. 

The value of running 64-bit all the time is that it strengthens Windows Address Space Layout Randomization (ASLR), randomizing the memory layout of the browser processes, making it much harder for attackers to hit precise memory locations. In turn, 64-bit processes make ASLR much more effective by making the address space exponentially larger and, therefore, more difficult for attackers to find sensitive memory components. 

For more details on the security features in Microsoft Edge, see [Help protect against web-based security threats](#help-protect-against-web-based-security-threats).


## Configure cookies
[!INCLUDE [configure-cookies-include](../includes/configure-cookies-include.md)]

## Configure Password Manager
[!INCLUDE [configure-password-manager-include](../includes/configure-password-manager-include.md)]

## Configure Windows Defender SmartScreen
[!INCLUDE [configure-windows-defender-smartscreen-include](../includes/configure-windows-defender-smartscreen-include.md)]

## Prevent bypassing Windows Defender SmartScreen prompts for files 
[!INCLUDE [prevent-bypassing-win-defender-files-include](../includes/prevent-bypassing-win-defender-files-include.md)]

## Prevent bypassing Windows Defender SmartScreen prompts for sites 
[!INCLUDE [prevent-bypassing-win-defender-sites-include](../includes/prevent-bypassing-win-defender-sites-include.md)]

## Prevent certificate error overrides 
[!INCLUDE [prevent-certificate-error-overrides-include](../includes/prevent-certificate-error-overrides-include.md)]

## Prevent using Localhost IP address for WebRTC
[!INCLUDE [prevent-localhost-address-for-webrtc-include](../includes/prevent-localhost-address-for-webrtc-include.md)]


## Help protect against web-based security threats

While most websites are safe, some sites have been intentionally designed to steal sensitive and private information or gain access to your system’s resources. You can help protect against threats by using strong security protocols to ensure against such threats.

Thieves use things like _phishing_ attacks to convince someone to enter personal information, such as a banking password, into a website that looks like a legitimate bank, but isn't. Attempts to identify legitimate websites through the HTTPS lock symbol and the EV Cert green bar have met with only limited success since attackers are too good at faking legitimate experiences for many people to notice the difference.

Another method thieves often use _hacking_ to attack a system through malformed content that exploits subtle flaws in the browser or in various browser extensions.  This exploit lets an attacker run code on a device, taking over a browsing session, and perhaps the entire device.

All browsers are faced with threats like these, so it's important that we explore how Microsoft Edge addresses these threats to help make browsing the web a safer experience. 



| Feature | Description |
|---|---|
| **[Windows Hello](http://blogs.windows.com/bloggingwindows/2015/03/17/making-windows-10-more-personal-and-more-secure-with-windows-hello/)** | Microsoft Edge is the first browser to natively support Windows Hello to authenticate the user and the website with asymmetric cryptography technology, powered by an early implementation of the [Web Authentication (formerly FIDO 2.0 Web API) specification](http://w3c.github.io/webauthn/). |
| **Microsoft SmartScreen** | Defends against phishing by performing reputation checks on sites visited and blocking any sites that are thought to be a phishing site. SmartScreen also helps to defend against installing malicious software, drive-by attacks, or file downloads, even from trusted sites. Drive-by attacks are malicious web-based attacks that compromise your system by targeting security vulnerabilities in commonly used software and may be hosted on trusted sites. |
| **Certificate Reputation system** | Collects data about certificates in use, detecting new certificates and flagging fraudulent certificates automatically, and sends the data to Microsoft. The systems and tools in place include<ul><li>Certificate Reputation system: Protects users from fraudulent certificates.</li><li>Bing Webmaster Tools (for developers): Reports fake certificates directly to Microsoft.</li></ul> |
| **Microsoft EdgeHTML and modern web standards** | Microsoft Edge uses Microsoft EdgeHTML as the rendering engine. This engine focuses on modern standards letting web developers build and maintain a consistent site across all modern browsers.  It also helps to defend against hacking through these security standards features:<ul><li>Support for the W3C standard for [Content Security Policy (CSP)](https://developer.microsoft.com/microsoft-edge/platform/documentation/dev-guide/security/content-Security-Policy), which can help web developers defend their sites against cross-site scripting attacks.</li><li> Support for the [HTTP Strict Transport Security (HSTS)](https://developer.microsoft.com/microsoft-edge/platform/documentation/dev-guide/security/HSTS/) security feature (IETF-standard compliant). HSTS helps ensure that connections to important sites, such as to your bank, are always secured.</li></ul><p>**NOTE:** Both Microsoft Edge and Internet Explorer 11 support HSTS. |
| **Code integrity and image loading restrictions** | Prevents malicious DLLs from loading or injecting into the content processes. Only signed images are allowed to load in Microsoft Edge. Binaries on remote devices (such as UNC or WebDAV) can't load. |
| **Memory corruption mitigations** | Defends against memory corruption weaknesses and vulnerabilities with the use of [CWE-416: Use After Free](http://cwe.mitre.org/data/definitions/416.html) (UAF). |
| **Memory Garbage Collector (MemGC) mitigation** | Replaces Memory Protector and helps to defend the browser from UAF vulnerabilities by freeing memory from the programmer and automating it, only freeing memory when the automation detects that there are no more references left pointing to a given block of memory. |
| **Control Flow Guard** | Compiles checks around code that performs indirect jumps based on a pointer, restricting those jumps to only going to function entry points with known addresses. Control Flow Guard is a Microsoft Visual Studio technology. |
| **All web content runs in an app container sandbox** |Microsoft Edge takes the sandbox even farther, running its content processes in containers not just by default, but all of the time. Microsoft Edge doesn’t support 3rd party binary extensions, so there is no reason for it to run outside of the container, making Microsoft Edge more secure.  |
| **Extension model and HTML5 support** |Microsoft Edge does not support binary extensions because they can bring code and data into the browser’s processes without any protection. So if anything goes wrong, the entire browser itself can be compromised or go down. We encourage everyone to use our scripted HTML5-based extension model. For more info about the new extensions, see the [Microsoft Edge Developer Center](https://developer.microsoft.com/microsoft-edge/extensions/). |
| **Reduced attack surfaces** |Microsoft Edge does not support VBScript, JScript, VML, Browser Helper Objects, Toolbars, ActiveX controls, and [document modes](https://msdn.microsoft.com/library/jj676915.aspx). Many IE browser vulnerabilities only appear in legacy document modes, removing support reduced attack surface, making the browser more secure. It also means that it’s not as backward compatible. <p>With this reduced backward compatibility, Microsoft Edge automatically falls back to Internet Explorer 11 for any apps that need backward compatibility.  This fall back happens when you use the Enterprise Mode Site List.  |
