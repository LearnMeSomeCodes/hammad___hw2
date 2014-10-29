V0.01
---
Let's start with the menu, yes?

From the assignment https://learnmesome.codes/lessons/06/homework/#/4  
The menu must list the following options:
+ Create new entry
+ View existing entry
+ Delete existing entry
+ Quit Application

How about I make an array with those 4 elements, and have the method for displaying the method print it all to screen with one per line.

Let's see how that works

---
yeah, gotta push to have it show up on github DumbDumb

and the line breaks are for the different commits, dig?

I finally got around to changing the sublime setting for making tabs use spaces. And thankfully the next option is about tab stops, so deleting a tab works the same. God I love this editor

Bully for me, I got the menu.

Forgot that the puts array.inspect actually shows it in the brackets, and normally it prints it like I want with each element to a line. Horraaaay for the little things

---
so I made a little method called show_menu, that literally just puts it.

I thought for a moment to just make a variable, but hey refactoring and all it's better to have something like that a method

alright - so it's just giving me a bunch of errors about the local variable. I'll stick to `puts menu` for now. Sheesh

BUT I can totally have a method to run at the start of the program and to loop back at the end of the nested actions

got fancy and looked up how to add a trademark symbol character http://archive.railsforum.com/viewtopic.php?id=28925

Dunno why it works, so I'll ponder it later. If I had to guess I'd say "unicode," and if I was wrong I'd calmly add "I meant UTF, duh"

I ran into the whol local variable problem, just put the menu variable in it's method 

--
alrigh, so I'm long overdue for a commit. 

---
running through the options...aaand good!

I might not have mentioned this but I used '''Print''' so it wouldn't add a new line to the selection

and in markdown, code is in `backticks` not '''single quotes'''
```
three backticks are a code block
normal markdown has it with 4 whitespaces, fyi
```
and all this is on http://daringfireball.net/projects/markdown/syntax#precode and the github md page

so the loopy loop looks good, now to commit and fill it in. 

##FOOOOCUSSSS## hashtags
**FOOOOCUUUUSSSS** splats


---
the hastags are headers, asterisks are better for bold. Well, I think ##this works## but whatever

let's see what to do when the first option is selected: create new entry

So it'd be awesome to make a class to copy for each "person" in the address book

I think I need some coffee...

but before that! I made a method for creating entries, time to commit and test

and just noticing: the coloring for .md in this theme

threee lines are a good divider if there is a whitespace above, actually colors the line a little blue

if there is something above the lines it's orange like a header

---
now that I have the header right, let's see if the pound sign makes a header or bold text. the splash operator is bold fo' sho'

and yes, the three lines are thicker and two are thin

--
onwards: testing

hah, error on line two.

need commas between the symbol arguments

aaand another error: maybe adding an initializer will fix it

HAH don't need the initializer, here. and it's giving me an error

but I did end up using it

So, when I inspect the array the object looks funny, but appears to have everything. So I think that's it!! 

Time to see if it works when viewing, which is the next function

---

oooh used the wrong syntax for the Array#Each

the first argument is the ELEMENT, and the second is index  
lemme give that a spin

almost! it's actually Array#each_with_index

BINGO

adding a 2 more entries, 3 total, for the test address book

oh, and have to have an expanded view for selection. 

Commit first :D

---
adding mad comments, to make more readable. Or at least I hope that's what it does

oh, so running some stuff, and the loop is going and goin

Found out why: .to_i actually converts non-integers to 0 http://apidock.com/ruby/String/to_i

so, have to find a way to both accept the index 0, and check for invalid entries.

---
v0.1 end

#v0.2#

well, it's 1:30 now, and I'm taking diminishing returns in the quality of my thinking process.

So, I'll sleep on it and maybe it'll come to me during work

--
ah, so `git push` doesn't push tags...bugger

something to look into later http://git-scm.com/book/en/v2/Git-Basics-Tagging

actually it's as simple as  
`git push origin --tags`

or just the version tag name in place of --tags

and one last thing! I overthough things with version names in last weeks HW, git is pretty clean about it so I can get away with v0.1 to v12.100 and so on

---
dude, I fixed it! before I went to bed too!

I reveresed the order, and changed the conditional to both check to see if the answer is not "0" when the .to_i = 0

and I had to gets.chop after all, so I added .chomp to the menu too

man, I am so proud of figuring it out

fixed some spacing stuff in the menu, too. But that's just wasting time...
