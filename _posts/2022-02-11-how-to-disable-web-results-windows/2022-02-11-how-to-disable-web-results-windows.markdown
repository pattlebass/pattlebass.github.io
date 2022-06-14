---
layout: post
title: How to disable web search results in the start menu
---

# Windows 10 1809 and up

1. Windows + R, type `regedit` and hit enter. Accept the UAC prompt that shows up.
2. Navigate to `HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\`.
3. If there is no key named `Explorer` right-click and create one.

   ![alt text](disable-internet-results-search-bar-1.webp){:height="650px"}

4. Select it and on the right add a new `DWORD value` (right-click > New) and name it `DisableSearchBoxSuggestions`.
5. Double-click it and set its value data to 1.

   ![alt text](disable-internet-results-search-bar-2.webp){:height="220px"}

6. Restart Explorer.exe
