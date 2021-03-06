---
title: "The hummingbird: a synth I'm working on"
date: 2022-07-13
author: Ian Mitchell
tags: ["synthesizers", "music tech", "projects"]
---

When people think of analog synthesizers, they---and I---like to think of
massive, hulking modular systems, steel Junos, and woodgrain. Of course,
that's all great---I *love* that kind of stuff. But, here's a problem: 
What if I wanted to make something small enough to fit in a backpack while
remaining affordable?---and what I wanted to give it features that are
out of the ordinary for an average synthesizer?

That's the main goal of the Hummingbird---something that is as small as
possible while not sacrificing on features. The main goal is to offer a
synthesizer that has stable tuning, small size, and a massive sound. But
I'm not satisfied with taking the easy route---such as throwing in a bunch
of LM13700s[^13700]---I want to make something more distinct. For starters,
I'm planning on having the CV generated by a Raspberry Pi Pico and a
DAC,[^dac] which would allow for not only Western 12-note tonality, but
allow for user-programmed tuning systems.

The inside of the Hummingbird will be composed of module cards which will
allow for easy replacement of components, and a smooth build process.
This is due to the fact that I'm trying to make almost every single
component in this synthesizer, due to the size constraint, surface-mount
(SMD). While through-hole is superior for soldering---no one likes having 
to solder tiny resistors---size constraints would make their liberal use a 
daunting task. On the flipside, SMD parts have a lower thermal mass, 
generate less noise, and are generally cheaper than through-hole 
components. So yeah, those module cards will be absolutely necessary for 
any DIYer that wants to build the synth, but doesn't have the money for a 
microscope.

The VCO section will be based off of René Schmitz's [CMOS VCO][4069vco],
which I find interesting due to the fact it's using a CD4069 to make a
*complete* VCO. I'll be adding in my own twist---a flip-flop based 
suboscillator, and a "superoscillator" that will be one octave *above* the
VCO. This will be so I can squeeze out as much sound as possible, even with
a *single* integrated circuit---I also *love* the sound of the SH-101's
suboscillator.[^vcoNote]

Other than that, I'm planning on going a bit big and throwing either a
Moog derivative filter in there, or a discrete recreation of the [SSM2044
VCF][ssm2044].[^rossumPatent] A synth is 75% filter, and 25% other stuff,
after all.[^anotherFilter]

That's basically everything I have so far. I hope to get this synth done 
within a year. I have a substantial amount of theoretical work done, I 
just need to actually build this thing, design the PCBs, and then design a 
case to put it all in. Once I'm done, I might send one to my old 
electronics teacher from high school---since I spent about half of my
time in that classroom either reading about synths, building synth 
circuits, or reading about physics stuff.


[^13700]: To be honest, I think that the [LM13700][lm13700] is one of the 
most overused components in synthesizer history. It is useful, and quite 
good, but virtually every synthesizer from here to Timbuktu uses it.

[^dac]: I'll likely use a TI [dac60501][dac60501] due to its precision 
internal reference voltage, and its affordable price.

[^vcoNote]: One particular advantage the [CD4069][cd4069] has over a 
traditional synthesizer VCO chip, such as the [SSI2130][ssi2130], is its 
combination of excellent thermal stability (see figure 2 of the CD4069
datasheet), wide availability, and cheap price.

[^rossumPatent]: See Rossum, David. 1983-09-13. Lowpass filter with
electronic control of cutoff and resonance. [US Patent 4,404,529][rossum], 
filed 1980-12-30, and issued 1983-09-13.

[^anotherFilter]: Another interesting filter is shown in patent
[DE20 2010 016 326 U1][dePatent] by Thomas Strauss, which uses some 
transistors, diodes, and an op amp to make a filter. I'm thinking of 
having multiple options, and making the pins for both filters' modules
identical.


[lm13700]: https://www.ti.com/lit/ds/symlink/lm13700.pdf
[dac60501]: https://www.ti.com/product/DAC60501
[4069vco]: https://www.schmitzbits.de/vco4069.html
[cd4069]: https://www.ti.com/lit/ds/symlink/cd4069ub.pdf
[ssi2130]: https://www.soundsemiconductor.com/downloads/ssi2130datasheet.pdf
[ssm2044]: https://www.njohnson.co.uk/pdf/Siel/ssm2044.pdf
[rossum]: https://patents.google.com/patent/US4404529A
[dePatent]: https://patents.google.com/patent/DE202010016326U1/en
