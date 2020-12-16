Use Quick Assist to support users
=================================

\[a sub-article under Administrative Tools in the [Client Management](https://docs.microsoft.com/en-us/windows/client-management/) area\]

Quick Assist is a Windows 10 application that enables a person to share their device with another person over a remote connection. Your support staff can use it to remotely connect to a user’s device and then view its display, make annotations, or take full control. In this way, they can troubleshoot, diagnose technological issues, and provide instructions to users directly on their devices.

Before you begin 
----------------

All that is required to use Quick Assist is suitable network & internet connectivity. No particular roles, permissions, or policies are involved. Neither party needs to be in a domain. The helper must have a Microsoft account. &lt;Sharer doesn’t have to authenticate&gt;

### Authentication

Supported methods for Helper login authentication are Microsoft Account (MSA), or Microsoft AAD. Local Active Directory is not supported at this time.

### Network considerations

Quick Assist communicates over port 443 (https) and connects to the Remote Assistance Service at <https://remoteassistance.support.services.microsoft.com> by using the Remote Desktop Protocol. The traffic is encrypted with TLS 1.2. Older TLS versions are blocked.

Both parties must be able to reach these endpoints over port 443:

| Domain/Name                       | Description                                           |
|-----------------------------------|-------------------------------------------------------|
| \*.support.services.microsoft.com | Primary endpoint used for Quick Assist application    |
| \*.resources.lync.com             | Required for the skype framework used by Quick Assist |
| \*.infra.lync.com                 | Required for the skype framework used by Quick Assist |
| \*latest-swx.cdn.skype.com        | Required for the skype framework used by Quick Assist |
| \*login.microsoftonline.com       | Required for logging in to the application (MSA)      |
| \*channelwebsdks.azureedge.net    | Utilized for chat services within Quick Assist        |
| \*.aria.microsoft.com             | Utilized for accessibility features within the app    |
| \*api.support.microsoft.com       | API access for Quick Assist                           |
| \*.vortex.data.microsoft.com      | Utilized for telemetry                                |
| \*.channelservices.microsoft.com  | Required for chat services within Quick Assist        |

How it works
------------

1.  Both the Helper and the Sharer start Quick Assist.

2.  The Helper clicks on “Assist another person”. The Quick Assist on the Helper side contacts the Remote Assistance Service to obtain a session code. The Helper then provides the code to the Sharer.

3.  After the Sharer enters the code in their Quick Assist app, Quick Assist uses that code to contact the Remote Assistance Service and join that specific session.

4.  The Helper is then prompted to decide View Only Mode or Full Control.

5.  Then the Sharer is prompted to confirm allowing the Helper to share their desktop with the helper.

6.  Then Both Quick Assist initiates the RDP control and connects to the RDP Relay services.

7.  Then RDP shares the video to the Helper over https (port 443) thru Relay services to the Helpers RDP control. Input is shared from the Helper to the Sharer thru Relay service.

<img src="C:\Users\jaimeo\windows-docs-pr\windows\client-management\media\image1.png" style="width:6.49375in;height:3.07153in" alt="Diagram Description automatically generated" />

### Data and privacy

Microsoft logs a small amount of session data to monitor the health of the Quick Assist system. This includes the following data:

-   Start and end time of the session

-   Errors arising from Quick Assist itself, such as unexpected disconnections

-   Features utilized within the app such as view only, annotation, and session pause

No logs are created on either the helper’s or sharer’s device. Microsoft cannot access a session or view any actions or keystrokes that occur in the session.

The sharer sees only an abbreviated version of the helper’s name (first name, last initial) and no other information about them. Microsoft does not capture or store any personally identifiable information about either the Sharer or the Helper for longer than 3 days.

In some scenarios the helper does require the Sharer to respond to application permission prompts (User Account Control), but otherwise the Helper has the same permissions as the Sharer on the device.

Working with Quick Assist
-------------------------

Either the support staff or a user can start the Quick Assist session.

### Support staff starts session

1.  Support staff (“helper”) starts Quick Assist in any of a few ways:

    -   Type *Quick Assist* in the search box and press ENTER.

    -   From the Start menu, select **Windows Accessories**, and then select **Quick Assist**

    -   Type CTRL+Windows+Q

2.  In the **Give assistance** section, helper selects **Assist another person**. The helper might be asked to choose their account or sign in. Quick Assist generates a time-limited security code.

3.  Helper shares the security code with the user over the phone or with a messaging system.

4.  Quick Assist opens on the sharer’s device. The user enters the provided code in the **Code from assistant** box, and then selects **Share screen**.

5.  The helper receives a dialog offering the opportunity to take full control of the device or just view its screen. After choosing, the helper selects **Continue**.

6.  The sharer receives a dialog asking for permission to show their screen or allow access. The sharer gives permission by selecting the **Allow** button.

### User starts session

(I don’t think we need this since the steps are included above)

Next steps
----------

If you have any problems, questions, or suggestions for Quick Assist, contact us by using \[Feedback Hub\].
