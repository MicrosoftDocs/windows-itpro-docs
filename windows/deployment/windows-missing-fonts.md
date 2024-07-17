---
title: How to add fonts missing after upgrading Windows
description: Some of the fonts are missing from the system after upgrading Windows.
ms.service: windows-client
ms.localizationpriority: medium
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.topic: conceptual
ms.date: 03/28/2024
ms.subservice: itpro-deploy
zone_pivot_groups: windows-versions-11-10
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# How to add fonts that are missing after upgrading Windows

<!-- OSADO-45535220 -->

When Windows is upgraded from older versions of Windows to currently supported versions of Windows, previously available fonts might no longer be available post-upgrade. Many of the fonts that were previously shipped with Windows were moved to the optional features of Windows to:

- Reduce the operating system footprint.
- Improve performance.
- Optimize disk space usage.

 In the following instances:

- A fresh instance of Windows is installed
- Windows is upgraded from an older version of Windows

optional fonts aren't enabled by default. As a result, these fonts are missing from the system. If documents were created using the missing fonts, these documents might display differently in the updated version of Windows.

For example, if an English, French, German, or Spanish version of Windows is installed, fonts such as the following are missing:

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

If these fonts are needed, you can add them back to your system via optional features. The removal of these fonts is a permanent change in behavior for Windows, and it will remain this way in future releases.

## Adding language-associated features via language settings

If fonts associated with a language are needed across the system, then that language should be added to the user profile followed by switching to that language. For example, the fonts are needed to:

- View web pages.
- Edit documents.
- Use apps in that language.

Adding a language and then switching to it can be done via the **Settings** app.

::: zone pivot="windows-11"

To add the fonts associated with a language and then switch to that language, first open the **Language & region** pane in the **Settings** app by selecting the following link:

> [!div class="nextstepaction"]
> [Language & region](ms-settings:regionlanguage)

::: zone-end

::: zone pivot="windows-10"

To add the fonts associated with a language and then switch to that language, first open the **Language** pane in the **Settings** app by selecting the following link:

> [!div class="nextstepaction"]
> [Language](ms-settings:regionlanguage)

::: zone-end

or

1. Right-click on the **Start** menu and select **Run**.

1. In the **Run** window, next to **Open:**, enter:

   ```console
   ms-settings:regionlanguage
   ```

   and then select **OK**.

or

::: zone pivot="windows-11"

1. Right-click on the **Start** menu and select **Settings**.

1. In the left hand pane of the Settings app, select **Time & language**.

1. In the right hand **Time & language** pane, select **Language & region**.

Once the **Time & language > Language & region** pane is open, add the fonts associated with a language and then switch to that language with the following steps:

1. Under the **Language** section:

    1. Drop down the menu next to **Windows display language** to show all of the languages currently added to the device.

    1. If the desired language isn't listed, add the fonts for the desired language by selecting the **Add a language** button next to **Preferred languages**.

    1. In the **Choose a language to install** window that opens:

        1. Find the desired language by scrolling through the list of languages. Alternatively, search for the desired language in the **Type a language name...** search box.

        1. Once the desired language is found, select the language, and then select the **Next** button.

        1. In the **Install language features** window, select the desired options for the language, and then select the **Install** button.

    1. The desired language should now be available in the drop-down menu next to **Windows display language**. Drop down the **Windows display language** menu and select the desired language.

    1. Below **Windows display language** the message **Windows needs to sign you out in order to apply your new display language.** is displayed. Select the **Sign out** button to finish applying the language including the additional language fonts.

::: zone-end

::: zone pivot="windows-10"

1. Right-click on the **Start** menu and select **Settings**.

1. In the Settings app, select **Time & Language**.

1. In the left hand pane, select **Language**.

Once the **Language** pane is open, add the fonts associated with a language and then switch to that language with the following steps:

1. Drop down the menu below **Windows display language** to show all of the languages currently added to the device.

1. If the desired language isn't listed, add the fonts for the desired language by selecting the **+** button next to **Add a language** in the **Preferred languages** section.

1. In the **Choose a language to install** window that opens:

    1. Find the desired language by scrolling through the list of languages. Alternatively, search for the desired language in the **Type a language name...** search box.

    1. Once the desired language is found, select the language, and then select the **Next** button.

    1. In the **Install language features** window, select the desired features for the language, and then select the **Install** button.

1. The desired language should now be available in the drop-down menu below **Windows display language**. Drop down the **Windows display language** menu and select the desired language.

1. The following message is displayed:

    > **Setting Windows display language**
    > **Windows needs to sign you out in order to fully apply the new language. Continue?**

    Select the **Yes, sign out now** button to finish applying the language including the additional language fonts.

::: zone-end

> [!IMPORTANT]
>
> Windows Update is used to add the language including the associated fonts. The device needs to be online so Windows Update can download the content that it needs to add.

## Add optional fonts manually without changing language settings

If fonts associated with a language are needed but aren't needed across the entire system, then that language should be added to the user profile as a supplemental font. Adding a font as a supplemental font doesn't require the user switch to that language. Adding a font as a supplemental font can be done via the **Settings** app.

To add supplemental fonts associated with a language while staying with the current language:

Open the **Optional features** pane in the **Settings** app by selecting the following link:

> [!div class="nextstepaction"]
> [Optional features](ms-settings:optionalfeatures)

or

1. Right-click on the **Start** menu and select **Run**.

1. In the **Run** window, next to **Open:**, enter:

   ```console
   ms-settings:optionalfeatures
   ```

   and then select **OK**.

or

::: zone pivot="windows-11"

1. Right-click on the **Start** menu and select **Settings**.

1. In the left hand pane of the Settings app, select **System**.

1. In the right hand **System** pane, select **Optional features**.

> [!NOTE]
>
> The navigation steps, UI elements, and UI text in this section are based on the latest version of Windows 11 with the latest cumulative update installed. For other versions of Windows 11 that are currently supported or don't have the latest cumulative update, some of the navigation steps, UI elements, and UI text might be different. For example, the [**Optional features**](ms-settings:optionalfeatures) pane might be located under **Settings** > **Apps**.

Once the **System > Optional features** pane is open, add a supplemental font with the following steps:

1. Select the **View features** button next to **Add an optional feature**.

1. In the **Add an optional feature** window that opens:

    1. Find the desired supplemental font to add and then select the box next to the supplemental font to add it. Multiple supplemental fonts can be selected.

    1. Once all of the desired supplemental fonts are selected, select the **Next** button.

    1. Review the selected list of features and then select the **Add** button to add the selected features.

::: zone-end

::: zone pivot="windows-10"

1. Right-click on the **Start** menu and select **Settings**.

1. In the Settings app, select **System**.

1. In the left hand pane, select **Optional features**.

> [!NOTE]
>
> The navigation steps, UI elements, and UI text in this section are based on Windows 10 22H2 with the latest cumulative update installed. For other versions of Windows 10 that are currently supported or don't have the latest cumulative update, some of the navigation steps, UI elements, and UI text might be different. For example, the [**Optional features**](ms-settings:optionalfeatures) pane might be located under **Settings** > **Apps** > **Apps & features**.

Once the **Optional features** pane is open, add a supplemental font with the following steps:

1. Select the **+** button next to **Add a feature**.

1. In the **Add an optional feature** window that opens:

    1. Find the desired supplemental font to add and then select the box next to the supplemental font to add it. Multiple supplemental fonts can be selected.

    1. Once all of the desired supplemental fonts are selected, select the **Add** button.

::: zone-end

> [!IMPORTANT]
>
> Windows Update is used to add the optional features including the supplemental fonts. The device needs to be online so Windows Update can download the content that it needs to add.

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

## Related content

- [Download the list of all available language FODs](https://download.microsoft.com/download/0/A/A/0AA4342D-3933-4216-A90D-3BA8392FB1D1/Windows%2010%201703%20FOD%20to%20LP%20Mapping%20Table.xlsx).
- [Features On Demand V2 (Capabilities)](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities#span-idrelatedtopicsspanrelated-topics).
- [Add Language Packs to Windows](/windows-hardware/manufacture/desktop/add-language-packs-to-windows).
