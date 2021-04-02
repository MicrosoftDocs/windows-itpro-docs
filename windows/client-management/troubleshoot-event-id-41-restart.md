---
title: Advanced troubleshooting for Event ID 41 - "The system has rebooted without cleanly shutting down first"
description: Describes the circumstances that cause a computer to generate Event ID 41, and provides guidance for troubleshooting the issue
author: Teresa-Motiv
ms.author: v-tea
ms.date: 12/27/2019
ms.prod: w10
ms.topic: article
ms.custom: 
- CI 111437
- CSSTroubleshooting
audience: ITPro
ms.localizationpriority: medium
keywords: event id 41, reboot, restart, stop error, bug check code
manager: kaushika

---

# Advanced troubleshooting for Event ID 41: "The system has rebooted without cleanly shutting down first"

> **Home users**
> This article is intended for use by support agents and IT professionals. If you're looking for more information about blue screen error messages, please visit [Troubleshoot blue screen errors](https://support.microsoft.com/help/14238/windows-10-troubleshoot-blue-screen-errors).

The preferred way to shut down Windows is to select **Start**, and then select an option to turn off or shut down the computer. When you use this standard method, the operating system closes all files and notifies the running services and applications so that they can write any unsaved data to disk and flush any active caches.

If your computer shuts down unexpectedly, Windows logs Event ID 41 the next time that the computer starts. The event text resembles the following:

> Event ID: 41  
> Description: The system has rebooted without cleanly shutting down first.

This event indicates that some unexpected activity prevented Windows from shutting down correctly. Such a shutdown might be caused by an interruption in the power supply or by a Stop error. If feasible, Windows records any error codes as it shuts down. During the [kernel phase](advanced-troubleshooting-boot-problems.md#kernel-phase) of the next Windows startup, Windows checks for these codes and includes any existing codes in the event data of Event ID 41.

> EventData  
> BugcheckCode 159  
> BugcheckParameter1 0x3  
> BugcheckParameter2 0xfffffa80029c5060  
> BugcheckParameter3 0xfffff8000403d518  
> BugcheckParameter4 0xfffffa800208c010  
> SleepInProgress false  
> PowerButtonTimestamp 0Converts to 0x9f (0x3, 0xfffffa80029c5060, 0xfffff8000403d518, 0xfffffa800208c010)  

## How to use Event ID 41 when you troubleshoot an unexpected shutdown or restart

By itself, Event ID 41 might not contain sufficient information to explicitly define what occurred. Typically, you have to also consider what was occurring at the time of the unexpected shutdown (for example, the power supply failed). Use the information in this article to identify a troubleshooting approach that is appropriate for your circumstances:

- [Scenario 1](#scen1): The computer restarts because of a Stop error, and Event ID 41 contains a Stop error (bug check) code
- [Scenario 2](#scen2): The computer restarts because you pressed and held the power button
- [Scenario 3](#scen3): The computer is unresponsive or randomly restarts, and Event ID 41 is not logged or the Event ID 41 entry lists error code values of zero

### <a name="scen1"></a>Scenario 1: The computer restarts because of a Stop error, and Event ID 41 contains a Stop error (bug check) code

When a computer shuts down or restarts because of a Stop error, Windows includes the Stop error data in Event ID 41 as part of the additional event data. This information includes the Stop error code (also called a bug check code), as shown in the following example:

> EventData  
> BugcheckCode 159  
> BugcheckParameter1 0x3  
> BugcheckParameter2 0xfffffa80029c5060  
> BugcheckParameter3 0xfffff8000403d518  
> BugcheckParameter4 0xfffffa800208c010  

> [!NOTE]  
> Event ID 41 includes the bug check code in decimal format. Most documentation that describes bug check codes refers to the codes as hexadecimal values instead of decimal values. To convert decimal to hexadecimal, follow these steps:
>  
> 1. Select **Start**, type **calc** in the **Search** box, and then select **Calculator**.
> 1. In the **Calculator** window, select **View** > **Programmer**.
> 1. On the left side of calculator, verify that **Dec** is highlighted.
> 1. Use the keyboard to enter the decimal value of the bug check code.
> 1. On the left side of the calculator, select **Hex**.  
> The value that the calculator displays is now the hexadecimal code.
>  
> When you convert a bug check code to hexadecimal format, verify that the “0x” designation is followed by eight digits (that is, the part of the code after the “x” includes enough zeros to fill out eight digits). For example, 0x9F is typically documented as 0x0000009f, and 0xA is documented as 0x0000000A. In the case of the example event data in this article, "159" converts to 0x0000009f.  

After you identify the hexadecimal value, use the following references to continue troubleshooting:

- [Advanced troubleshooting for Stop error or blue screen error issue](troubleshoot-stop-errors.md).
- [Bug Check Code Reference](/windows-hardware/drivers/debugger/bug-check-code-reference2). This page lists links to documentation for different bug check codes.
- [How to Debug Kernel Mode Blue Screen Crashes (for beginners)](/archive/blogs/askcore/how-to-debug-kernel-mode-blue-screen-crashes-for-beginners).

### <a name="scen2"></a>Scenario 2: The computer restarts because you pressed and held the power button

Because this method of restarting the computer interferes with the Windows shutdown operation, we recommend that you use this method only if you have no alternative. For example, you might have to use this approach if your computer is not responding. When you restart the computer by pressing and holding the power button, the computer logs an Event ID 41 that includes a non-zero value for the **PowerButtonTimestamp** entry.

For help when troubleshooting an unresponsive computer, see [Windows Help](https://support.microsoft.com/hub/4338813/windows-help?os=windows-10). Consider searching for assistance by using keywords such as "hang," "responding," or "blank screen."

### <a name="scen3"></a>Scenario 3: The computer is unresponsive or randomly restarts, and Event ID 41 is not recorded or the Event ID 41 entry or lists error code values of zero

This scenario includes the following circumstances:

- You shut off power to an unresponsive computer, and then you restart the computer.  
   To verify that a computer is unresponsive, press the CAPS LOCK key on the keyboard. If the CAPS LOCK light on the keyboard does not change when you press the CAPS LOCK key, the computer might be completely unresponsive (also known as a *hard hang*).  
- The computer restarts, but it does not generate Event ID 41.
- The computer restarts and generates Event ID 41, but the **BugcheckCode** and **PowerButtonTimestamp** values are zero.

In such cases, something prevents Windows from generating error codes or from writing error codes to disk. Something might block write access to the disk (as in the case of an unresponsive computer) or the computer might shut down too quickly to write the error codes or even detect an error.

The information in Event ID 41 provides some indication of where to start checking for problems:

- **Event ID 41 is not recorded or the bug check code is zero**. This behavior might indicate a power supply problem. If the power to a computer is interrupted, the computer might shut down without generating a Stop error. If it does generate a Stop error, it might not finish writing the error codes to disk. The next time the computer starts, it might not log Event ID 41. Or, if it does, the bug check code is zero. Conditions such as the following might be the cause:
  - In the case of a portable computer, the battery was removed or completely drained.
  - In the case of a desktop computer, the computer was unplugged or experienced a power outage.
  - The power supply is underpowered or faulty.

- **The PowerButtonTimestamp value is zero**. This behavior might occur if you disconnected the power to a computer that was not responding to input. Conditions such as the following might be the cause:
  - A Windows process blocked write access to the disk, and you shut down the computer by pressing and holding the power button for at least four seconds.
  - You disconnected the power to an unresponsive computer.

Typically, the symptoms described in this scenario indicate a hardware problem. To help isolate the problem, do the following:

- **Disable overclocking**. If the computer has overclocking enabled, disable it. Verify that the issue occurs when the system runs at the correct speed.
- **Check the memory**. Use a memory checker to determine the memory health and configuration. Verify that all memory chips run at the same speed and that every chip is configured correctly in the system.
- **Check the power supply**. Verify that the power supply has enough wattage to appropriately handle the installed devices. If you added memory, installed a newer processor, installed additional drives, or added external devices, such devices can require more energy than the current power supply can provide consistently. If the computer logged Event ID 41 because the power to the computer was interrupted, consider obtaining an uninterruptible power supply (UPS) such as a battery backup power supply.
- **Check for overheating**. Examine the internal temperature of the hardware and check for any overheating components.

If you perform these checks and still cannot isolate the problem, set the system to its default configuration and verify whether the issue still occurs.

> [!NOTE]  
> If you see a Stop error message that includes a bug check code, but Event ID 41 does not include that code, change the restart behavior for the computer. To do this, follow these steps:
>  
> 1. Right-click **My Computer**, then select **Properties** > **Advanced system settings** > **Advanced**.
> 1. In the **Startup and Recovery** section, select **Settings**.
> 1. Clear the **Automatically restart** check box.