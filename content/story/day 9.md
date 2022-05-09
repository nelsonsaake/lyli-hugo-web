---
title: "Day 9"
date: 2020-12-08T11:29:51Z
draft: false
---

{{< story/time "11" "29" "am" >}}

People, we are back in business. I won't lie I was really disappointed in Qt for a minute there. I was seriously considering Golang for the job and all my hopes of beautiful GUI flashed before my eyes over the weekend. But I have installed newer version of Qt and uninstalled the old one, now things are look promising.  
+ First off, I got some errors that the old one did show before.
+ I set a custom font for some UI widgets, the old one wasn't showing the custom fonts but this one is. 

Over the last few days I was wrestling with some bugs(errors in my code). First, it was communicating with the database, then `signals` were not being handled properly. Then I tried refactoring the code to make it more readable: that too created some more problems, so I had to reverse the changes. Finally I was thinking about changing the version of Qt or using C++ or Golang.

Programming is like writing an book. When you write a book, someone else can read it. When you write a program you produce a code(instructions). A program can read your code to create another program that does something. Or a program can read your code to simply do something.

You can write an essay in English, French or some other language. In the same way there are different languages for writing code. C++, Golang are programming languages.

Qt is C++ with some added features. Qt is also the name of a software, that allows you to write C++ with those added Qt features. This makes Qt is a framework for C++. Because it's adds to the standard C++ but the underlying rules of C++ still apply.

Fingers crossed. Hopefully, by end of day, I will be done. 

Something fun or something to ignore, whichever you choose you can't be wrong: 011404 09 130125 1903151805 01 04012005.  If you can decode this. I will tell you about it. Email: ghuywithissues@gmail.com. Cyrus knows the key btw. Cyrus AKA @cyrusgooddays the musician. 

{{< story/time "12" "00" "pm" >}}

I'm looking at some outputs, it is incredible. 

{{< story/time "12" "42" "pm" >}}

I'm glad to announce after some few bug fixes the code is running. Now I have to create some test sandbox and make sure it works. What next is, add icon, check the UI. Even though the components are running in a different threads the UI is still freezing: I have to check that. Once I'm done, I will make my big announcement to anyone who may be concerned that the app is useable. 

{{< story/problem >}} Components are in different threads but, UI is still freezing. {{< /story/problem >}}

{{< story/time "3" "14" "pm" >}}

Solved the UI freezing problem. Basically, I pile up the updates to UI and push them to UI at my own time. So, updates are pushed to UI in an interval of: 100ms (for now). The updates are just to show the user that the program is doing something. So, when it actually appears doesn't really count as long as it’s reasonable. 

{{< story/time "5" "8" "pm" >}}

Let me tell you guys about the problem with the `signals` and `slots`. In the process of adjusting the code to work, I made some mistakes I didn't even know I was making. The rule is if you want to send a signal that is complex. You have to register it before hand. I grouped some pieces of information to be sent as part of one `signal` making it complex. I didn't know I had to register it after that, and that caused the problem.

In the early days I compared `signals` and `slots` to oranges and baskets. Sending `signals` to `slots` is like putting oranges into a basket. Once the `signals` get to the `slots` the program does something with them. A signal can be anything. It can be single piece of information or a lot information grouped together. To compare it to fruits again: it can be a single orange or bunch of oranges mixed with apples and berries. The error was the system telling me: it does not see the `signals` I was sending, simple; so, I should register them.

Code for registering the type:

{{< gist nelsonsaake "668154b9ed78c33847e4d4e82f7ee71f" >}}

# 

<!-- *If I had 10 hours to cut down a tree. I would spend 6 sharping my axe.* - Abraham Lincoln.

I guess I should have sharpened my axe more. My axe is programming, is my IDE and "What you know you don't know". Before I start make sure you get the best resources available to you and learn those things you know you don't know but you might need.  -->

I just came back home about an hour ago. 

I'm about to make an Icon for the app. At the office I started the process. I wrote .lyli on a piece of paper and took a picture. Now, I'm about to push the picture through an Icon maker app I downloaded via windows store. 

{{< story/nav prev="day-8" next="day-10" >}}
