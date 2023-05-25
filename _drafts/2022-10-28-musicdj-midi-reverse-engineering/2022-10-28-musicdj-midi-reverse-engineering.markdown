---
layout: post
title: MusicDJ's non-standard MIDI files
tags: ["tech", "MusicDJ"]
---

MusicDJ is a song-making app that used to be bundled with Sony Ericsson phones. Like many things from that time, it now has sort of a cult following, with a lot of people posting their tunes on Youtube even in 2022.

It only takes a few moments of reading the comments under these videos to realise that there is an itch in this community for a modern remake. So that's what I did, back in 2020. It only took a week to make the first version, and people loved it.

My end goal was complete intercompatibility, but that involved a lot more work.

## Getting the hardware

While I own multiple Sony Ericsson phones, it took me an quite a while to find a FastPort to USB cable. I finally found a cable that has to be at least 12 years old because it is literally falling apart.

I have all the hardware. All that's left to do is to plug it in, right? Well, no, because that would be way too easy. This phone comes from a time where the concept of plug & play wasn't... mature, so I had to fiddle a bit in software.

## Software archival is important

I always knew that archiving software is very important, but I'd never felt it more than in this situation. I have long lost the CD that came with the necessary drivers. On the surface, the solution is obvious, just download them off the Internet...

Naively, I went to Sony's website and obviously found nothing. No problem, I thought, I'll use the Wayback Machine and maybe I'll find a download link that is still alive... Nope. In the end, I found them on a site in another language, made a Windows 7 VM, and breathed a sigh of relief when everything worked just fine.

The importance of resources like the Internet Archive is often overlooked. Having a way to look back in the past should be maybe not a priority, but at least a consideration not only for using old devices like I did here, but also for historical purposes.

## Learning the basics

To understand MusicDJ's non-standard files, I thought making a MIDI parser would be a good start. I found the [MIDI specification](http://www.music.mcgill.ca/~ich/classes/mumt306/StandardMIDIfileformat.html) and a good [YouTube C++ tutorial](https://www.youtube.com/watch?v=040BKtnDdg0) and I started coding.

I learned about some interesting optimization techniques (...) and technical details like [Endianness](https://en.wikipedia.org/wiki/Endianness).

## Reverse engineering

After I successfully parsed a MIDI file, it was time to understand what the unusual SEM1 file header contained. So I started making a bunch of songs on my Sony Ericsson k310.

Other than the minor pain of typing on the small T9 keyboard, it was a relatively smooth process. I figure out pretty quick the way the song was saved, each instrument being separated by one `0xFF` byte.

But there were still two bytes at the end of the header that didn't make any sense. They didn't seem to hold any meaningful data, and would change to a random value if I modified the song. After a good night's sleep I realized that is a checksum and after using a checksum calculator I found that it was using the CRC-16/ARC algorithm.

## Conclusion

That was a really fun exercise. I recommend everyone to try to reverse-engineer stuff because there is a lot you can learn.

On another _note_, MusicDJ has reached over [10k downloads](https://somsubhra.github.io/github-release-stats/?username=pattlebass&repository=Music-DJ&page=1&per_page=30). I'm glad this little app (that I originally made in a week) has reached so many people.

## Download the app (and source code)

Go [here](https://github.com/pattlebass/Music-DJ/releases/tag/v1.5-beta) to download the latest version of MusicDJ. The source code can be found on Github at [pattlebass/Music-DJ](https://github.com/pattlebass/Music-DJ).

## File structure

For anyone interested, here's the whole file explained:

- MIDI header - It's a typical MIDI header, the format being 1.
- [SEM1 header](#sem1-header)
- First track - It sets the tempo.

### SEM1 header

It starts with the ASCII string "SEM1" and it is followed by the 32-bit representation of the length of the header.

Then there is the structure that actually holds the song data: `[tile].....[tile][FF]` repeated four times, one for each instrument.

A `[tile]` has two bytes. The first is the sample (an integer that goes from 1 to 32) and the second is the "category" (an integer that goes from 0 to 3).

| Sample   | Category |
| -------- | -------- |
| 1 to 8   | 0        |
| 9 to 16  | 1        |
| 17 to 24 | 2        |
| 25 to 32 | 3        |

A formula that you can use for the category is `(sample - 1) / 8`.

Lastly, there are two CRC-16/ARC checksum bytes for the SEM1 header.
