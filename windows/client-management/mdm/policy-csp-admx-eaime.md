---
title: Policy CSP - ADMX_EAIME
description: Policy CSP - ADMX_EAIME
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 11/19/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_EAIME
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_EAIME policies  

<dl>
  <dd>
    <a href="#admx-eaime-l-donotincludenonpublishingstandardglyphinthecandidatelist">ADMX_EAIME/L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList</a>
  </dd>
  <dd>
    <a href="#admx-eaime-l-restrictcharactercoderangeofconversion">ADMX_EAIME/L_RestrictCharacterCodeRangeOfConversion</a>
  </dd>
  <dd>
    <a href="#admx-eaime-l-turnoffcustomdictionary">ADMX_EAIME/L_TurnOffCustomDictionary</a>
  </dd>
  <dd>
    <a href="#admx-eaime-l-turnoffhistorybasedpredictiveinput">ADMX_EAIME/L_TurnOffHistorybasedPredictiveInput</a>
  </dd>
  <dd>
    <a href="#admx-eaime-l-turnoffinternetsearchintegration">ADMX_EAIME/L_TurnOffInternetSearchIntegration</a>
  </dd>
  <dd>
    <a href="#admx-eaime-l-turnoffopenextendeddictionary">ADMX_EAIME/L_TurnOffOpenExtendedDictionary</a>
  </dd>
  <dd>
    <a href="#admx-eaime-l-turnoffsavingautotuningdatatofile">ADMX_EAIME/L_TurnOffSavingAutoTuningDataToFile</a>
  </dd>
  <dd>
    <a href="#admx-eaime-l-turnoncloudcandidate">ADMX_EAIME/L_TurnOnCloudCandidate</a>
  </dd>
  <dd>
    <a href="#admx-eaime-l-turnoncloudcandidatechs">ADMX_EAIME/L_TurnOnCloudCandidateCHS</a>
  </dd>
  <dd>
    <a href="#admx-eaime-l-turnonlexiconupdate">ADMX_EAIME/L_TurnOnLexiconUpdate</a>
  </dd>
  <dd>
    <a href="#admx-eaime-l-turnonlivestickers">ADMX_EAIME/L_TurnOnLiveStickers</a>
  </dd>
  <dd>
    <a href="#admx-eaime-l-turnonmisconversionloggingformisconversionreport">ADMX_EAIME/L_TurnOnMisconversionLoggingForMisconversionReport</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-eaime-l-donotincludenonpublishingstandardglyphinthecandidatelist"></a>**ADMX_EAIME/L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to include the Non-Publishing Standard Glyph in the candidate list when Publishing Standard Glyph for the word exists.

If you enable this policy setting, Non-Publishing Standard Glyph is not included in the candidate list when Publishing Standard Glyph for the word exists.

If you disable or do not configure this policy setting, both Publishing Standard Glyph and Non-Publishing Standard Glyph are included in the candidate list.

This policy setting applies to Japanese Microsoft IME only.

> [!NOTE]
> Changes to this setting will not take effect until the user logs off.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not include Non-Publishing Standard Glyph in the candidate list*
-   GP name: *L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList*
-   GP path: *Windows Components\IME*
-   GP ADMX file name: *EAIME.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eaime-l-restrictcharactercoderangeofconversion"></a>**ADMX_EAIME/L_RestrictCharacterCodeRangeOfConversion**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to restrict character code range of conversion by setting character filter.

If you enable this policy setting, then only the character code ranges specified by this policy setting are used for conversion of IME.  You can specify multiple ranges by setting a value combined with a bitwise OR of following values:

- 0x0001 // JIS208 area
- 0x0002 // NEC special char code
- 0x0004 // NEC selected IBM extended code
- 0x0008 // IBM extended code
- 0x0010 // Half width katakana code
- 0x0100 // EUDC(GAIJI)
- 0x0200 // S-JIS unmapped area
- 0x0400 // Unicode char
- 0x0800 // surrogate char
- 0x1000 // IVS char
- 0xFFFF // no definition.

If you disable or do not configure this policy setting, no range of characters are filtered by default.

This policy setting applies to Japanese Microsoft IME only.

> [!NOTE]
> Changes to this setting will not take effect until the user logs off.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Restrict character code range of conversion*
-   GP name: *L_RestrictCharacterCodeRangeOfConversion*
-   GP path: *Windows Components\IME*
-   GP ADMX file name: *EAIME.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eaime-l-turnoffcustomdictionary"></a>**ADMX_EAIME/L_TurnOffCustomDictionary**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to turn off the ability to use a custom dictionary.

If you enable this policy setting, you cannot add, edit, and delete words in the custom dictionary either with GUI tools or APIs. A word registered in the custom dictionary before enabling this policy setting can continue to be used for conversion.

If you disable or do not configure this policy setting, the custom dictionary can be used by default.

For Japanese Microsoft IME, [Clear auto-tuning information] works, even if this policy setting is enabled, and it clears self-tuned words from the custom dictionary.

This policy setting is applied to Japanese Microsoft IME.

> [!NOTE]
> Changes to this setting will not take effect until the user logs off.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off custom dictionary*
-   GP name: *L_TurnOffCustomDictionary*
-   GP path: *Windows Components\IME*
-   GP ADMX file name: *EAIME.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eaime-l-turnoffhistorybasedpredictiveinput"></a>**ADMX_EAIME/L_TurnOffHistorybasedPredictiveInput**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to turn off history-based predictive input.

If you enable this policy setting, history-based predictive input is turned off.

If you disable or do not configure this policy setting, history-based predictive input is on by default.

This policy setting applies to Japanese Microsoft IME only.

> [!NOTE]
> Changes to this setting will not take effect until the user logs off.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off history-based predictive input*
-   GP name: *L_TurnOffHistorybasedPredictiveInput*
-   GP path: *Windows Components\IME*
-   GP ADMX file name: *EAIME.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eaime-l-turnoffinternetsearchintegration"></a>**ADMX_EAIME/L_TurnOffInternetSearchIntegration**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to turn off Internet search integration.

Search integration includes both using Search Provider (Japanese Microsoft IME) and performing Bing search from predictive input for Japanese Microsoft IME.

If you enable this policy setting, you cannot use search integration.

If you disable or do not configure this policy setting, the search integration function can be used by default.

This policy setting applies to Japanese Microsoft IME.

> [!NOTE]
> Changes to this setting will not take effect until the user logs off.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Internet search integration*
-   GP name: *L_TurnOffInternetSearchIntegration*
-   GP path: *Windows Components\IME*
-   GP ADMX file name: *EAIME.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eaime-l-turnoffopenextendeddictionary"></a>**ADMX_EAIME/L_TurnOffOpenExtendedDictionary**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to turn off Open Extended Dictionary.

If you enable this policy setting, Open Extended Dictionary is turned off. You cannot add a new Open Extended Dictionary.

For Japanese Microsoft IME, an Open Extended Dictionary that is added before enabling this policy setting is not used for conversion.

If you disable or do not configure this policy setting, Open Extended Dictionary can be added and used by default.

This policy setting is applied to Japanese Microsoft IME.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Open Extended Dictionary*
-   GP name: *L_TurnOffOpenExtendedDictionary*
-   GP path: *Windows Components\IME*
-   GP ADMX file name: *EAIME.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eaime-l-turnoffsavingautotuningdatatofile"></a>**ADMX_EAIME/L_TurnOffSavingAutoTuningDataToFile**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to turn off saving the auto-tuning result to file.

If you enable this policy setting, the auto-tuning data is not saved to file.

If you disable or do not configure this policy setting, auto-tuning data is saved to file by default.

This policy setting applies to Japanese Microsoft IME only.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off saving auto-tuning data to file*
-   GP name: *L_TurnOffSavingAutoTuningDataToFile*
-   GP path: *Windows Components\IME*
-   GP ADMX file name: *EAIME.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eaime-l-turnoncloudcandidate"></a>**ADMX_EAIME/L_TurnOnCloudCandidate**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls the cloud candidates feature, which uses an online service to provide input suggestions that don't exist in a PC's local dictionary.

If you enable this policy setting, the functionality associated with this feature is turned on, the user's keyboard input is sent to Microsoft to generate the suggestions, and the user won't be able to turn it off.

If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.

If you don't configure this policy setting, it will be turned off by default, and the user can turn on and turn off the cloud candidates feature.

This Policy setting applies to Microsoft CHS Pinyin IME and JPN IME.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on cloud candidate*
-   GP name: *L_TurnOnCloudCandidate*
-   GP path: *Windows Components\IME*
-   GP ADMX file name: *EAIME.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eaime-l-turnoncloudcandidatechs"></a>**ADMX_EAIME/L_TurnOnCloudCandidateCHS**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls the cloud candidates feature, which uses an online service to provide input suggestions that don't exist in a PC's local dictionary.

If you enable this policy setting, the functionality associated with this feature is turned on, the user's keyboard input is sent to Microsoft to generate the suggestions, and the user won't be able to turn it off.

If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.

If you don't configure this policy setting, it will be turned off by default, and the user can turn on and turn off the cloud candidates feature.

This Policy setting applies only to Microsoft CHS Pinyin IME.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on cloud candidate for CHS*
-   GP name: *L_TurnOnCloudCandidateCHS*
-   GP path: *Windows Components\IME*
-   GP ADMX file name: *EAIME.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eaime-l-turnonlexiconupdate"></a>**ADMX_EAIME/L_TurnOnLexiconUpdate**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls the lexicon update feature, which downloads hot and popular words lexicon to local PC.

If you enable this policy setting, the functionality associated with this feature is turned on, hot and popular words lexicon can be downloaded to local PC, the user is able to turn it on or off in settings.

If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.

If you don't configure this policy setting, it will be turned on by default, and the user can turn on and turn off the lexicon update feature.

This Policy setting applies only to Microsoft CHS Pinyin IME.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on lexicon update*
-   GP name: *L_TurnOnLexiconUpdate*
-   GP path: *Windows Components\IME*
-   GP ADMX file name: *EAIME.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eaime-l-turnonlivestickers"></a>**ADMX_EAIME/L_TurnOnLiveStickers**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls the live sticker feature, which uses an online service to provide stickers online.

If you enable this policy setting, the functionality associated with this feature is turned on, the user's keyboard input is sent to Microsoft to generate the live stickers, and the user won't be able to turn it off.

If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.

If you don't configure this policy setting, it will be turned off by default, and the user can turn on and turn off the live sticker feature.

This Policy setting applies only to Microsoft CHS Pinyin IME.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on Live Sticker*
-   GP name: *L_TurnOnLiveStickers*
-   GP path: *Windows Components\IME*
-   GP ADMX file name: *EAIME.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eaime-l-turnonmisconversionloggingformisconversionreport"></a>**ADMX_EAIME/L_TurnOnMisconversionLoggingForMisconversionReport**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to turn on logging of misconversion for the misconversion report.

If you enable this policy setting, misconversion logging is turned on.

If you disable or do not configure this policy setting, misconversion logging is turned off.

This policy setting applies to Japanese Microsoft IME and Traditional Chinese IME.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn on misconversion logging for misconversion report*
-   GP name: *L_TurnOnMisconversionLoggingForMisconversionReport*
-   GP path: *Windows Components\IME*
-   GP ADMX file name: *EAIME.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.
<!--/Policies-->

