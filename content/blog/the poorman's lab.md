+++
title = "The Poorman's lab"
date = 2018-09-08
description = "but Mr. Krabs..."
draft = true
toc = false
categories = ["electronics"]
tags = ["lab", "advice"]
images = [
  ""
] # overrides the site-wide open graph image
+++

So you're getting into the world of live wires, PCBs, 'duinos, FPGAs, power supplies, frequency generators, oscilloscopes, transformers, capacitors...

Even all the terminology can be a lot to take in at once. I'm going to assume you know the basics of the terminology like what voltage and amperage are. If you don't you need to do more reading before this. This guide is meant to help you find and buy the best equipment for your use case, but if you don't even know Ohm's law yet you don't really need equipment yet.

> if you already know all the terminology and don't need a super quick intro skip down to the 'Equipment' heading

So, I'm going to give you the montage speed course in EE and Embed Systems

PCB - Printed Circuit Board - the big stereotypically green backing that all the other components sit on

IC - Integrated Circuit - the usually black chips you'll find in a circuit that perform a 'complicated' function in a smaller space and lower cost than if you had to make the same circuit full scale

Microcontroller - a small computer, typically low power and low processing and ram ability, but useful in various projects. Inc. Arduino, ESP8266/32, Pic, STM 'blue pill', Teensy, and many, many more

'Duino - Arduino, Genuino, etc. - Small, cheap Microcontrollers that are well documented and used both by the maker industry and by industry

FPGA - Field Programmable Gate Array - Hardware that you write in software. black magic. Really really really fast IO, decent processing ability, kind of hard to understand. Google for more info

Power Supply - Take a guess - Variable Supplies allow you to control voltage, and some current limit as well. Standard PSU's just output set voltages and current limits, think like a 5V , 1.5A wall charger for your phone. In some ways a battery is a power supply too. May be called PSU or Power Supply Unit

Frequency Generator - Usually can be set to output various wave types (sine, square, triangle, etc) at various frequencies 10hz, 1khz, 5mhz, whatever.

Oscilloscope - 'O'Scope' - let's you see a voltage over time graph where you hook up your probe. If you were to hook it directly into your frequency generator you can see the wave in question. Most of the time a good O'Scope negates the need for a frequency counter, which just tells you the frequency of the incoming signal

Logic Analyzer - like an O'Scope that can only see on or off, but do so much faster (usually) and it can interpret the data for you, to say decode the incoming serial data into ascii text so you can read it.

Multimeter - Can be used to check DC or AC voltages (AC gives RMS), resistance, continuity (does this point connect to this point), and current. Sometimes more or less depending on the meter.   

# Equipment

An ATX Power supply - These come from Desktop Compters mostly and usually have 3.3,5,12, and -12V lines, which is for a good chunk of what you're going to do, most of what you'll need. They also typically provide more than enough current for any project. small breakout boards like this one

![test]({filename}/images/atx.jpg)

can be found for under $10 shipped. and the PSU itself can be found used or salved from a PC for as little as free to as low as $15 pretty easily making it a great go to for projects where you'd be worried about damaging a more expensive lab PSU should you have one. To make it so you can get other voltages DC - DC voltage bost/buck converters can be found reasonably cheap that will ususally take things up to ~50 volts.

![test]({filename}/images/boost.jpg)

> Update: Upon sharing this page with some friends, A cool dude by the name of Ferix recommended I warn people that the ATX route does require more knowledge as it's easier to do things incorectly and assuming you're not on the fused portion of the board mentioned above it's easy to cause some pretty nasty issues. It's about the same price to get an actual lab PSU, albeit a very meh one, just by looking up "lab bench power supply" and shopping around. You'll easily find one under $40 Sadly these cheaper ones tend to not actually display their true voltages so you'll want to check what the display says against what your multimeter says. Though that's good advice on the atx method as well. One final note, it's a good idea to look for a multichannel lab PSU if you're going this route and can spare the change. It makes things like providing a -12V and +12V rail much easier. You could always get two single channel supplies, though that's a bit of an odd work around.

Your multimeter is something you'll use a lot, but thankfully doesn't really have to be expensive. I'm not going to make one solid recommendation as I think doing research is worth it, but know what to look for: The abililty to test npn and pnp transistors, measure capacitance, and attach a temperature probe are all reasonably common and useful. Furthermore, auto range setting is very handy. You can usually find one that meats all of those recommendations for about $35 shipped, though if you're just starting out and have less needs then a cheap Volt, current, resistance meter is like $15. Good meters - accurate, durable, etc- can easily hit well over $100, but odds are you won't need anything like that yet if you're reading this.

Next up is a soldering Iron, basically you have 3 choices- a cheap, dead simple one setting plug it in and done iron for like $10, a TS100 for about $50 to $70 or a full, high end station at ~$120, from those that I've talked to the TS100 is sort of the winner for all situations though. Be sure to get some thin solder wire as well, because you may need to solder pins on to an arduino or something. Flux is probably in your best interest to buy now too. If you're looking to desolder, it's worth it to get solder wick and the solder sucker at the same time. Solder suckers can be had for pretty cheap anyway.

Next up is a logic analyzer, I'm not going to link to or show you this one because it's comically illegal, but knockoff Saleae logic analyzer's can be found on ebay for less than $8 and they work reasonably well. The cheaper ones - the really small ones - work best in my experience. They're nothing compared to the real deal, but it's a nice tool to have around even if you want to get the real deal as it's cheap and replaceable, nice for those sketchy projects.

Moving on, you'll want to put about $50 into getting some component stock. Because you're probably not trying to make stuff at scale and only working on projects generic no name parts are totally fine, and you'll probably want though hole parts- that is resistors with a wire leg on each end, not a small like 1mm long rectangle. Bulk resistor kits can be had for about $15-20, you'll probably want two capacitor kits, one ceramic (orange circles) and one electrolytic (black tubes), each kit again will probably be around $20, though if you need to save a buck you can probably find a combined kit with less values. Rinse and repeat with a kit for diodes, transistors, and inductors. Depending on what you want to do, getting a 74 series logic IC kit may be nice, and you'll almost certainly want some 555 timers, opamps, octocouplers, and 8 bit shift registers. Beyond that you'll probably want to buy things on a project-by-project basis. The final things you'll need to start prototyping circuits is a breadboard or two, some protoboard pcbs, and some wire. Breadboards are sort of annoying to buy as if you go to cheap you'll get some very poorly made off brand ones where the markings are illogical (what one end of the board calls A the other end will call Z, etc.) and connections are bad. Generally you don't want to get breadboards on Ebay, look for reviews and get something nice, it should last you a while. For wire I recommend you get multiple types. The generic breadboard jumper wires are a good start, some bulk spools of various colors of stranded wire will be nice, and a spool of speaker wire can come in handy too. I do advise against generic kits that come with arduinos or are bundled with parts as these usually leave a lot to be desired, but if you're not really sure electronics is for you, this isn't necessarily a horrible option.

I'm not really going to make any direct recomendations on microcontrollers, though I would advise the breadboard-able form factor over the 'uno' shape. Being able to just press the board into the breadboard will make life much easier. That is arduino nano >> arduino uno. I'd actually advise a bit against arduinos for any but beginners as well, as STM32 or ESP8266/32s boards have so much more power and cost generally the same. If you're interested in learning about FPGA's finding used boards from colleges can be nice even if they're ancient since they'll typically have more example code and better documentation. Keep in mind FPGA's are a more advanced topic though. I'm not trying to scare you off, just help you start in the right place. Small computers like the Raspberry Pi or CHIP with GPIO can be a good middle ground too.

Frequency Generators are another tool you might want, though if you do things right you maybe able to just use a micro controller with PWM and a capacitor. If you do need one this is not something I recommend you pour money into, the 'FG100 DDS function generator' or any other cheap one you find online will almost certainly be just fine unless you're doing something rather advanced.

Finally, the one I've been avoiding, the oscilloscope. I'm not gonna lie, this one sucks. Basically you have three options. You can buy a crappy $20 micro controller based scope that isn't good for much but is okay to learn on, you can buy a ~$80 old CRT scope which will work but is outdated, or third you can bite the bullet and pay between $3-400 and get a good DSO (Digital Storage Oscilloscope). Personally I don't recommend ever getting the midrange option here because at that point you may as well finish saving up and bite the bullet to get a good one, but I did want to at least mention it.

Finally, some extra parts and tools I'd recommend getting include a set of potentiometers (variable resistors), buttons, and switches, some tweasers and picks, some terminal connectors, a third-hand / helping hand (don't cheap out on this), wire nets, a set of small screwdrivers, and some alligator clip wires.



![test]({filename}/images/driver.jpg)

I'm very well aware it's easy to spend $1000 on these recommendations, but if you're frugal this can be done for probably around $300 and give you a lab that's much nicer than you'd think, and then when you're ready to get that $350 Oscope and a better iron you can.



I hope this helped. If you want any more advice or have recomendations to improve this drop me a PM on telegram @Vegadeftwing !
