---
title: # ARTICLE TITLE in 55 chars or less, most important for SEO. Best to match H1 and TOC, but doesn't have to.
description: # A summary of the content. 75-300 characters. Used in site search. Sometimes used on a search engine results page for improved SEO. Always end with period.
ms.date: mm/dd/yyyy
ms.prod: windows-client
ms.technology: itpro-fundamentals # itpro-deploy itpro-updates itpro-apps itpro-manage itpro-configure itpro-security itpro-privacy itpro-edu
ms.topic: conceptual #reference troubleshooting how-to end-user-help overview (more in contrib guide)
ms.localizationpriority: medium #high null
author: # GitHub username (aczechowski)
ms.author: # MS alias (aaroncz)
ms.reviewer: # MS alias of feature PM, optional. comma-separated multivalue
manager: # MS alias of manager (dougeby/aaroncz)
ms.collection: # optional
- # highpri - high priority, strategic, important, current, etc. articles (confirm with manager prior to use)
- # education - part of M365 for Education vertical
---

# Metadata and Markdown Template

_Applies to:_

- Windows 11
- Windows 10

This docs.ms template contains examples of markdown syntax, and guidance on setting the metadata. It's available in the root directory of the Windows repository (`~\windows-docs-pr\template.md`).

When you create a new markdown file article, **Save as** this template to a new file, fill out the metadata as specified below, set the H1 heading above (`#`) to the title of the article, and delete the template content.

## Metadata

The full metadata block is above the markdown between the `---` lines. For more information, see [Metadata for Magic content](https://review.learn.microsoft.com/office-authoring-guide/metadata-for-content-on-docs?branch=main) and [Metadata attributes](https://review.learn.microsoft.com/help/platform/metadata-all-attributes?branch=main) in the contributor guide. Some key notes:

- You _must_ have a space between the colon (`:`) and the value for a metadata element.

- Remove all metadata comments (`#`)

- Colons in a value (like the title) break the metadata parser. In their place, use the HTML encoding `&#58;` (for example, `title: Azure Rights Management&#58; the basics`).

- `title`: This title appears in search engine results and the browser tab.
  - Don't end with a period.
  - Use Microsoft style _sentence case_.
  - The title can match the H1 heading (`#`) and the name in the toc.yml, but doesn't have to.
  - It should be roughly 60-65 characters or less for best search engine optimization (SEO). NOTE that the length also includes any titleSuffix value, which is configured for every docset in docfx.json.

- `description`: Summarize the content, shows in search engine results. 75-300 characters. Always end with a period.

- `ms.date`: After you Save As this template to the target file, with the Docs Authoring Pack extension installed, right-click anywhere in the .md file to **Update `ms.date` metadata value** and save the file. This value is useful for when someone last reviewed the article (not just made any edit/commit).

- `author`: The author field contains the **Github username** of the author (single-value).
  - This value is used in GitHub notifications, assignments, and other build automation in both the private and public repositories.
  - It's also used to display the first (left-most) contributor in the published article.

- `ms.author` & `manager`: Microsoft aliases (single-value). ms.author and author are typically the same.

- `ms.reviewer`: Optionally can specify the name of the PM associated with the article. Just for reference, not currently used by any automation. Single or multi-value.

- `ms.prod`: Should always be `windows-client` for Windows content.

- `ms.technology`: Select one of the options based on the feature area. (single-value)

- `ms.topic`: Select one of the options based on the content type. This attribute is used in calculating content health (different content types are used differently by customers, so have different metrics).

- `ms.localizationpriority`: **Medium** is the default, which is machine translation. For specific, high-priority content that requires human translation (extra cost), set this value to **high**. For any components that are only `en-us`, set this value to **null** for no localization.

## Basic markdown and GFM

All basic and Github-flavored markdown (GFM) is supported. For more information, see the following articles:

- [Docs Markdown reference in the Contributor Guide](https://review.learn.microsoft.com/help/contribute/markdown-reference?branch=main)
- [Baseline markdown syntax](https://daringfireball.net/projects/markdown/syntax)
- [Github-flavored markdown (GFM) documentation](https://docs.github.com/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

## Headings

Examples of first- and second-level headings are above.

There **must** be only one first-level heading (`#`, also known as H1) in your article, which is displayed as the published title at the top of the page.

Second-level headings (`##`, also known as H2) generate the on-page TOC that appears in the **In this article** section beside or underneath the on-page title.

Limit the length of second-level headings to avoid excessive line wraps.

Make sure _all_ headings of any level have a unique name for the article. The build creates an anchor for all headings on the page using kebab formatting. For example, from the [Docs Markdown reference](https://review.learn.microsoft.com/help/contribute/markdown-reference?branch=main) article, the heading **Alerts (Note, Tip, Important, Caution, Warning)** becomes the anchor `#alerts-note-tip-important-caution-warning`. If there are duplicate headings, then the anchors don't behave properly. This behavior also applies when using include files, make sure the headings are unique across the main markdown file, and all include markdown files.

Don't skip levels. For example, don't have an H3 (`###`) without a parent H2 (`##`).

Configuration Manager content does use custom anchors in some articles. They're almost always prefixed with `bkmk_`, for example, `bkmk_client`. These anchors can help reduce the anchor size, but does require HTML code that may not always be supported by the docs build system. There's other functionality with the Docs Authoring Pack and the build validation that only works with native header anchors. Use custom anchors sparingly, and remove them in older articles when possible. When removing custom anchors, make sure to update all internal links from the old custom anchor to the native header kebab format.

### Third-level heading

Third-level headings (and beyond) can be any length, as they don't appear **In this article**.

#### Fourth-level heading

##### Fifth level heading

## Text styling

_Italics_ (a single asterisk (`*`) also works, but the underscore (`_`) helps differentiate with the double asterisk (`**`) for bold)

**Bold**

~~Strikethrough~~

## Links

> [!TIP]
> Use the **Docs Authoring Pack** extension to easily add links!
>
> 1. **Alt** + **M** to open the Docs Authoring Pack menu.
> 1. Select **Link** and then follow the prompts.
>
> It supports headings in the current and other files too! (Just not the custom `bkmk` anchors that are sometimes used in this content.)

For more information, see [Add links to articles](https://review.learn.microsoft.com/help/contribute/links-how-to?branch=main) in the contributor guide.

### Article in the same repo

To link to an article in the same repo, use **file-relative links**. These links have the path to the target as relative to the current file, and always include the `.md` or `.yml` extension. For example, `[Windows client documentation for IT Pros](index.yml)`

#### Link to headings

To link to a heading _in the same markdown file_, add just the anchor as the link. It's either a custom HTML anchor (`#bkmk_client`) or the kebab case of the header. For example: `[Link to an article in the same repo](#article-in-the-same-repo)`. Kebab case is preferred over a custom anchor, as the build validates the link. Make sure headings aren't duplicated in the same article.

To link to a heading _in a markdown file in the same repo_, use relative linking + hashtag linking. For example: `[Windows 11 availability](../whats-new/windows-11-plan.md#windows-11-availability)`

### Another docs.ms article

To link to another docs.ms article not in the same repo, use a **root-relative link**. This style supports the potential future use of the doc content in a separate disconnected environment, like for a high security government customer, which would have a different domain. For example, `[Public contributor guide](/contribute/additional-resources)`.

### External URLs

To link to an external file, use the full URL as the link. For example: `[Github](https://www.github.com)`

- The link should always be **HTTPS**.
- Remove any local from the URL, unless it doesn't work without it. Most all microsoft.com properties support language neutral URLs.

### Example links

If you need to provide an example of a URL in the article, enclose it in a code block. For example: `https://www.contoso.com`
This style makes sure the URL is ignored during build validation and the broken links report.

### Tips for links

When your pull request runs, the build system validates all file-relative links and non-custom anchors. It will return a warning if it can't resolve a link.

VSCode supports file-relative links and non-custom anchors, so you can easily navigate between pages, and test that links are valid.

There's a broken link report that runs once a week in the build system, get the report from OPS.

Don't use URL shorteners like `go.microsoft.com/fwlink` or `aka.ms`. Include the full URL to the target.

For more information, see [Add links to articles](https://review.learn.microsoft.com/help/contribute/links-how-to?branch=main) in the contributor guide.

## Lists

### Ordered lists

1. This list is ordered.
1. This list is ordered.
1. This list is ordered.
1. This list is ordered.
1. This list is ordered.

You can explicitly number each line if needed, but this style lets the build autonumber it. This style is beneficial if you need to add or remove a step.

#### Ordered list with an embedded list

1. This list is ordered.
1. This list is ordered.
1. This list is ordered.
1. This list is ordered.
    1. This list is embedded.
    1. This list is embedded.
1. This list is ordered.
1. This list is ordered.

### Unordered Lists

- This list is bulleted.
- This list is bulleted.
- This list is bulleted.
- This list is bulleted.
- This list is bulleted.

#### Unordered list with embedded lists

- This list is bulleted.
- This list is bulleted.
- This list is bulleted.
  - This list is embedded.
  - This list is embedded.
- This list is bulleted.
- This list is bulleted.
    1. This list is embedded and ordered.
    1. This list is embedded and ordered.
- This list is bulleted.

## Horizontal rule

---

## Tables

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| col 1 is default | left-aligned     |    $1 |

The Docs Authoring Pack has features to manage markdown tables. Select the entire table, then right-click to see the options.

## Code

### Codeblock

```json
{
   "aggregator": {
   "batchSize": 1000,
   flushTimeout": "00:00:30"
   }
}
```

### In-line code

This sentence includes an example of `in-line code`.

## Blockquote

> The drought had lasted now for ten million years, and the reign of the terrible lizards had long since ended. Here on the Equator, in the continent which would one day be known as Africa, the battle for existence had reached a new climax of ferocity, and the victor was not yet in sight. In this barren and desiccated land, only the small or the swift or the fierce could flourish, or even hope to survive.

## Images

Use the Docs Authoring Pack menu to easily insert media.

Always include alt text for accessibility, and always end it with a period.


### Static Image

:::image type="content" source="media/deploy1.png" alt-text="A graphic of a laptop as a suitcase.":::

### Image with lightbox

:::image type="content" source="media/deploy2.png" alt-text="A graphic of a computer with external monitor." lightbox="media/W10-WaaS-poster.PNG":::

### Animated gif

:::image type="content" source="media/docs-filter-toc.gif" alt-text="Animated gif of 'filter by title' option in the table of contents.":::

### Linked Image

[![Alt text for linked image.](memdocs/media/docs-github-edit.png)](https://azure.microsoft.com)

## Alerts

### Note

> [!NOTE]
> This is NOTE

### Warning

> [!WARNING]
> This is WARNING

### Tip

> [!TIP]
> This is TIP

### Caution

> [!CAUTION]
> This is CAUTION

### Important

> [!IMPORTANT]
> This is IMPORTANT

## Videos

### YouTube

> [!VIDEO https://www.youtube.com/embed/rnhnZTrSZzI]

## docs.ms extensions

> [!div class="nextstepaction"]
> [Microsoft Configuration Manager documentation](https://learn.microsoft.com/mem/configmgr)
