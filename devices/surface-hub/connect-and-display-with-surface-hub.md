---
title: Connect other devices and display with Surface Hub
description: You can connect other device to your Surface Hub to display content. This topic describes guest mode and replacement PC modes that is available through a wired connection.
Robots: noindex, nofollow
ms.assetid: 8BB80FA3-D364-4A90-B72B-65F0F0FC1F0D
author: TrudyHa
---

# Connect other devices and display with Surface Hub


You can connect other device to your Surface Hub to display content. This topic describes guest mode and replacement PC modes that is available through a wired connection.

## Guest mode


Guest mode uses a wired connection, so people can display content from their devices to the Surface Hub. If the source device is Windows based, that device can also provide Touchback and Inkback. Surface Hub's internal PC takes video and audio from the connected device and displays them on the Surface Hub. If Surface Hub encounters an HDCP signal, the source will be re-routed through an alternate path, allowing the source to be displayed full-screen without violating HDCP requirements.

### Ports

Use these ports on the Surface Hub for the guest mode.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Interface</th>
<th>Type</th>
<th>Description</th>
<th>Capabilities</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Display Port 1.1a</p></td>
<td><p>Video input</p></td>
<td><p>Guest input #1</p></td>
<td><ul>
<li><p>Support simultaneous guest input display with guest input #2 and guest input #3 (one full resolution, two thumbnail).</p></li>
<li><p>HDCP compliant in bypass mode</p></li>
<li><p>Touchback enabled</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>HDMI 1.4</p></td>
<td><p>Video input</p></td>
<td><p>Guest input #2</p></td>
<td><ul>
<li><p>Support simultaneous guest input display with guest input #1 and guest input #3 (one full resolution, two thumbnail).</p></li>
<li><p>HDCP compliant in bypass mode</p></li>
<li><p>Touchback enabled</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>VGA</p></td>
<td><p>Video input</p></td>
<td><p>Guest input #3</p></td>
<td><ul>
<li><p>Support simultaneous guest input display with guest input #1 and guest input #2 (one full resolution, two thumbnail).</p></li>
<li><p>HDCP compliant in bypass mode</p></li>
<li><p>Touchback enabled</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>3.5 mm jack</p></td>
<td><p>Audio input</p></td>
<td><p>Analog audio input</p></td>
<td><ul>
<li><p>Ingest into Surface Hub PC, usually with the VGA video input.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>USB 2.0, type B</p></td>
<td><p>USB out</p></td>
<td><p>Touchback</p></td>
<td><ul>
<li><p>Provides access to the HID input devices mouse, touch, keyboard, and stylus back to the guest PC.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

### Port locations

These are the port connections used for guest mode on the 55" and 84" Surface Hubs.

![image showing guest ports on 55" surface hub. ](images/sh-55-guest-ports.png)

Wired port connections on 55" Surface Hub

![image showing guest ports on 84" surface hub. ](images/sh-84-guest-ports.png)

Wired port connections on 84" Surface Hub

### Port enumeration

When a Surface hub is connected to guest computer with the wired connect USB port, a number of USB devices are discovered and configured. These peripheral devices are created for touchback and inkback. The peripheral devices can viewed in Device Manager. Device Manager will show duplicate names for some devices.

**Human interface devices**

-   HID-compliant consumer control device

-   HID-compliant pen

-   HID-compliant pen (duplicate item)

-   HID-compliant pen (duplicate item)

-   HID-compliant touch screen

-   USB Input Device

-   USB Input Device (duplicate item)

**Keyboards**

-   Standard PS/2 keyboard

**Mice and other pointing devices**

-   HID-compliant mouse

**Universal serial bus conntrollers**

-   Generic USB hub

-   USB composite device

### Guest mode connectivity

Your choice of video cable will be determined by what is available from your source input. The Surface Hub has three choices of video input, DisplayPort, HDMI and VGA. Please refer to the below chart for available resolutions.

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th>Signal Type</th>
<th>Resolution</th>
<th>Frame rate</th>
<th>HDMI - RGB</th>
<th>DisplayPort</th>
<th>VGA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>PC</p></td>
<td><p>640 x 480</p></td>
<td><p>59.94/60</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
</tr>
<tr class="even">
<td><p>PC</p></td>
<td><p>720 x 480</p></td>
<td><p>59.94/60</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>PC</p></td>
<td><p>1024 x 768</p></td>
<td><p>60</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
</tr>
<tr class="even">
<td><p>HDTV</p></td>
<td><p>720p</p></td>
<td><p>59.94/60</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
</tr>
<tr class="odd">
<td><p>HDTV</p></td>
<td><p>1080p</p></td>
<td><p>59.94/60</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
</tr>
</tbody>
</table>

 

Source audio is provided by DisplayPort and HDMI cables. If you must use VGA, Surface Hub has an audio input port that uses a 3.5 mm plug. Surface Hub also uses a USB cable that provides touch and inkback from the Surface Hub to compatible Windows 10 devices. The USB cable can be used with any video input that is already connected with a cable.

Someone using guest mode to connect a PC would use one of these options:

**DisplayPort** -- DisplayPort cable and USB 2.0 cable

**HDMI** -- HDMI cable and USB 2.0 cable

**VGA** -- VGA cable, 3.5 mm audio cable, and USB 2.0 cable

If the computer you are using for guest mode is not compatible with Touch and Inkback, then you won't need the USB cable.

## Replacement PC mode


In replacement PC mode, the embedded computer of the Surface Hub is turned off and an external PC is connected to the Surface Hub. Connections to replacement PC ports give access to key peripherals on the Surface Hub, including the screen, pen, and touch features. This does mean that your Surface Hub won’t have the benefit of the Windows Team experience, but you will have the flexibility offered by providing and managing your own Windows computer.

### Software requirements

You can run Surface Hub in replacement PC mode with 64-bit versions of Windows 10 Home, Windows 10 Pro and Windows 10 Enterprise. You can download the  [Surface Hub Replacement PC driver package](https://www.microsoft.com/en-us/download/details.aspx?id=52210) from the Microsoft download center. We recommend that you install these drivers on any computer you plan to use as a replacement PC.

### Hardware requirements

Surface Hub is compatible with a range of hardware. Choose the processor and memory confirmation for your replacement PC so that it supports the programs you'll be using. Your replacement PC hardware needs to support 64-bit versions of Windows 10.

### Graphics adapter

In replacement PC mode, Surface Hub supports any graphics adapter that can produce a DisplayPort signal. You'll improve your experience with a graphics adapter that can match Surface Hub's resolution and refresh rate. For example, though the best and recommended replacement PC experience on the Surface Hub is with a 120Hz video signal, 60Hz video signals are also supported.

**55" Surface Hubs** - For best experience, use a graphics card capable of 1080p resolution at 120Hz.

**84" Surface Hubs** - For best experience, use a graphics card capable of outputting four DisplayPort 1.2 streams to produce 2160p at 120Hz (3840 x 2160 at 120Hz vertical refresh). We've verified that this works with the NVIDIA Quadro K2200, NVIDIA Quadro K4200, and NVIDIA Quadro M6000. These are not the only graphics cards - others are available from other vendors. 

Check directly with graphics card vendors for the latest drivers.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Graphics vendor</th>
<th>Driver download page</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>NVIDIA</p></td>
<td><p>[http://nvidia.com/Download/index.aspx](http://nvidia.com/Download/index.aspx)</p></td>
</tr>
<tr class="even">
<td><p>AMD</p></td>
<td><p>[http://support.amd.com/download](http://support.amd.com/download)</p></td>
</tr>
<tr class="odd">
<td><p>Intel</p></td>
<td><p>[https://downloadcenter.intel.com/](https://downloadcenter.intel.com/)</p></td>
</tr>
</tbody>
</table>

 

### Ports

Replacement PC ports on 55" Surface Hub.

![image showing replacement pc ports on 55" surface hub. ](images/sh-55-rpc-ports.png)

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Description</th>
<th>Type</th>
<th>Interface</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>PC video</p></td>
<td><p>Video input</p></td>
<td><p>DisplayPort 1.2</p></td>
<td><ul>
<li><p>Full screen display of 1080p at 120 Hz, plus audio</p></li>
<li><p>HDCP compliant</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Internal peripherals</p></td>
<td><p>USB output</p></td>
<td><p>USB 2.0 type B</p></td>
<td><ul>
<li><p>Touch</p></li>
<li><p>Pen</p></li>
<li><p>Speakers</p></li>
<li><p>Microphone</p></li>
<li><p>Cameras</p></li>
<li><p>NFC sensor</p></li>
<li><p>Ambient light sensor</p></li>
<li><p>Passive infrared sensor</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>USB hub</p></td>
<td><p>USB output</p></td>
<td><p>USB 2.0 type B</p></td>
<td><ul>
<li><p>Underneath USB ports</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

Replacement PC ports on 84" Surface Hub.

![image showing replacement pc ports on 84" surface hub. ](images/sh-84-rpc-ports.png)

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Description</th>
<th>Type</th>
<th>Interface</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>PC video</p></td>
<td><p>Video input</p></td>
<td><p>DisplayPort 1.2 (2x)</p></td>
<td><ul>
<li><p>Full screen display of 2160p at 120 Hz, plus audio</p></li>
<li><p>HDCP compliant</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Internal peripherals</p></td>
<td><p>USB output</p></td>
<td><p>USB 2.0 type B</p></td>
<td><ul>
<li><p>Touch</p></li>
<li><p>Pen</p></li>
<li><p>Speakers</p></li>
<li><p>Microphone</p></li>
<li><p>Cameras</p></li>
<li><p>NFC sensor</p></li>
<li><p>Ambient light sensor</p></li>
<li><p>Passive infrared sensor</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>USB hub</p></td>
<td><p>USB output</p></td>
<td><p>USB 2.0 type B</p></td>
<td><ul>
<li><p>Underneath USB ports</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

### Replacement PC setup instructions

**To use replacement PC mode**

1.  Download and install the [Surface Hub Replacement PC driver package](https://www.microsoft.com/en-us/download/details.aspx?id=52210) on the replacement PC.

    **Note**  We recommend that you set sleep or hibernation on the replacement PC so the Surface Hub will turn off the display when it isn't being used.

     

2.  Turn off the Surface Hub using the power switch next to the power cable.

3.  Connect the cables from the Surface Hub's replacement PC ports to the replacement PC. These ports are usually covered by a removable plastic cover.

    55" Surface Hub -- connect one DisplayPort cable, and two USB cables.

    84" Surface Hub -- connect two DisplayPort cables, and two USB cables.

4.  Toggle the Mode switch to **Replacement PC**. The Mode switch is next to the Replacement PC ports.

5.  Turn on the Surface Hub using the power switch next to the power cable.

6.  Press the power button on the right side of the Surface Hub.

You can switch the Surface Hub to use the internal PC.

**To switch back to internal PC**

1.  Turn off the Surface Hub using the power switch next to the power cable.

2.  Toggle the Mode switch to Internal PC. The Mode switch is next to the Replacement PC ports.

3.  Turn on the Surface Hub using the power switch next to the power cable.

 

 





