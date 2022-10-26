---
title: Doc team test
description: A test article for the doc team's use.
ms.date: 05/10/2022
ms.prod: windows-client
ms.technology: itpro-fundamentals
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
> For more markdown examples and tips, see the **template.md** file at the root of the repository. Including examples of links and images.

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
