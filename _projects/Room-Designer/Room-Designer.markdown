---
layout: project
title: Room Designer
description: Room Designer is an app that aims to simplify the process of designing and decorating your home
permalink: /Room-Designer/
image: /assets/images/room-designer/Screenshot 2023-05-24 133112.webp
custom_colors:
  main: "#28281c"
  secondary: "#48482d"
  text: "#e6e4bf"

carousels:
  - images:
      - image: /assets/images/room-designer/Screenshot 2023-05-24 133112.webp
      - image: /assets/images/room-designer/Screenshot 2023-05-24 191706.webp
      - image: /assets/images/room-designer/Screenshot 2023-05-24 132921.webp
      - image: /assets/images/room-designer/Screenshot 2023-05-24 133124.webp
---

<style>
  .play-container {
    margin: 32px auto;
    max-width: 36ch;
    background-color: var(--main-color);
    border-radius: 16px;
  }

  .carousel__holder {
    margin: 64px auto !important;
  }
</style>

{% include carousel.html height="56" unit="%" duration="7" number="1" %}

<div class="play-container">
  <a href="https://itch.io/embed-upload/7840991?color=333333" class="github-button no-color">
    <svg class="svg-icon" viewBox="0 0 16 16" alignment-baseline="text-before-edge">
      <use xlink:href="{{ '/assets/icons.svg#open' | relative_url }}"></use>
    </svg>
    Click here to launch Room Designer
  </a>
</div>

## A simple way to organize your home

Room Designer is an app that aims to simplify the process of designing and decorating your home.
Whether you want to change the color of your walls, add some furniture, or change your flooring, Room Designer has everything you need.

## Intuitive interface

![A screenshot showcasing the user interface](/assets/images/room-designer/Screenshot 2023-05-24 133124.webp)

The user interface is designed with a simple rule in mind: actions should not take more than ~3 clicks.
This ensures that the UI remains easy to use, even for first-time users. It is functional, but not cluttered.

The features added also rely on this principle. Anything that is too hard to do in a few clicks is out of this project's scope.

## Suggestions

Coming soon - Not sure what color palette to use or how to arrange your furniture? You will soon be able to choose from list of suggestions.

## Sharing your design

Coming soon - You will be able to send mockups, photos, floorplans and links to your projects.
