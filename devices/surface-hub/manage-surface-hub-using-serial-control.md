---
title: Using a room control system
description: Room control systems can be used with your Microsoft Surface Hub.
MSHAttr: PreferredLib /library
ms.assetid: DC365002-6B35-45C5-A2B8-3E1EB0CB8B50
keywords: ["room control system", "Surface Hub"]
author: TrudyHa
---

# Using a room control system


Room control systems can be used with your Microsoft Surface Hub.

Using a room control system with your Surface Hub involves connecting room control hardware to the Surface Hub, usually through the RJ11 serial port on the bottom of the Surface Hub.

## Debugging


You can use the info in this section for debugging scenarios. You shouldn't need it for a typical installation.

### Terminal settings

To connect to a room control system control panel, you don't need to connect to the Surface Hub, or to configure any terminal settings. For debugging purposes, if you want to connect a PC or laptop to your Surface Hub and send commands from the Surface Hub, you can use a terminal emulator program like Tera Term or PuTTY. These are the terminal settings you'll need:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Baud rate</p></td>
<td align="left"><p>115200</p></td>
</tr>
<tr class="even">
<td align="left"><p>Data bits</p></td>
<td align="left"><p>8</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stop bits</p></td>
<td align="left"><p>1</p></td>
</tr>
<tr class="even">
<td align="left"><p>Parity</p></td>
<td align="left"><p>none</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Flow control</p></td>
<td align="left"><p>none</p></td>
</tr>
</tbody>
</table>

 

### Wiring diagram

You can use a standard RJ-11 (6P6C) connector to connect the Surface Hub serial port to a room control system. This is the recommended method.

You can also use an RJ-11 4-conductor cable, but we do not recommend this method. You'll need to convert pin numbers to make sure it's wired correctly. The following diagram shows how to convert the pin numbers.

![image showing the wiring diagram. ](images/roomcontrolwiring.png)

### Command sets

Room control systems use common meeting-room scenarios for commands. Commands originate from the room control system, and are communicated over a serial connection to a Surface Hub. Commands are ASCII based, and the Surface Hub will acknowledge when state changes occur.

The following command modifiers are available. Commands terminate with a new line character (/n). Responses can come at any time in response to state changes not triggered directly by a management port command.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Modifier</th>
<th align="left">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>+</p></td>
<td align="left"><p>Increment a value</p></td>
</tr>
<tr class="even">
<td align="left"><p>-</p></td>
<td align="left"><p>Decrease a value</p></td>
</tr>
<tr class="odd">
<td align="left"><p>=</p></td>
<td align="left"><p>Set a discrete value</p></td>
</tr>
<tr class="even">
<td align="left"><p>?</p></td>
<td align="left"><p>Queries for a current value</p></td>
</tr>
</tbody>
</table>

 

### Power

Surface Hub can be in one of these power states.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">State</th>
<th align="left">Energy Star state</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>S5</p></td>
<td align="left"><p>Off</p></td>
</tr>
<tr class="even">
<td align="left"><p>1</p></td>
<td align="left"><p>-</p></td>
<td align="left"><p>Power up (indeterminate)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>2</p></td>
<td align="left"><p>S3</p></td>
<td align="left"><p>Sleep</p></td>
</tr>
<tr class="even">
<td align="left"><p>3</p></td>
<td align="left"><p>S0</p></td>
<td align="left"><p>Resting</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4</p></td>
<td align="left"><p>S0</p></td>
<td align="left"><p>Ambient</p></td>
</tr>
<tr class="even">
<td align="left"><p>5</p></td>
<td align="left"><p>S0</p></td>
<td align="left"><p>Ready</p></td>
</tr>
</tbody>
</table>

 

### Brightness

The current brightness level is a range from 0 to 100.

Changes to brightness levels can be sent by a room control system, or other system.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command</th>
<th align="left">State change</th>
<th align="left">Response</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Brightness+</p></td>
<td align="left"><p>System management controller (SMC) sends the brightness up command.</p>
<p>PC service on the room control system notifies SMC of new brightness level.</p></td>
<td align="left"><p>Brightness = 51</p></td>
</tr>
<tr class="even">
<td align="left"><p>Brightness-</p></td>
<td align="left"><p>SMC sends the brightness down command.</p>
<p>PC service notifies SMC of new brightness level.</p></td>
<td align="left"><p>Brightness = 50</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Brightness?</p></td>
<td align="left"><p>SMC sends a message over the control channel to request brightness.</p>
<p>PC service notifies SMC of new brightness level.</p></td>
<td align="left"><p>Brightness = 50</p></td>
</tr>
</tbody>
</table>

 

### Volume

The current volume level is a range from 0 to 100.

Changes to volume levels can be sent by a room control system, or other system.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command</th>
<th align="left">State change</th>
<th align="left">Response</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Volume+</p></td>
<td align="left"><p>SMC sends the volume up command.</p>
<p>PC service notifies SMC of new volume level.</p></td>
<td align="left"><p>Volume = 51</p></td>
</tr>
<tr class="even">
<td align="left"><p>Volume-</p></td>
<td align="left"><p>SMC sends the volume down command.</p>
<p>PC service notifies SMC of new volume level.</p></td>
<td align="left"><p>Volume = 50</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Volume?</p></td>
<td align="left"><p>SMC sends a message over the control channel to request volume.</p>
<p>PC service notifies SMC of new volume level.</p></td>
<td align="left"><p>Volume = 50</p></td>
</tr>
</tbody>
</table>

 

### Mute for audio and microphone

Audio and microphone can be muted.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">State</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>Source is not muted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>1</p></td>
<td align="left"><p>Source is muted.</p></td>
</tr>
</tbody>
</table>

 

Changes to microphone or audio can be sent by a room control system, or other system.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command</th>
<th align="left">State change</th>
<th align="left">Response</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>AudioMute+</p></td>
<td align="left"><p>SMC sends the audio mute command.</p>
<p>PC service notifies SMC that audio is muted.</p></td>
<td align="left"><p>AudioMute=&lt;#&gt;</p></td>
</tr>
<tr class="even">
<td align="left"><p>MicMute+</p></td>
<td align="left"><p>SMC sends the microphone mute command.</p>
<p>PC service notifies SMC that microphone is muted.</p></td>
<td align="left"><p>MicMute=&lt;#&gt;</p></td>
</tr>
<tr class="odd">
<td align="left"><p>AudioMute?</p></td>
<td align="left"><p>SMC queries PC service for the current audio state.</p>
<p>PC service notifies SMC that audio is muted.</p></td>
<td align="left"><p>AudioMute=&lt;#&gt;</p></td>
</tr>
<tr class="even">
<td align="left"><p>MicMute?</p></td>
<td align="left"><p>SMC queries PC service for the current microphone state.</p>
<p>PC service notifies SMC that the microphone is muted.</p></td>
<td align="left"><p>MicMute=&lt;#&gt;</p></td>
</tr>
</tbody>
</table>

 

### Video source

Several display sources can be used.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">State</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>Onboard PC</p></td>
</tr>
<tr class="even">
<td align="left"><p>1</p></td>
<td align="left"><p>DisplayPort</p></td>
</tr>
<tr class="odd">
<td align="left"><p>2</p></td>
<td align="left"><p>HDMI</p></td>
</tr>
<tr class="even">
<td align="left"><p>3</p></td>
<td align="left"><p>VGA</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4</p></td>
<td align="left"><p>Wireless</p></td>
</tr>
</tbody>
</table>

 

Changes to display source can be sent by a room control system, or other system.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command</th>
<th align="left">State change</th>
<th align="left">Response</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Source=&lt;#&gt;</p></td>
<td align="left"><p>SMC changes to the desired source.</p>
<p>PC service notifies SMC that the display source has switched.</p></td>
<td align="left"><p>Source=&lt;#&gt;</p></td>
</tr>
<tr class="even">
<td align="left"><p>Source+</p></td>
<td align="left"><p>SMC cycles to the next active input source.</p>
<p>PC service notifies SMC of the current input source.</p></td>
<td align="left"><p>Source=&lt;#&gt;</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Source+</p></td>
<td align="left"><p>SMC cycles to the previous active input source.</p>
<p>PC service notifies SMC of the current input source.</p></td>
<td align="left"><p>Source=&lt;#&gt;</p></td>
</tr>
<tr class="even">
<td align="left"><p>Source?</p></td>
<td align="left"><p>SMC queries PC service for the active input source.</p>
<p>PC service notifies SMC of the current in;put source.</p></td>
<td align="left"><p>Source=&lt;#&gt;</p></td>
</tr>
</tbody>
</table>

 

### Starting apps

Surface Hub keyboard supports starting apps with special keys. Room control systems can invoke those keys through the management port. There is no expected response for these commands.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">State</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>Start large-screen experience (LSX)</p></td>
</tr>
<tr class="even">
<td align="left"><p>1</p></td>
<td align="left"><p>Start LSX custom app 1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>2</p></td>
<td align="left"><p>Start LSX custom app 2</p></td>
</tr>
<tr class="even">
<td align="left"><p>3</p></td>
<td align="left"><p>Start LSX custom app 3</p></td>
</tr>
</tbody>
</table>

 

Changes to display source can be sent by a room control system, or other system.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command</th>
<th align="left">State change</th>
<th align="left">Response</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>AppKey=&lt;#&gt;</p></td>
<td align="left"><p>Send a command to</p>
<p>PC service notifies SMC that the display source has switched.</p></td>
<td align="left"><p>Source=&lt;#&gt;</p></td>
</tr>
</tbody>
</table>

 

### I'm done

People will be able to start the I'm done feature on a Surface Hub from a room control system. I'm done removes any work that was displayed on the Surface Hub before ending the meeting. No information or files are saved on Surface Hub.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command</th>
<th align="left">State change</th>
<th align="left">Response</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>I'm done</p></td>
<td align="left"><p>Start I'm done activity on Surface Hub.</p></td>
<td align="left"><p>none</p></td>
</tr>
</tbody>
</table>

 

### Errors

Errors are returned following the format in this table.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Error</th>
<th align="left">Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Error: Unknown command '&lt;input&gt;'.</p></td>
<td align="left"><p>The instruction contains an unknown initial command. For example, &quot;VOL+&quot; would be invalid and return &quot; Error: Unknown command 'VOL'&quot;.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Error: Unknown operator '&lt;input&gt;'.</p></td>
<td align="left"><p>The instruction contains an unknown operator. For example, &quot;Volume!&quot; would be invalid and return &quot; Error: Unknown operator '!'&quot;.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Error: Unknown parameter '&lt;input&gt;'.</p></td>
<td align="left"><p>The instruction contains an unknown parameter. For example, &quot;Volume=abc&quot; would be invalid and return &quot; Error: Unknown parameter 'abc'&quot;.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Error: Command not available when off '&lt;input&gt;'.</p></td>
<td align="left"><p>When the Surface Hub is off, commands other than Power return this error. For example, &quot;Volume+&quot; would be invalid and return &quot; Error: Command not available when off 'Volume'&quot;.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)

 

 





