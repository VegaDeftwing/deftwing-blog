+++
title = "Finding Faults"
date = 2018-09-08T14:51:46-05:00
description = "Bad RAM, good diagnostics"
draft = true
toc = false
categories = ["computer"]
tags = ["guide", "computer", "debug"]
images = [
  "h"
] # overrides the site-wide open graph image
+++

I woke up on Monday to my desktop, on which I run linux, having frozen. This obviously is a bit concerning, but it wasn't a
regular problem, and I knew I didn't have any unsaved work or anything, just some services I wanted running in the background I
didn't want to have to restart manually though not a big deal to do so, so after switching to a TTY failed I decided to just hard
reboot. That's when things get interesting. My system wouldn't boot. Alright, so now what? That's why I'm writing this. Not
because I think my issue is common, but because the way I went about diagnosing it is a valuable skill in my opinion.

<!--more-->

The first step in debugging anything technical is to narrow the problem scope. In programming this may be removing function
calls, or adding stderr print statements to get an idea of what's happening. We're not at the hard debugging like gdb yet because
that's like taking a scalpal to a tree- use the chainsaw. In my case this meant narrowing down what was causing the system not to
boot. To do this I tried booting a different kernel, that failed. I tried a different OS. That failed too. I tried a live OS on a
flash drive. That failed. This is where the next part comes in handy:

Know when you're looking in the wrong place. I have been using the same hardware configuration for at least 3 months (I update my
hardware regularly) so at first this issue looks like a software problem, after all, the system was still on and I could still see
an image on the screen, just it was frozen. Furthermore the system still posted. That's where noticing that no OS would boot got
my attention, it obviously had to be something outside of software, except for maybe the BIOS/firmware. So, we're back to step
one. I started removing any non essential hardware. I removed my second GPU, any extra USB devices, all my extra (non OS) drives,
you get the point. Still no dice. Then I started removing sticks of RAM. Bingo. One of my sticks of RAM had gone bad, and was
corrupting any data it was trying to store, hence the OS couldn't even get enough done to load in. I started swapping sticks and
repeatedly running memtest86 until I identified the bad stick of the four.

In this case, because it was a hardware issue, fixing the problem was the same as finding the problem, since my only choice short
of reflowing the stick and hoping that was the issue was an RMA, and given the lifetime warranty that's what I did. But, what
about when you find a problem you don't actually know how to fix yet? where do you go next. Well, just yesterday I was updating
some stuff regarding SSH on my system and discovered the way SystemD and openSSH handle ports has changed, and unfortunately most
of the documentation online is wrong. So what do I do? The secret is to try things. So many people are scared to work on
computers or change something in their code because "I might make it worse or mess something up". Code, computers, etc- it's like
a video game: the penalty for messing up is in your head. In reality each time you play a level you get better at it and you
understand it just a little more. I started by changing the 'PORT = xxxx' line in /etc/ssh/sshd_config and seeing what happened
with both sshd.service and sshd.socket when started, but I noticed that both were still using port 22. The change just wasn't
taking effect, no matter if I restarted my machine, the service, anything. Running 'systemctl status sshd.service' just told me
what I already knew, still on 22. I tried googling the issue and found that the service files ('systemctl edit sshd.service') is
now where the port should be defined, but I wanted to use the socket, and setting things in there did no good, so what now? well,
what's the worst that could happen if I go digging and edit the sshd.socket file? ssh doesn't work? that's no worse off than I am
now, so I did, restarted the socket, and ta-da

Basically I'm telling you two things:
1. Narrowing the problem down is usually half the battle, and the most important half
2. Don't be afraid to try fixing something, but know how to undo your 'fix' if you have to. There's no better way to learn than
to make mistakes, and it's pretty hard to make one so bad it's unrecoverable

just don't be stupid on production servers
