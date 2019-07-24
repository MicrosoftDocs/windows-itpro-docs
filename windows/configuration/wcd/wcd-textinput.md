---
title: TextInput (Windows 10)
description: This section describes the TextInput settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/15/2017
ms.reviewer: 
manager: dansimp
---

# TextInput (Windows Configuration Designer reference)

Use TextInput settings to configure text intelligence and keyboard for mobile devices.

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| Intelligence > DisablePredictions |  |  X  |  |  |  |
| PreEnabledKeyboard |  |  X  |  |  |  |

## Intelligence

Set **DisablePredictions** to the locale or alternative input language that must have the text intelligence features disabled. For example, to disable text correction and suggestions for English (UK), set the value of **DisablePredictions** to `en-gb`.

## PreEnabledKeyboard

In addition to the automatically-enabled default keyboard, OEMs may choose to pre-enable more keyboards for a particular market.

During phone bring-up, OEMs must set the boot locale, or default locale, for the phone. During first boot, Windows Phone reads the locale setting and automatically enables a default keyboard based on the locale to keyboard mapping table in Set languages and locales.

The mapping works for almost all regions and additional customizations are not needed unless specified in the pre-enabled keyboard column in Set languages and locales. If an OEM chooses to pre-enable more keyboards for a particular market, they can do so by specifying the setting. Pre-enabled keyboards will automatically be enabled during boot. Microsoft recommends that partners limit the number of pre-enabled keyboards to those languages that correspond to the languages spoken within the market.


PreEnabledKeyboard must be entered once for each keyboard you want to pre-enable. As shown below, the format to specify a particular keyboard must be: Locale code.Locale value. See the following table for more information on the locale codes and values that you can use. The setting Value must be set to 1 to enable the keyboard.

The following table shows the values that you can use for the Locale code.Locale value part of the setting name.

>[!NOTE]
>The keyboards for some locales require additional language model files: am-ET, bn-IN, gu-IN, hi-IN, ja-JP, kn-IN, ko-KR, ml-IN, mr-IN, my-MM, or-IN, pa-IN, si-LK, ta-IN, te-IN, zh-TW, zh-CN, and zh-HK. 


Name | Locale code | Keyboard layout value
--- | --- | ---
Afrikaans (South Africa) | af-ZA | 1
Albanian | sq-AL | 1
Amharic | am-ET | 1
Arabic | ar-SA | 1
Armenian | hy-AM | 1
Assamese - INSCRIPT | as-IN | 1
Azerbaijani (Cyrillic) | az-Cyrl-AZ | 1
Azerbaijani (Latin) | az-Latn-AZ | 1
Bangla (Bangladesh) - 49 key | bn-BD | 1
Bangla (India) - INSCRIPT |bn-IN|1
Bangla (India) - Phonetic|bn-IN|2
Bashkir|ba-RU|1
Basque|eu-ES|1
Belarusian|be-BY|1
Bosnian (Cyrillic)|bs-Cyrl-BA|1
Bosnian (Latin)|bs-Latn-BA|1
Bulgarian|bg-BG|1
Catalan|ca-ES|1
Central Kurdish|ku-Arab-IQ|1
Cherokee|chr-Cher-US|1
Chinese Simplified QWERTY|zh-CN|1
Chinese Simplified - 12-key|zh-CN|2
Chinese Simplified - Handwriting|zh-CN|3
Chinese Simplified - Stroke|zh-CN|4
Chinese Traditional (Hong Kong SAR) - Cangjie|zh-HK|1
Chinese Traditional (Hong Kong SAR) - Quick|zh-HK|2
Chinese Traditional (Hong Kong SAR) - Stroke|zh-HK|3
Chinese Traditional (Taiwan) - BoPoMoFo|zh-TW|1
Chinese Traditional (Taiwan) - Handwriting|zh-TW|2
Croatian|hr-HR|1
Czech|cs-CZ|1
Danish|da-DK|1
Divehi|dv-MV|1
Dutch (Belgium)|nl-BE|1
Dutch (Netherlands)|nl-NL|1
Dzongkha|dz-BT|1
English (Australia)|en-AU|1
English (Canada)|en-CA|1
English (India)|en-IN|1
English (Ireland)|en-IE|1
English (United Kingdom)|en-GB|1
English (United States)|en-US|1
Estonian|et-EE|1
Faroese|fo-FO|1
Filipino|fil-PH|1
Finnish|fi-FI|1
French (Belgium)|fr-BE|1
French (Canada)|fr-CA|1
French (France)|fr-FR|1
French (Switzerland)|fr-CH|1
Galician|gl-ES|1
Georgian|ka-GE|1
German (Germany)|de-DE|1
German (Switzerland)|de-CH|1
Greek|el-GR|1
Greenlandic|kl-GL|1
Guarani|gn-PY|1
Gujarati - INSCRIPT|gu-IN|1
Gujarati - Phonetic|gu-IN|2
Hausa|ha-Latn-NG|1
Hebrew|he-IL|1
Hindi - 37-key|hi-IN|1
Hindi - INSCRIPT|hi-IN|3
Hindi - Phonetic|hi-IN|2
Hinglish|hi-Latn|1
Hungarian|hu-HU|1
Icelandic|is-IS|1
Igbo|ig-NG|1
Indonesian|id-ID|1
Inuktitut - Latin|iu-Latn-CA|1
Irish|ga-IE|1
Italian|it-IT|1
Japanese - 12-key|ja-JP|1
Japanese - QWERTY|ja-JP|2
Kannada - INSCRIPT|kn-IN|1
Kannada - Phonetic|kn-IN|2
Kazakh|kk-KZ|1
Khmer|km-KH|1
Kinyarwanda|rw-RW|1
Kiswahili|sw-KE|1
Konkani|kok-IN|1
Korean - 12-key Chunjiin|ko-KR|2
Korean - 12-key Naratgeul|ko-KR|3
Korean - 12-key Sky|ko-KR|4
Korean - QWERTY|ko-KR|1
Kyrgyz|ky-KG|1
Lao|lo-LA|1
Latvian|lv-LV|1
Lithuanian|lt-LT|1
Luxembourgish|lb-LU|1
Macedonian|mk-MK|1
Malay (Brunei Darussalam)|ms-BN|1
Malay (Malaysia)|ms-MY|1
Malayalam - INSCRIPT|ml-IN|1
Malayalam - Phonetic|ml-IN|2
Maltese|mt-MT|1
Maori|mi-NZ|1
Marathi - INSCRIPT|mr-IN|1
Marathi - Phonetic|mr-IN|2
Mongolian - Cyrillic|mn-MN|1
Mongolian - Traditional Mongolian|mn-Mong-CN|1
Myanmar|my-MM|1
Nepali|ne-NP|1
Norwegian - Bokmal|nb-NO|1
Norwegian - Nynorsk|ny-NO|1
Odia - INSCRIPT|or-IN|1
Odia - Phonetic|or-IN|2
Pashto|ps-AF|1
Persian|fa-IR|1
Polish|pl-PL|1
Portuguese (Brazil)|pt-BR|1
Portuguese (Portugal)|pt-PT|1
Punjabi - INSCRIPT|pa-IN|1
Punjabi - Phonetic|pa-IN|2
Romanian|ro-RO|1
Romansh|rm-CH|1
Russian|ru-RU|1
Sakha|sah-RU|1
Sami, Northern (Norway)|se-NO|1
Sami, Northern (Sweden)|se-NO|1
Scottish Gaelic|gd-GB|1
Serbian - Cyrillic|sr-Cyrl-RS|1
Serbian - Latin|sr-Latn-RS|1
Sesotho sa Leboa|nso-ZA|1
Setswana|tn-ZA|1
Sinhala|si-LK|1
Slovak|sk-SK|1
Slovenian|sl-SI|1
Sorbian, Upper|hsb-DE|1
Spanish (Mexico)|es-MX|1
Spanish (Spain)|es-ES|1
Swedish|sv-SE|1
Syriac|syr-SY|1
Tajik|tg-Cyrl-TJ|1
Tamazight (Central Atlas) - Tifinagh|tzm-Tfng-MA|1
Tamazight (Central Atlas) - Latin|tzm-Latn-DZ|1
Tamil - INSCRIPT|ta-IN|1
Tamil - Phonetic|ta-IN|2
Tatar|tt-RU|1
Telugu - INSCRIPT|te-IN|1
Telugu - Phonetic|te-IN|2
Thai|th-TH|1
Tibetan|bo-CN|1
Turkish|tr-TR|1
Turkmen|tk-TM|1
Ukrainian|uk-UA|1
Urdu|ur-PK|1
Uyghur|ug-CN|1
Uzbek - Cyrillic|uz-Cyrl-UZ|1
Uzbek - Latin|uz-Latn-UZ|1
Valencian|ca-ES-valencia|1
Vietnamese - QWERTY|vi-VN|1
Vietnamese - TELEX|vi-VN|2
Vietnamese - VNI|vi-VN|3
Welsh|cy-GB|1
Wolof|N/A|1
Xhosa|xh-ZA|1
Yoruba|yo-NG|1
Zulu|zu-ZA|1
 
