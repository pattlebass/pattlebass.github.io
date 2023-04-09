---
layout: post
title: How to disable web search results in the start menu
tags: ["tutorial"]
---

## Windows 10 & Windows 11

1. Windows + R, type `regedit` and hit enter. Accept the UAC prompt that shows up.
2. Navigate to `HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\`.
3. If there is no key named `Explorer` right-click and create one.

   ![alt text](disable-internet-results-search-bar-1.webp){:width="881px" height="650px"}

4. Right-click to add a new `DWORD value` named `DisableSearchBoxSuggestions`.
5. Double-click it and set its value data to `1`.

   ![alt text](disable-internet-results-search-bar-2.webp){:width="360px" height="220px"}

6. Open the Task Manager and restart `Windows Explorer`.
