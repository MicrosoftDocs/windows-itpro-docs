---
title: How to install fonts missing after upgrading to Windows client
description: Some of the fonts are missing from the system after you upgrade to Windows client.
ms.service: windows-client
ms.localizationpriority: medium
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.topic: article
ms.date: 11/23/2022
ms.subservice: itpro-deploy
---
# How to install fonts that are missing after upgrading to Windows client

*Applies to:*

- Windows 10
- Windows 11

When you upgrade from the Windows 7, Windows 8, or Windows 8.1 operating system to Windows 10 or Windows 11, certain fonts are no longer available by default post-upgrade. To reduce the operating system footprint, improve performance, and optimize disk space usage, we moved many of the fonts that were previously shipped with prior versions of Windows to the optional features of Windows client. If you install a fresh instance of Windows client, or upgrade an older version of Windows to Windows client, these optional features aren't enabled by default. As a result, these fonts appear to be missing from the system.

If you have documents created using the missing fonts, these documents might display differently on Windows client.

For example, if you've an English, French, German, or Spanish version of Windows 10 installed, you might notice that fonts such as the following are appear to be missing:

- `Gautami`
- `Meiryo`
- `Narkism/Batang`
- `BatangChe`
- `Dotum`
- `DotumChe`
- `Gulim`
- `GulimChe`
- `Gungsuh`
- `GungsuhChe`

If you want to use these fonts, you can enable the optional feature to add them back to your system. The removal of these fonts is a permanent change in behavior for Windows client, and it will remain this way in future releases.

## Installing language-associated features via language settings

If you want to use the fonts from the optional feature and you know that you'll want to view Web pages, edit documents, or use apps in the language associated with that feature, add that language into your user profile. Use the Settings app.

For example, here are the steps to install the fonts associated with the Hebrew language:

1. Select **Start > Settings**.

2. For Windows 10, in **Settings**, select **Time & language**, and then select **Region & language**.

   For Windows 11, in **Settings**, select **Time & language**, and then select **Language & Region**.

3. If Hebrew isn't included in the list of languages, select the plus sign (**+**) to add a language.

4. Find **Hebrew**, and then select it to add it to your language list.

Once you've added Hebrew to your language list, then the optional Hebrew font feature and other optional features for Hebrew language support are installed. This process should only take a few minutes.

> [!NOTE]
> The optional features are installed by Windows Update. You need to be online for the Windows Update service to work.

## Install optional fonts manually without changing language settings

If you want to use fonts in an optional feature but don't need to search web pages, edit documents, or use apps in the associated language, you can install the optional font features manually without changing your language settings.

For example, here are the steps to install the fonts associated with the Hebrew language without adding the Hebrew language itself to your language preferences:

1. Select **Start > Settings**.

2. In **Settings**, select **Apps**, select **Apps & features**, and then select **Manage optional features**.

3. If you don't see **Hebrew Supplemental Fonts** in the list of installed features, select the plus sign (**+**) to add a feature.

4. Select **Hebrew Supplemental Fonts** in the list, and then select **Install**.

> [!NOTE]
> The optional features are installed by Windows Update. You need to be online for the Windows Update service to work.

## Fonts included in optional font features

Here's a comprehensive list of the font families in each of the optional features. Some font families might include multiple fonts for different weights and styles.

- Arabic Script Supplemental Fonts: `Aldhabi, Andalus, Arabic Typesetting, Microsoft Uighur, Sakkal Majalla, Simplified Arabic, Traditional Arabic, Urdu Typesetting`
- Bangla Script Supplemental Fonts: `Shonar Bangla, Vrinda`
- Canadian Aboriginal Syllabics Supplemental Fonts: `Euphemia`
- Cherokee Supplemental Fonts: `Plantagenet Cherokee`
- Chinese (Simplified) Supplemental Fonts: `DengXian, FangSong, KaiTi, SimHei`
- Chinese (Traditional) Supplemental Fonts: `DFKai-SB, MingLiU, MingLiU_HKSCS, PMingLiU`
- Devanagari Supplemental Fonts: `Aparajita, Kokila, Mangal, Sanskrit Text, Utsaah`
- Ethiopic Supplemental Fonts: `Nyala`
- Gujarati Supplemental Fonts: `Shruti`
- Gurmukhi Supplemental Fonts: `Raavi`
- Hebrew Supplemental Fonts: `Aharoni Bold, David, FrankRuehl, Gisha, Levanim MT, Miriam, Miriam Fixed, Narkism, Rod`
- Japanese Supplemental Fonts: `Meiryo, Meiryo UI, MS Gothic, MS PGothic, MS UI Gothic, MS Mincho, MS PMincho, Yu Mincho`
- Kannada Supplemental Fonts: `Tunga`
- Khmer Supplemental Fonts: `DaunPenh, Khmer UI, MoolBoran`
- Korean Supplemental Fonts: `Batang, BatangChe, Dotum, DotumChe, Gulim, GulimChe, Gungsuh, GungsuhChe`
- Lao Supplemental Fonts: `DokChampa, Lao UI`
- Malayalam Supplemental Fonts: `Karthika`
- Odia Supplemental Fonts: `Kalinga`
- Pan-European Supplemental Fonts: `Arial Nova, Georgia Pro, Gill Sans Nova, Neue Haas Grotesk, Rockwell Nova, Verdana Pro`
- Sinhala Supplemental Fonts: `Iskoola Pota`
- Syriac Supplemental Fonts: `Estrangelo Edessa`
- Tamil Supplemental Fonts: `Latha, Vijaya`
- Telugu Supplemental Fonts: `Gautami, Vani`
- Thai Supplemental Fonts: `Angsana New, AngsanaUPC, Browallia New, BrowalliaUPC, Cordia New, CordiaUPC, DilleniaUPC, EucrosiaUPC, FreesiaUPC, IrisUPC, JasmineUPC, KodchiangUPC, Leelawadee, LilyUPC`

## Related articles

[Download the list of all available language FODs](https://download.microsoft.com/download/0/A/A/0AA4342D-3933-4216-A90D-3BA8392FB1D1/Windows%2010%201703%20FOD%20to%20LP%20Mapping%20Table.xlsx)

[Features On Demand V2 (Capabilities)](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities#span-idrelatedtopicsspanrelated-topics)

[Add Language Packs to Windows](/windows-hardware/manufacture/desktop/add-language-packs-to-windows)
