Diangnostic Data Viewer
=======================

## Introduction
The Diagnostic Data Viewer is a Windows application that allows you to see the diagnostic data that your device sends to Microsoft.
This application displays the exact details which are sent from your device and groups this data into simple categories for you to understand it's purpose. 

## Installation

### Enable Data Viewing
Before launching the application, you must enable data viewing in the Settings Panel by navigating to Settings->Privacy->Feedback & diagnostics and setting the data viewing toggle button below to On.
Enabling data viewing allows Windows to temporarily persist a copy of the diagnostic data after it is sent to Microsoft. 

![alt text](data_viewing.jpeg "How to enable data viewing")

### Download
The application is available for download via this [Windows Store Product Page](https://www.microsoft.com/en-us/store/p/diagnostic-data-viewer/9n8wtrrsq8f7?rtc=1).

### Launch
The application can be launched form the Settings Panel by navigating to Settings->Privacy->Feedback & diagnostics and clicking the Diangostic Data Viewer button below. You must enable
data viewing as described in the previous step to be able to see the diagnostic data in the tool. 

![alt text](settings_launch.jpg "Launching the app from Settings Panel")

You can also launch the tool from the Start menu by clicking start and searching for Diagnostic Data Viewer. 


## Features 
### View Events
The Diagnostic Data Viewer shows diagnostic events in the left column. An event signifies that an some activity occurred and some information was packaged together to sent to Microsoft. 
Clicking on an event opens up a detailed JSON view which is the exact details uploaded to Microsoft. The information helps Microsoft to continually improve the Windows platform.

### Search 
There is a search box above the list of diagnostics events. You can enter text you want to search among all the diagnostic event details. The result below will be all the diagnostic events 
which contain the matching text. Clicking on a resulting event will open the detailed JSON view with the matching text highlighted.

### Filter Categories
Clicking the 3-line menu icon in the top left of the applicaiton will open the detailed menu. Here you can find a list of categories which signify what these events are used for at Microsoft. You can use
the check-boxes to filter between the categories. 
	
## Event Feedback
At the top right of the Diagnostic Data Viewer, there is an icon to provide feedback via the Feedback Hub application. If you selected a certain event in the Diagnostic Data Viewer, the event name will be pre-filled
in the Feedback Hub template. Please add specific details in the next field labeled "Give us more detail (optional)". 

> **Please be Careful When Submitting Feedback!**
> **Your feedback in the Feedback Hub application is publicly viewable**
> **Do not put any personal information in your feedback response**



## Windows Sampling
Microsoft collects Diagnostic Data from a sample population of Windows devices. This sampling behavior is seen in the application in 2 ways:
1. Device level sampling
2. Event level sampling

### Device level sampling
If windows device has a chance to be part of group which sends additional diagnostic data to Microsoft. Devices are chosen using a random number. If your device is part of this group, you will see the icon 
below in the 3-line menu in the Diagnostic Data Viewer. 

![alt text](device_sample.jpg "Device Sampling")


### Event level sampling
If you're device is part of this group sending additional diagnostic data, you will see the icon below next to each event that is up-sampled. This icon indicates that the event is sent to Microsoft
as part of the additional diagnostic data to help improve the Windows platform.

![alt text](event_sample.jpg "Event Sampling")

