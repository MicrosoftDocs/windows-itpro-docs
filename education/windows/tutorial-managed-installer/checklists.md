---
title: Consideration before deploying apps with Managed Installer
description: Learn how to Consideration before deploying apps with Managed Installer
ms.date: 02/24/2023
ms.topic: checklist
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

# <X> checklist <or> <X> checklist for <technology or product>
TODO: Add your H1.

<!-- 2. Introductory paragraphs ---------------------------------------------------------

Required: Provide a brief introduction that describes the task that
this checklist supports.

Emphasize general industry terms (such as "serverless," which are better for SEO) more
than Microsoft-branded terms or acronyms (such as "Azure Functions" or "ACR").
Try to include terms people typically search for and avoid using *only* Microsoft terms.

If the checklist describes prerequisites, explain what task they are for, but avoid
linking to the task here.
The reader shouldn't leave the checklist until completed.

If the checklist supports a periodic task, give a brief idea of how often the task
should be done.

-->

Follow these checklists to ensure that your Windows 11 SE devices are set up with a managed installer and that app deployment completed correctly.

## Device setup (TAP only)

These checks must be done once per device.

> [!div class="checklist"]
>
> - AppLocker policy deployed
> - Policy shows as applied in Event Viewer
> - Detection script was successful
>
> - WDAC supplemental policy deployed
>   - Use `citool -lp` to dump policies
>   - Event viewer shows policy being applied

## Deploy an application via Intune

- [ ] .intunewin package created (for Win32 apps)
- [ ] Package uploaded via Intune (for Win32 apps)
- [ ] Assign the package to the correct groups

## Validate application deployment

- [ ] No Intune installation errors
- [ ] No errors when opening the app from the device
- [ ] *CI Policy* in the Event Viewer logs don't show app's executables being blocked

## Create additional policies for incompatible apps
### WDAC supplemental policy

- [ ] Signed .cip .p7b file with Device Guard
- [ ] Targets Base policy: `82443e1e-8a39-4b4a-96a8-f40ddc00b9f3`
- [ ] Policy created in Intune and assigned to the correct groups
- [ ] Policy applied in Event Viewer

### AppLocker

- [ ] Only applied to an updater or installer
- [ ] Merge option used
- [ ] Policy created in Intune and assigned to the correct groups




[Add your introductory paragraphs]
TODO: Add your introductory paragraphs

This checklist provides a convenient way to access information you may need to support [X] when using [Microsoft product].

<!--
- Avoid any indication of the time it takes to complete the checklist, because there's
  already the "x minutes to read" at the top and making a second suggestion can be 
  contradictory. (The standard line is probably misleading, but that's a matter for
  site design.)

- If your article includes several sections of checklists, consider an overview list
  that links to the sections in the article. Use this approach sparingly, because it
  encourages the reader to look at items out of order.

-->

<!-- 3. Checklist sections --------------------------------------------------------------

Required: Organize your items into one or more lists. 
Each item can be a task to complete or a requirement that must be met.

Use a single H2 with a list or table or create more than one H2 each with a list
or table.
If you use more than one list, divide the items into groups that make sense.

-->

## <Checklist>
TODO: Add one or more lists.

<!-- 4. Link to additional information.

Optional: Present a section with more information about the tasks or prerequisites in
the list.

-->
## More information
TODO: Add optional section with more details.

<!-- 5. Next steps ----------------------------------------------------------------------

Required: Your checklist should always have a Next steps H2 that points to the next task
after completing the checklist.
The next task might be an installation task that requires the checklist.

For a single link, you can use the Next steps button. 

For multiple next steps, use a short list with links and maybe a brief explanation.

-->

## Next steps

Advance to the next article to learn how to create...
> [!div class="nextstepaction"]
> [Next steps button](contribute-get-started-mvc.md)

TODO: Add Next steps section.
<!--
Remove all the comments in this template before you sign off or merge to the main branch.

-->