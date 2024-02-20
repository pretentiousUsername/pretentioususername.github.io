---
title: "High-level programming concepts for non-programmers"
subtitle: "your own personal guide"
author: Ian Mitchell
date: 2024-02-17
---

$$\def\ramenNoodles{\text{ramen noodles}}
\def\rawRamenNoodles{\text{raw ramen noodles}}
\def\boil#1{\text{boil}(#1)}$$

So, a few days ago I was in my scientific programming class---I had missed class
the previous Tuesday, but I was able to catch up by going to the Thursday
session. I was doing alright, but I was partnered with two people that seemed
to have *zero* clue with what they were doing. As much as I would love to blame
MATLAB---because I hate it---the problem was deeper than that. My partners
during that class kept making tiny mistakes, and they didn't know how to fix
them. The  class we're taking, scientific programming, was designed to be a 
first course  in programming, an entry point, but most of the non-programmers 
seem to just not understand anything about what's going on. I can't say that I 
blame them either, because programming---its constructs, grammar, and 
concepts---can be nigh-unapproachable to outsiders. There's a lot of jargon
to cut through.

I can only offer to help a small amount, because the bare-silicon programming
stuff (such assembler, CPU instruction sets, etc.) *is* that hard. But over
time, programmers smarter than I have whittled away at the hard stuff and given
us nice, abstracted programming languages---these have existed since the 1950s,
with languages like [COBOL][cb] and [Fortran][ft] as the easiest to learn
of their day.[^coballin] Nowadays, we have even easier languages, such as
[Lua][lua], [Python][py], [Julia][jl], and [Rust][rs]---there are about
ten-billion other programming languages out there, but the easiest to start
with, in my opinion, are Python and Lua.


[cb]: https://en.wikipedia.org/wiki/COBOL

[ft]: https://en.wikipedia.org/wiki/Fortran

[^coballin]: If you know anything about COBOL, you'll know that it was a
horrible language to write. Being so terrible, COBOL was actually a rather
lucrative language to learn, considering that it was largely used by banks
and not many people wanted to write it. Nowadays, COBOL is being phased out,
and you'd have a better time looking for a job working with an obscure
programming language from the 1990s, like Visual Basic 6.

[lua]: https://en.wikipedia.org/wiki/Lua_(programming_language)

[py]: https://en.wikipedia.org/wiki/Python_(programming_language)

[jl]: https://en.wikipedia.org/wiki/Julia_(programming_language)

[rs]: https://en.wikipedia.org/wiki/Rust_(programming_language)


# How to speak to computers
The first thing you must understand about programming is that you are writing
a *language*, term the name "programming language." Much in the same way that
you can read this text, interpret it, and, perhaps, act on it, a computer
"reads" the text you write for it, and does *exactly* what you say. I must
stress that last part---a computer does *precisely* what you tell it to do.
If you tell a computer to delete a bit of text in a file, it will do that
without question; if you tell a computer to tell all of your friends about an
amazing investment opportunity, it will do exactly that.

Unlike regular, everyday speech, computers do not have the ability to pause
and interpret what you're saying, instead taking what you wrote as gospel.
As such, computers demand strict grammar and syntax, and, unlike in human
languages, your grammar can be flat-out wrong. If you say something a computer
doesn't understand, it does not merely stop to ask you a question---the
computer stops *everything* to tell you it doesn't understand something, and
demands you either put it in a way that it understands, or just remove that
bit you said in its entirety. A computer doesn't really have dialects in the
way you or I might, and they do not take kindly to imprecise wording.

Computers also have a limited range of base "things" that they can work with.
We're used to dealing with *natural*, everyday concepts---you see a chair, you
sit in it, and you know it's a chair. Computers, owing to the fact that they
can not experience everyday life, are incapable of understanding the nuances
of, say, birds or buildings. At the high-level, the main things a computer can
work with are numbers, alphanumeric characters (such as "a"), and lists/arrays
of those two things---all of the programs you've ever run first deal with those
two **types** of data. Even the most advanced physics simulations are, at the
end of the day, just a bunch of numbers, and maybe a few letters.


# Functions
If you think back to math class, you might remember functions. If you have some
number $x$---any number you want---and you want to add 1 to it, you might make
a function, $f$ of $x$, writing it as $f(x) = x + 1$. From there, you can do
all kinds of stuff with calculus, algebra, and whatnot, but that's not
important right now. In math class, you're most often taught to think about a
function like a  machine, a black box with an input that gives you an output.
That is useful for math, but it's a tiny bit more complicated when programming.
I prefer to think of functions as *actions*, which may or may not give you an
output---the function $f(x)$ takes the variable $x$ and adds $1$ to it, it's
an action.

So, let's move away from abstract $f$'s and $x$'s and think about packaged 
ramen noodles. When you pull those noodles straight out of the pack, if you 
don't want to eat them hard, you need to boil them in water. Let's ignore all
of the prerequisite steps---grabbing a pack of noodles, filling a pot with
water, and plopping the finished noodles into a bowl---and just say that to make
those noodles edible, you boil them. If we want to eat some ramen noodles, we
use the function $\boil{\rawRamenNoodles}$; if we want to add $1$ to $x$, we
use the function $f(x)$.


# A word on getting into programming
If you've made it this far, I'm assuming that you want to start programming.
That's great! Outside of apps, games, and everything you would normally do on
a computer, a lot of people outside of computer science program all the time.
I'm a physics major and, technically, a theoretical physicist---though I'm
certainly no PW Anderson---and I program calculations that I could not normally
do using using a pen and paper; statisticians use code to look at large
datasets that would be impractical with a regular spreadsheet; engineers use
code to make sure buildings or circuits don't kill you. Programming is not
exclusively for computer scientists and specialist software engineers---anyone
can talk to a computer, just like how anyone can learn American Sign Language
or Spanish.

One thing I would like to mention is that the culture for online programmers
is just terrible.
