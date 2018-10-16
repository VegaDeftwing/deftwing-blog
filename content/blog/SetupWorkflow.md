+++
title = "Vega's Setup and Workflow"
date = 2018-09-09
description = "Okay, so maybe I sit in this chair too much..."
draft = true
toc = false
categories = ["workflow"]
tags = ["workflow", "personal","meta"]
images = [
  ""
] # overrides the site-wide open graph image
+++

I've always had a strange interest in optimization. This is probably one of the reasons I love working with computers and electronics so much- they can be used to optimize, sometimes to the point of automation, so many tasks and then even the execution of this task itself can be made faster and better by writing better and better code. But I don't just see opportunity for optimization in programming, but also in how we go about our day to day lives. Thus, I tend to spend more time than is probably optimal optimizing my own workspace and work flow. So here goes: This is how I work.

# My Digital Home

I use Linux because I find the way in which Windows forces work flow patterns onto the user annoying. I prefer to setup my system in a way that works for me. Using Linux doesn't really tell you much though, as theres a lot of options here. So, to start with, this is a screenshot of one of my screens:

![test]({filename}/images/cleanscrot.png)

The most obvious thing you'll see is 'pscircle' setting the wallpaper, but beyond that you'll notice the bar at the bottom. This is 'polybar', a customizable bar that can take input from any command line program and display it on the bar, and has some capability for interaction, like playing or pausing my music. I have mine setup a bit different on each screen, but worth noting is the centered text in the bottom which is Tolkien's Tengwar (elvish), these are my open workspaces in the i3 window manager, my preferred desktop environment as it maximizes the use of screen real estate and allows for very fast movement of windows or workspaces among monitors- something I find tedious on windows or on in floating window window managers - as it is a tiling window manager. If you're not sure what that is, I recommend you give it a Google. (or DuckDuckGo, or whatever you prefer. You do you.) But this picture may be enough to give you the idea:

![test]({filename}/images/dirtyscrot.png)

From there my main day to day tools include Thunar as my file manager (though I do a lot of just manual cd/cp/ls/mv/etc. from the terminal) because of it's fast navigation by typing the beginning of a word. I'm still not 100% happy with it, as a fuzzy search of what I'm typing would be nicer, but overall it works pretty well.

In that screenshot you'll also see I use two different terminal emulators. 'Kitty' a modern GPU accelerated terminal that is blazing fast, and 'cool-retro-term', a kinda fun looking terminal that just still gets the job done. My main shell is [xonsh](https://xon.sh/index.html), which is set to run when I run Kitty, but my actual shell is set to ZSH so that my system shell remains something stable, and if I launch a different terminal (like cool retroterm in that scrot) then that uses ZSH as well.

On the note of the shells, my .zshrc, .xonshrc, and other config are available for download at [this github link](https://github.com/VegaDeftwing/confs) But I'd like to go in depth a little here.

[I](https://github.com/sjl/t)'ve 'replaced' via alias some of the built in commands like cat with alternatives like bat so that they work better for my needs. You'll also notice a few single letter aliases. The most frequently used of those are h to open htop and n for ncmpcpp, my music player (well client) of choice. I find out of the seemingly infinite number of music players I've tried ncmpcpp is the fastest and easiest to use once it and mpd are configured.

Getting out of my shell, some of the graphical programs I use everyday include Vivaldi as my web browser and typora/marktext for text editing in md. Vivaldi was a no brainier once firefox killed off Tree-Style-Tab and I couldn't bring myself to go back to tabs at the top. Typora and Marktext (I ususally use marktext, but typora has TOC support which I need for large docs) are my go to for just spewing out text, like this, since they're unobtrusive and just let the content flow without formatting getting in the way. I've also found that they work wonders for taking notes in classes.

To quickly rattle off some others, I typically do most of my chatting though telegram which has a fantastic linux client. I do some package management using Pamac as I'm running Arch Linux. For my officey things I have yet to find a scenario where libreoffice doesn't do what I need. I regularly use feh for quickly viewing images, and nomcas for when I need something that can do cropping or rotation & etc. My main editor for hammering out code is Atom with some IDE extensions as well as a bunch of extra plugins. Also I have steam installed for gaming, though sometimes I reboot into Windows or run Windows in a VM with a GPU pass though for that as well. When I do that I use synergy and looking glass to make things a bit easier to work with, again though, that's deserving of it's own post. I tend to do a fair amount of stuff in Gparted on part of how many disks I have attached and how often I deal with disk transfers. VLC has been giving me issuse on multiple platforms, so I've started using parole media player on my desktop for videos. For video editing, sadly, linux just hasn't quite had an offering I'm happy with yet so I reboot to windows to use Davinci Resolve.

Obviously I use other software and tools, Blender, Etherape, QEMU, etc.. but I don't think that's as relevant.

On the note of typing a lot, I'm one one of the nerds that uses Dvorak, but I'm actually in the process of switching to my own layout that's heavily Dvorak based called [LyrXKB](https://github.com/VegaDeftwing/LYRxkb) as it lets me type some extra fun characters that come in handy: ☐☑☒⎨⎪⎫...ⅰⅱⅲⅳäő≥≤ ... you get the idea. Soon it will be able to handle both Greek (math sym) and more discrete math symbols, but that's in progress and will get a post of it's own when it's time comes.

from a workflow perspective it obviously depends on what I'm doing. As covered previously for large, basic text documents I prefer markdown and those editors. Office is Libreoffice etc. But as I use those I like to have one monitor running a task that I deem a background task - something nearly autonoums that needs intervention once every hour at max, one monitor for web and other media browsing/research, and one monitor for the actual task at hand. In the case of less screens I settle for organization via workspace.

To manage my ToDos and time I use Google Calendar and the Sectograph app on both my phone and smart watch (both android) as well as the [command line program 't'](https://github.com/sjl/t) on my main system for less concrete (not work/school related) tasks - as well as a white board for listing my weekly/monthly deadlines and then I just schedule time in GCal to get those tasks done. For the most part this is done on a repeating schedule as most of my assignments are repetitive in due date and time to complete.

# In the Real World

I don't want to go into spectacular detail about my setup, partially because I don't see any value in hardware bragging, partially because it's not applicable knowledge to most people. I will share that I think mechanical keyboards are bomb, and I love my MXBlues. I tend to prefer rocking a large, bulky tower so I can do frequent hardware swaps, and I usually have an obscene amount of USB devices attached to my system (at one point I had over 35). I do like having a gaming mouse so I can bind window navigation to it, and that works particularly well on my Roccat Tyon. I also have a Stinky Footboard, a USB footpedal which I use mostly for push to talk at the moment, but I plan to use extensively for switching layouts once I'm running a finished version of aforementioned LyrXKB. I've found for me, that 3, 27", 16x9 monitors in a row is a sweet spot, but obviously cost and space are considerations, and actually right now I'm only running 2 since I'm in the dorms again for a while. Back to a workflow perspective, when I can (and I cant in this dorm room >:( ) I like to have a large, deep desk with a slide out keyboard tray so I can work on papers or other projects directly on my desk and get my keyboard and mouse out of the way when I want. I also like to have  speakers rather than headphones when I can without bothering people as I find the comfort and freedom to move around much nicer.

When I'm on the go I vary between two laptops, one that is a royal piece of junk that has a similar to my normal linux set up on it, and one that's running Win10. The Win10 laptop is a pretty beefy system for it's weight with some of the most bottle necked specs I've ever seen. The i7-xxxxU part is still funny to me. How intel can call a system with 2 cores an i7 in 2017 (when this laptop was released) is beyond me, but I digress. It works rather well for just taking notes and getting stuff done in classes, and I use windows on it as it ensure compatibility in the more professional environments. Furthermore, I can always just SSH into the main rig- since I have a backup ssh key stored in the RFID implant in my right hand that's never an issue either.



# The Typical Day of a Vega

I usually wake up at about 7:30, and then actually get my ass out of bed by around 8:00 and then be fully up and running- having had breakfast if I chose to- by 9:00

From 9 to 10:30ish on most days I'll fire up some Youtube and get a dose of news and content that's usually more educational in nature and usually tech related. My main go tos are [Level1Techs](https://www.youtube.com/channel/UC4w1YQAJMWOz4qtxinq55LQ) and [Philip DeFranco](https://www.youtube.com/user/sxephil) for news, and then content like that from TED talks, DefCon panels, [The Theught Emporium](https://www.youtube.com/user/TheChemlife/videos), [Cody's Lab](https://www.youtube.com/user/theCodyReeder), [Live Overflow](https://www.youtube.com/channel/UClcE-kVhqyiHCcjYwcpfj9w), [CNLohr](https://www.youtube.com/channel/UCG7yIWtVwcENg_ZS-nahg5g), [3Blue1Brown](https://www.youtube.com/channel/UCYO_jab_esuFRV4b17AJtAw), and [This Exists](https://www.youtube.com/user/thisexists) to name some of my favorites. at around 10:30 I take about 10 minutes to go though my schedule for the rest of the day and make sure my schedule and mandatory todos/deadlines match up and make any corrections that are necessary. Then I try to hammer out at least a little work on something that's on that list by either priority or just what I'm actually feeling up for. Around this time is where I usually have class, though that schedule varies from day to day, with most days I'm done between 3 and 5, from there It's a good mix of planned out time for myself, projects, and work/school. I do try to micro manage my schedule as a tentative plan (at least for weekdays) but I rarely end up actually sticking to that schedule. It's more of an extra reminder that I should be spending about that much time that day on that thing. I'm actually working to following it more rigidly though as it does have time set aside for all of the things I generally want to do and prevents me from accidently getting into a YouTube induced coma.

To Further prevent time wastage I have my watch set to do very short vibrations, one pulse at the half hour, and two short pulses at the hour ( [This wasn't actually my idea though](https://theamphour.com/397-5-an-interview-with-loial-from-krontech/) ) .

# Wraping Up

I hope at least some of this was interesting and/or helpful to you. If you have any questions or comments as always feel free to send me a PM on telegram @Vegadeftwing

I'll probably be updating this same blog post from time to time, adding to or changing things as the way I work ever evolves, so if that's something that interests you, you may want to check back to this in the future.

I'd also love to hear what you do differently and why, I'd even gladly share it on this blog.
