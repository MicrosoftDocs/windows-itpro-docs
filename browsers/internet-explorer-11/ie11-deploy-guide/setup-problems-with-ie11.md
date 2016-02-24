---
Description: Setup problems with Internet Explorer 11
MS-HAID: 'p\_ie11deploy.setup\_problems\_with\_internet\_explorer\_11'
MSHAttr: 'PreferredLib:/library'
title: Setup problems with Internet Explorer 11 (Internet Explorer 11 for IT Pros)
---

# Setup problems with Internet Explorer 11


Installing Internet Explorer creates the following log files, which are stored in the Windows installation folder (typically, the C:\\Windows folder):

-   IE11\_main.log

-   IE11\_NR\_Setup.log

-   IE11\_uninst.log

-   cbs\*.log

-   WU\_ IE11\_LangPacks.log

These log files continuously record the entire process from the moment the IE setup program starts running until the last .cab file is downloaded, including error codes. The possible error codes are:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Error Code</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>Success</p></td>
</tr>
<tr class="even">
<td align="left"><p>1460</p></td>
<td align="left"><p>Timeout</p></td>
</tr>
<tr class="odd">
<td align="left"><p>3010</p></td>
<td align="left"><p>Success, reboot required</p></td>
</tr>
<tr class="even">
<td align="left"><p>40001</p></td>
<td align="left"><p>USER_ERROR_CANNOT_OPEN_LOG_FILE</p></td>
</tr>
<tr class="odd">
<td align="left"><p>40003</p></td>
<td align="left"><p>USER_ERROR_CANNOT_INITIALIZE_APPLICATION</p></td>
</tr>
<tr class="even">
<td align="left"><p>40004</p></td>
<td align="left"><p>USER_ERROR_OLD_OS_VERSION</p></td>
</tr>
<tr class="odd">
<td align="left"><p>40005</p></td>
<td align="left"><p>USER_ERROR_WRONG_PLATFORM</p></td>
</tr>
<tr class="even">
<td align="left"><p>40006</p></td>
<td align="left"><p>USER_ERROR_BAD_SPVERSION</p></td>
</tr>
<tr class="odd">
<td align="left"><p>40007</p></td>
<td align="left"><p>USER_ERROR_MISSING_REQUIRED_PREREQUISITE</p></td>
</tr>
<tr class="even">
<td align="left"><p>40008</p></td>
<td align="left"><p>USER_ERROR_IE_GREATERVERSION_INSTALLED</p></td>
</tr>
<tr class="odd">
<td align="left"><p>40010</p></td>
<td align="left"><p>USER_ERROR_BAD_LANGUAGE</p></td>
</tr>
<tr class="even">
<td align="left"><p>40012</p></td>
<td align="left"><p>USER_ERROR_CRYPTO_VALIDATION_FAILED</p></td>
</tr>
<tr class="odd">
<td align="left"><p>40013</p></td>
<td align="left"><p>USER_ERROR_ALREADY_INSTALLED</p></td>
</tr>
<tr class="even">
<td align="left"><p>40015</p></td>
<td align="left"><p>USER_ERROR_WRONG_OS</p></td>
</tr>
<tr class="odd">
<td align="left"><p>40016</p></td>
<td align="left"><p>USER_ERROR_EXTRACTION_FAILED</p></td>
</tr>
<tr class="even">
<td align="left"><p>40019</p></td>
<td align="left"><p>USER_ERROR_WINDOWS_PRERELEASE_NOT_SUPPORTED</p></td>
</tr>
<tr class="odd">
<td align="left"><p>40021</p></td>
<td align="left"><p>USER_ERROR_UNSUPPORTED_VIDEO_HARDWARE</p></td>
</tr>
<tr class="even">
<td align="left"><p>40022</p></td>
<td align="left"><p>USER_ERROR_UNSUPPORTED_VIDEO_DRIVER</p></td>
</tr>
<tr class="odd">
<td align="left"><p>40023</p></td>
<td align="left"><p>USER_ERROR_PREREQUISITE_INSTALL_FAILED</p></td>
</tr>
<tr class="even">
<td align="left"><p>40024</p></td>
<td align="left"><p>USER_ERROR_NEUTRAL_CAB_DOWNLOAD_FAILED</p></td>
</tr>
<tr class="odd">
<td align="left"><p>40025</p></td>
<td align="left"><p>USER_ERROR_NEUTRAL_CAB_INSTALL_FAILED</p></td>
</tr>
<tr class="even">
<td align="left"><p>41001</p></td>
<td align="left"><p>USER_ERROR_UNKNOWN</p></td>
</tr>
<tr class="odd">
<td align="left"><p>50005</p></td>
<td align="left"><p>USER_SUCCESS_USER_CANCELLED</p></td>
</tr>
</tbody>
</table>

 

 

 



