---
description: Overview information about Microsoft Edge, the default browser for Windows 10. This topic includes links to other Microsoft Edge topics.
ms.assetid: 70377735-b2f9-4b0b-9658-4cf7c1d745bb
author: shortpatti
ms.prod: edge
ms.mktglfcycl: general
ms.sitesec: library
title: Microsoft Edge for IT Pros
ms.localizationpriority: high
ms.date: 07/26/2018
---

# Microsoft Edge for IT Pros
>Applies to:  Microsoft Edge on Windows 10 and Windows 10 Mobile

Microsoft Edge is the new, default web browser for Windows 10, helping you to experience modern web standards, better performance, improved security, and increased reliability. Microsoft Edge also introduces new features like Web Note, Reading View, and Cortana that you can use along with your normal web browsing abilities.

Microsoft Edge lets you stay up-to-date through the Microsoft Store and to manage your enterprise through Group Policy or your mobile device management (MDM) tools.


Microsoft Edge is pre-installed on all Windows 10-capable devices that meet the minimum system requirements and are on the supported language list.

>[!NOTE]
>The Long-Term Servicing Branch (LTSB) versions of Windows, including Windows Server 2016, don't include Microsoft Edge or many other Universal Windows Platform (UWP) apps. These apps and their services are frequently updated with new functionality, and can't be supported on systems running the LTSB operating systems. For customers who require the LTSB for specialized devices, we recommend using Internet Explorer 11.

Microsoft Edge is designed with significant security improvements, helping to defend people from increasingly sophisticated and prevalent web-based attacks against Windows.



Microsoft Edge is the first browser to natively support Windows Hello as a more personal, seamless, and secure way to authenticate on the web, powered by an early implementation of the [Web Authentication (formerly FIDO 2.0 Web API) specification](http://w3c.github.io/webauthn/).


## Interoperability goals and enterprise guidance

Our primary goal is that your modern websites work in Microsoft Edge. To that end, we've made Microsoft Edge the default browser.

However, if you're running web apps that continue to use:

* ActiveX controls

* x-ua-compatible headers

* &lt;meta&gt; tags

* Enterprise mode or compatibility view to address compatibility issues

* legacy document modes

You'll need to keep running them using IE11. If you don't have IE11 installed anymore, you can download it from the Microsoft Store or from the [Internet Explorer 11 download page](https://go.microsoft.com/fwlink/p/?linkid=290956). Alternatively, you can also use Enterprise Mode with Microsoft Edge to transition only the sites that need these technologies to load in IE11. For info about Enterprise Mode and Edge, see [Use Enterprise Mode to improve compatibility](emie-to-improve-compatibility.md).


### Enterprise guidance
Microsoft Edge is the default browser experience for Windows 10 and Windows 10 Mobile. However, if you're running web apps that need ActiveX controls, we recommend that you continue to use Internet Explorer 11 for them. If you don't have IE11 installed anymore, you can download it from the Microsoft Store or from the [Internet Explorer 11 download page](https://go.microsoft.com/fwlink/p/?linkid=290956).

We also recommend that you upgrade to IE11 if you're running any earlier versions of Internet Explorer. IE11 is supported on Windows 7, Windows 8.1, and Windows 10. So any legacy apps that work with IE11 will continue to work even as you migrate to Windows 10.

If you're having trouble deciding whether Microsoft Edge is good for your organization, you can take a look at this infographic about the potential impact of using Microsoft Edge in an organization.

![Microsoft Edge infographic](images/microsoft-edge-infographic-sm.png)<br>
[Click to enlarge](img-microsoft-edge-infographic-lg.md)<br>
[Click to download image](https://www.microsoft.com/download/details.aspx?id=53892)

#### Microsoft Edge
Microsoft Edge takes you beyond just browsing to actively engaging with the web through features like Web Note, Reading View, and Cortana.

-   **Web Note.** Microsoft Edge lets you annotate, highlight, and call things out directly on webpages.
-   **Reading view.** Microsoft Edge lets you enjoy and print online articles in a distraction-free layout that's optimized for your screen size. While in reading view, you can also save webpages or PDF files to your reading list, for later viewing.
-   **Cortana.** Cortana is automatically enabled on Microsoft Edge. Microsoft Edge lets you highlight words for more info and gives you one-click access to things like restaurant reservations and reviews, without leaving the webpage.
-   **Compatibility and security.** Microsoft Edge lets you continue to use IE11 for sites that are on your corporate intranet or that are included on your Enterprise Mode Site List. You must use IE11 to run older, less secure technology, such as ActiveX controls.

#### IE11
IE11 offers enterprises additional security, manageability, performance, backward compatibility, and modern standards support.

-   **Backward compatibility.** IE11 supports 9 document modes that include high-fidelity emulations for older versions of IE.
-   **Modern web standards.** IE11 supports modern web technologies like HTML5, CSS3, and WebGL, which help to ensure today's modern websites and apps work just as well as your old, legacy websites and apps.
-   **More secure.** IE11 was designed with security in mind and is more secure than older versions. Using security features like SmartScreen and Enhanced Protected Mode can help IE11 reduce your risk.
-   **Faster.** IE11 is significantly faster than previous versions of Internet Explorer, taking advantage of network optimization and hardware-accelerated text, graphics, and JavaScript rendering.
-   **Easier migration to Windows 10.** IE11 is the only version of IE that runs on Windows 7, Windows 8.1, and Windows 10. Upgrading to IE11 on Windows 7 can also help your organization support the next generation of software, services, and devices.
-   **Administration.** IE11 can use the Internet Explorer Administration Kit (IEAK) 11 or MSIs for deployment, and includes more than 1,600 Group Policies and preferences for granular control.


## Security and privacy


| | |
|---|---|
| **[Windows Hello](http://blogs.windows.com/bloggingwindows/2015/03/17/making-windows-10-more-personal-and-more-secure-with-windows-hello/)** | Authenticates the user and the website with asymmetric cryptography technology. |
| **Microsoft SmartScreen** | Defends against phishing by performing reputation checks on sites visited and blocking any site that is thought to be a phishing site. SmartScreen also helps to defend against installing malicious software or file downloads, even from trusted sites. |
| **Certificate Reputation system** | Collects data about certificates in use, detecting new certificates and flagging fraudulent certificates automatically. |
| **Microsoft EdgeHTML** | Defends against hacking through the following security standards features:<ul><li>Support for the W3C standard for Content Security Policy (CSP), which helps web developers defend their sites against cross-site scripting attacks.</li><li>Support for the HTTP Strict Transport Security (HSTS) feature, which is IETF-standard compliant, and helps to ensure that connections to sites are always secure.</li></ul> |
| **Code integrity and image loading restrictions** | Prevents malicious DLLs from loading or injecting into the content processes. Only signed images are allowed to load in Microsoft Edge. Binaries on remote devices (such as UNC or WebDAV) can&#39;t load. |
| **Memory corruption mitigations** | Defends against memory corruption weaknesses and vulnerabilities with the use of [CWE-416: Use After Free](http://cwe.mitre.org/data/definitions/416.html) (UAF). |
| **Memory Garbage Collector (MemGC) mitigation** | Replaces Memory Protector and helps to defend the browser from UAF vulnerabilities by freeing memory from the programmer and automating it, only freeing memory when the automation detects that there are no more references left pointing to a given block of memory. |
| **Control Flow Guard** | Compiles checks around code that performs indirect jumps based on a pointer, restricting those jumps to only going to function entry points with known addresses. Control Flow Guard is a Microsoft Visual Studio technology. |


## Minimum system requirements
Some of the components in this table might also need additional system resources. Check the component's documentation for more information.


| Item               | Minimum requirements          |
| ------------------ | -------------------------------------------- |
| Computer/processor | 1 gigahertz (GHz) or faster (32-bit (x86) or 64-bit (x64)) |
| Operating system   | <ul><li>Windows 10 (32-bit or 64-bit)</li><li>Windows 10 Mobile</li></ul><p>**Note**<br> For specific Windows 10 Mobile requirements, see the [Minimum hardware requirements for Windows 10 Mobile](https://go.microsoft.com/fwlink/p/?LinkID=699266) topic. |
| Memory             | <ul><li>Windows 10 (32-bit) - 1 GB</li><li>Windows 10 (64-bit) - 2 GB</li></ul> |
| Hard drive space   | <ul><li>Windows 10 (32-bit) - 16 GB</li><li>Windows 10 (64-bit) - 20 GB</li></ul> |
| DVD drive          | DVD-ROM drive (if installing from a DVD-ROM) |
| Display            | Super VGA (800 x 600) or higher-resolution monitor with 256 colors |
| Graphics card      | Microsoft DirectX 9 or later with Windows Display Driver Model (WDDM) 1.0 driver |
| Peripherals        | Internet connection and a compatible pointing device |

 

## Supported languages


Microsoft Edge supports all of the same languages as Windows 10, including:


| Language                 | Country/Region | Code   |
| ------------------------ | -------------- | ------ |
| Afrikaans (South Africa) | South Africa   | af-ZA  |
| Albanian (Albania)       | Albania        | sq-AL  |
| Amharic                  | Ethiopia       | am-ET  |
| Arabic (Saudi Arabia)    | Saudi Arabia   | ar-SA  |
| Armenian                 | Armenia        | hy-AM  |
| Assamese                 | India          | as-IN  |
| Azerbaijani (Latin, Azerbaijan)  | Azerbaijan      | az-Latn-AZ  |
| Bangla (Bangladesh)      | Bangladesh     | bn-BD  |
| Bangla (India)           | India          | bn-IN  |
| Basque (Basque)          | Spain          | eu-ES  |
| Belarusian (Belarus)     | Belarus        | be-BY  |
| Bosnian (Latin)          | Bosnia and Herzegovina  | bs-Latn-BA  |
| Bulgarian (Bulgaria)     | Bulgaria       | bg-BG  |
| Catalan (Catalan)        | Spain          | ca-ES  |
| Central Kurdish (Arabic) | Iraq           | ku-Arab-IQ  |
| Cherokee (Cherokee)      | United States  | chr-Cher-US  |
| Chinese (Hong Kong SAR)  | Hong Kong Special Administrative Region | zh-HK  | 
| Chinese (Simplified, China) | People's Republic of China | zh-CN  |
| Chinese (Traditional, Taiwan) | Taiwan    | zh-TW  |
| Croatian (Croatia)       | Croatia        | hr-HR  |
| Czech (Czech Republic)   | Czech Republic | cs-CZ  |
| Danish (Denmark)         | Denmark        | da-DK  |
| Dari                     | Afghanistan    | prs-AF |
| Dutch (Netherlands)      | Netherlands    | nl-NL  | 
| English (United Kingdom) | United Kingdom | en-GB  | 
| English (United States)  | United States  | en-US  | 
| Estonian (Estonia)       | Estonia        | et-EE  | 
| Filipino (Philippines)   | Philippines    | fil-PH | 
| Finnish (Finland)        | Finland        | fi_FI  | 
| French (Canada)          | Canada         | fr-CA  | 
| French (France)          | France         | fr-FR  | 
| Galician (Galician)      | Spain          | gl-ES  | 
| Georgian                 | Georgia        | ka-GE  | 
| German (Germany)         | Germany        | de-DE  | 
| Greek (Greece)           | Greece         | el-GR  | 
| Gujarati                 | India          | gu-IN  |
| Hausa (Latin, Nigeria)   | Nigeria        | ha-Latn-NG | 
| Hebrew (Israel)          | Israel         | he-IL  | 
| Hindi (India)            | India          | hi-IN  | 
| Hungarian (Hungary)      | Hungary        | hu-HU  | 
| Icelandic                | Iceland        | is-IS  | 
| Igbo                     | Nigeria        | ig-NG  | 
| Indonesian (Indonesia)   | Indonesia      | id-ID  | 
| Irish                    | Ireland        | ga-IE  | 
| isiXhosa                 | South Africa   | xh-ZA  | 
| isiZulu                  | South Africa   | zu-ZA  |
| Italian (Italy)          | Italy          | it-IT  | 
| Japanese (Japan)         | Japan          | ja-JP  | 
| Kannada                  | India          | kn-IN  | 
| Kazakh (Kazakhstan)      | Kazakhstan     | kk-KZ  | 
| Khmer (Cambodia)         | Cambodia       | km-KH  | 
| K'iche'                  | Guatemala      | quc-Latn-GT  | 
| Kinyarwanda              | Rwanda         | rw-RW  | 
| KiSwahili                | Kenya, Tanzania  | sw-KE  | 
| Konkani                  | India          | kok-IN  | 
| Korean (Korea)           | Korea          | ko-KR  | 
| Kyrgyz                   | Kyrgyzstan     | ky-KG  | 
| Lao (Laos)               | Lao P.D.R.     | lo-LA  | 
| Latvian (Latvia)         | Latvia         | lv-LV  | 
| Lithuanian (Lithuania)   | Lithuania      | lt-LT  | 
| Luxembourgish (Luxembourg) | Luxembourg   | lb-LU  | 
| Macedonian (Former Yugoslav Republic of Macedonia) | Macedonia (FYROM) | mk-MK  | 
| Malay (Malaysia)         | Malaysia, Brunei, and Singapore | ms-MY  | 
| Malayalam                | India          | ml-IN  | 
| Maltese                  | Malta          | mt-MT  | 
| Maori                    | New Zealand    | mi-NZ  |
| Marathi                  | India          | mr-IN  | 
| Mongolian (Cyrillic)     | Mongolia       | mn-MN  | 
| Nepali | Federal Democratic Republic of Nepal | ne-NP  | 
| Norwegian (Nynorsk) | Norway              | nn-NO  | 
| Norwegian, Bokmål (Norway) | Norway       | nb-NO  | 
| Odia                     | India          | or-IN  | 
| Polish (Poland)          | Poland         | pl-PL  | 
| Portuguese (Brazil)      | Brazil         | pt-BR  | 
| Portuguese (Portugal)    | Portugal       | pt-PT  | 
| Punjabi                  | India          | pa-IN  | 
| Punjabi (Arabic)         | Pakistan       | pa-Arab-PK | 
| Quechua                  | Peru           | quz-PE | 
| Romanian (Romania)       | Romania        | ro-RO  | 
| Russian (Russia)         | Russia         | ru-RU  | 
| Scottish Gaelic          | United Kingdom | gd-GB  | 
| Serbian (Cyrillic, Bosnia, and Herzegovina)        | Bosnia and Herzegovina | sr-Cyrl-BA  | 
| Serbian (Cyrillic, Serbia) | Serbia       | sr-Cyrl-RS | 
| Serbian (Latin, Serbia)  | Serbia         | sr-Latn-RS | 
| Sesotho sa Leboa         | South Africa   | nso-ZA | 
| Setswana (South Africa)  | South Africa and Botswana   | tn-ZA  | 
| Sindhi (Arabic)          | Pakistan       | sd-Arab-PK | 
| Sinhala                  | Sri Lanka      | si-LK  | 
| Slovak (Slovakia)        | Slovakia       | sk-SK  |
| Slovenian (Slovenia)     | Slovenia       | sl-SL  | 
| Spanish (Mexico)         | Mexico         | es-MX  | 
| Spanish (Spain, International Sort) | Spain | en-ES | 
| Swedish (Sweden)         | Sweden         | sv-SE  |
| Tajik (Cyrillic)         | Tajikistan     | tg-Cyrl-TJ  | 
| Tamil (India)            | India and Sri Lanka | ta-IN  | 
| Tatar                    | Russia         | tt-RU  | 
| Telugu                   | India          | te-IN  | 
| Thai (Thailand)          | Thailand       | th-TH  |
| Tigrinya (Ethiopia)      | Ethiopia       | ti-ET  | 
| Turkish (Turkey)         | Turkey         | tr-TR  | 
| Turkmen                  | Turkmenistan   | tk-TM  | 
| Ukrainian (Ukraine)      | Ukraine        | uk-UA  | 
| Urdu                     | Pakistan       | ur-PK  | 
| Uyghur                   | People's Republic of China | ug-CN  | 
| Uzbek (Latin, Uzbekistan) | Uzbekistan    | uz-Latn-UZ  | 
| Valencian                | Spain          | ca-ES-valencia  | 
| Vietnamese               | Vietnam        | vi-VN  | 
| Welsh                    | United Kingdom | cy-GB  | 
| Wolof                    | Senegal        | wo-SN  |
| Yoruba                   | Nigeria        | yo-NG  | 

 
