---
title: "High-level programming concepts for non-programmers"
subtitle: "your own personal guide"
author: Ian Mitchell
date: 2024-02-20
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

Let me state, first, that "high-level" concepts in programming are *not*
advanced concepts. When we say "high-level," we mean that all of the hardware
stuff---the CPU instruction set, along with all the $1$s and $0$s---is
abstracted away so as to be more natural to regular people; rather than thinking
of a memory address holding a single number, we can just think about a variable
equal to a number. High-level programming is incredibly effective at making
complex systems work because we can think of them in human terms. The modern
programmer has an incredibly rich set of languages to work with, the vast
majority of them free---both as in "free beer" and "freedom"---and packed with
sophisticated features.


[cb]: https://en.wikipedia.org/wiki/COBOL

[ft]: https://en.wikipedia.org/wiki/Fortran

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



# A computer can't sit in a chair
Computers have a limited range of base "things" that they can work with.
We're used to dealing with *natural*, everyday concepts---you see a chair, you
sit in it, and you know it's a chair. Computers, owing to the fact that they
can not experience everyday life, are incapable of understanding the nuances
of, say, birds or buildings. At the high-level, the main things a computer can
work with are numbers, alphanumeric characters (such as "a"), and lists/arrays
of those two things---all of the programs you've ever run first deal with those
two **types** of data.

Indeed, much of the really sophisticated programs you see nowadays---game
engines, digital audio workstations, and your computer's operating system---work
by creating what can be described as 




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


# Ok, now what?

