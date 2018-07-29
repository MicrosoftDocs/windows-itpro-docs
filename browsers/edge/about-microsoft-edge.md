---
description: Overview information about Microsoft Edge, the default browser for Windows 10. This topic includes links to other Microsoft Edge topics.
ms.assetid: 70377735-b2f9-4b0b-9658-4cf7c1d745bb
author: shortpatti
ms.prod: edge
ms.mktglfcycl: general
ms.sitesec: library
title: Microsoft Edge for IT Pros
ms.localizationpriority: high
ms.date: 07/29/2018
---

# Microsoft Edge deployment for IT Pros
>Applies to:  Microsoft Edge on Windows 10 and Windows 10 Mobile

Microsoft Edge is the new, default web browser for Windows 10, helping you to experience modern web standards, better performance, improved security, and increased reliability. Microsoft Edge lets you stay up-to-date through the Microsoft Store and to manage your enterprise through Group Policy or your mobile device management (MDM) tools.

>[!IMPORTANT]
>The Long-Term Servicing Branch (LTSB) versions of Windows, including Windows Server 2016, don’t include Microsoft Edge or many other Universal Windows Platform (UWP) apps. Systems running the LTSB operating systems do not support these apps because their services get frequently updated with new functionality. For customers who require the LTSB for specialized devices, we recommend using Internet Explorer 11.

## Compatibility
Microsoft Edge lets you continue to use IE11 for sites that are on your corporate intranet or included on your Enterprise Mode Site List. If you are running web apps that continue to use ActiveX controls, x-ua-compatible headers, or legacy document modes, you need to keep running them in IE11.  IE11 offers additional security, manageability, performance, backward compatibility, and modern standards support.


>[!TIP]
> If you are running an earlier version of Internet Explorer, then we recommend upgrading to IE11, so any legacy apps continue to work correctly.

**Technology not supported by Microsoft Edge**
- ActiveX controls
- x-ua-compatible headers
- &lt;meta&gt; tags
- Legacy document modes

## Security
Microsoft Edge is designed with improved security in mind, helping to defend people from increasingly sophisticated and prevalent web-based attacks against Windows.

For details on the security-related group policies, see [Security and privacy management](group-policies/security-privacy-management-gp.md).

| | |
|---|---|
| **[Windows Hello](http://blogs.windows.com/bloggingwindows/2015/03/17/making-windows-10-more-personal-and-more-secure-with-windows-hello/)** | Authenticates the user and the website with asymmetric cryptography technology. Microsoft Edge natively supports Windows Hello as a more personal, seamless, and secure way to authenticate on the web, powered by an early implementation of the [Web Authentication (formerly FIDO 2.0 Web API) specification](http://w3c.github.io/webauthn/). |
| **Microsoft SmartScreen** | Defends against phishing by performing reputation checks on sites visited and blocking any site that is thought to be a phishing site. SmartScreen also helps to defend against installing malicious software or file downloads, even from trusted sites. |
| **Certificate Reputation system** | Collects data about certificates in use, detecting new certificates and flagging fraudulent certificates automatically. |
| **Microsoft EdgeHTML** | Defends against hacking through the following security standards features:<ul><li>Support for the W3C standard for Content Security Policy (CSP), which helps web developers defend their sites against cross-site scripting attacks.</li><li>Support for the HTTP Strict Transport Security (HSTS) feature, which is IETF-standard compliant, and helps to ensure that connections to sites are always secure.</li></ul> |
| **Code integrity and image loading restrictions** | Prevents malicious DLLs from loading or injecting into the content processes. Only signed images are allowed to load in Microsoft Edge. Binaries on remote devices (such as UNC or WebDAV) can&#39;t load. |
| **Memory corruption mitigations** | Defends against memory corruption weaknesses and vulnerabilities with the use of [CWE-416: Use After Free](http://cwe.mitre.org/data/definitions/416.html) (UAF). |
| **Memory Garbage Collector (MemGC) mitigation** | Replaces Memory Protector and helps to defend the browser from UAF vulnerabilities by freeing memory from the programmer and automating it, only freeing memory when the automation detects that there are no more references left pointing to a given block of memory. |
| **Control Flow Guard** | Compiles checks around code that performs indirect jumps based on a pointer, restricting those jumps to only going to function entry points with known addresses. Control Flow Guard is a Microsoft Visual Studio technology. |

## Minimum system requirements
Some of the components might also need additional system resources. Check the component's documentation for more information.


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
---