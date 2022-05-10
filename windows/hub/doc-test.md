---
title: Doc team test
description: A test article for the doc team's use.
ms.date: 05/10/2022
ms.prod: windows
ms.technology: windows
ms.topic: reference
ms.localizationpriority: null
ROBOTS: NOINDEX
author: aczechowski
ms.author: aaroncz
ms.reviewer: mstewart
manager: dougeby
---

# Doc team test

This article is for testing purposes only.

> [!NOTE]
> For more markdown examples and tips, see the **template.md** file at the root of the repository.

## Basic Markdown and GFM

All basic and Github-flavored markdown is supported. For more information, see:

- [Baseline markdown syntax](https://daringfireball.net/projects/markdown/syntax)
- [Github-flavored markdown (GFM) documentation](https://guides.github.com/features/mastering-markdown)

## Headings

Examples of first and second-level headings are above.

There **must** be only one first level heading in your article, which will be displayed as the on-page title.  

Second-level headings will generate the on-page TOC that appears in the "In this article" section underneath the on-page title.

### Third-level heading (`###`)
#### Fourth-level heading (`####`)
##### Fifth-level heading (`#####`)

## Text styling

_Italics_ (`_`)

**Bold** (`**`)

~~Strikethrough~~ (`~~`)

## Links

To link to a markdown file in the same repo, use **file-relative links**. Use the Docs Authoring Pack to help.

Examples:

- [Windows client documentation for IT Pros](index.yml)
- [Plan for Windows 11](../whats-new/windows-11-plan.md)

To link to a header in the same markdown file, find the section anchor and link using `#` (for example, `#blockquote`). Use the Docs Authoring Pack to help.

- Example: [Blockquotes](#blockquotes)

To link to a header in a markdown file in the same repo, use relative linking + hashtag linking.

- [Windows 11 availability](../whats-new/windows-11-plan.md#windows-11-availability)

To link to another article on docs.ms, use a **root-relative link**.

- Example: [What's new in Configuration Manager incremental versions](/mem/configmgr/core/plan-design/changes/whats-new-incremental-versions)

To link to an external file, use the full URL as the link. Remove any locales.

- Example: [GitHub](https://www.github.com)

## Lists

### Ordered lists

1. This
1. Is
1. An
1. Ordered
1. List

#### Ordered list with an embedded list

1. Here
1. Comes
1. An
1. Embedded
    1. Scarlett
    1. Professor Plum
1. Ordered
1. List

### Unordered Lists

- This
- Is
- A
- Bulleted
- List

#### Unordered list with an embedded list

- This
- Bulleted
- List
  - Peacock
  - Green
- Contains
- Other
    1. Colonel Mustard
        1. Yellow
        1. gold
    1. White
        1. cream
        1. silver
- Lists

## Horizontal rule

---

## Tables

| Tables              | Are           | Cool  |
|---------------------|:-------------:|------:|
| Column 3 is         | Right-aligned | $1600 |
| Column 2 is         | Centered      | $12   |
| Column 1 is default | Left-aligned  | $1    |

## Code

### Code block

```json
{
   "aggregator": {
   "batchSize": 1000,
   flushTimeout": "00:00:30"
   }
}
 ```

### In-line code

This example is for `in-line code`.

## Blockquotes

> The drought had lasted now for ten million years, and the reign of the terrible lizards had long since ended. Here on the Equator, in the continent which would one day be known as Africa, the battle for existence had reached a new climax of ferocity, and the victor was not yet in sight. In this barren and desiccated land, only the small or the swift or the fierce could flourish, or even hope to survive.

## Images

### Static Image

:::image type="content" source="images/deploy1.png" alt-text="A graphic of a laptop as a suitcase.":::

### Image with lightbox

:::image type="content" source="images/deploy2.png" alt-text="A graphic of a computer with external monitor." lightbox="images/W10-WaaS-poster.PNG":::

### Animated gif

:::image type="content" source="/mem/media/docs-filter-toc.gif" alt-text="Animated gif of 'filter by title' option in the table of contents.":::

## Alerts

### Note

> [!NOTE]
> This alert is a NOTE

### Warning

> [!WARNING]
> This alert is a WARNING

### Tip

> [!TIP]
> This alert is a TIP

### Caution

> [!CAUTION]
> This alert is a CAUTION

### Important

> [!IMPORTANT]
> This alert is a IMPORTANT

## Videos

### YouTube

> [!VIDEO https://www.youtube.com/embed/R6_eWWfNB54]

## docs.ms extensions

### Button

> [!div class="button"]
[button links](/rights-management)

### Step-By-Step

>[!div class="step-by-step"]
[Pre](https://www.example.com)
[Next](https://www.example.com)
