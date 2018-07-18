### Enterprise Mode features
Enterprise Mode includes the following features:

- **Improved web app and website compatibility.** Through improved emulation, Enterprise Mode lets many legacy web apps run unmodified on IE11, supporting several site patterns that aren’t currently supported by existing document modes.

- **Tool-based management for website lists.** Use the Enterprise Mode Site List Manager to add website domains and domain paths and to specify whether a site renders using Enterprise Mode.
Download the [Enterprise Mode Site List Manager (schema v.2)](https://go.microsoft.com/fwlink/p/?LinkId=716853) or the [Enterprise Mode Site List Manager (schema v.1)](https://go.microsoft.com/fwlink/p/?LinkID=394378), based on your operating system and schema.

- **Centralized control.** You can specify the websites or web apps to interpret using Enterprise Mode, through an XML file on a website or stored locally. Domains and paths within those domains can be treated differently, allowing granular control. Use Group Policy to let users turn Enterprise Mode on or off from the Tools menu and to decide whether the Enterprise browser profile appears on the Emulation tab of the F12 developer tools.

    >[!Important]
    >All centrally-made decisions override any locally-made choices. 

- **Integrated browsing.** When Enterprise Mode is set up, users can browse the web normally, letting the browser change modes automatically to accommodate Enterprise Mode sites.

- **Data gathering.** You can configure Enterprise Mode to collect local override data, posting back to a named server. This lets you "crowd source" compatibility testing from key users; gathering their findings to add to your central site list.