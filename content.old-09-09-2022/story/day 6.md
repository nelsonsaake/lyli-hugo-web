---
title: "Day 6"
date: 2020-12-05T17:06:20Z
draft: false
--- 

{{< story/time "5" "06" "pm" >}}

I've restarted the project. So far so great. This is going great, but I can't get a handle on the code. It is growing incredibly complex and it is difficult to focus on everything. There are way too many branches and way too many things I’m focusing on at once. So, I am going to restart again. I'm not changing anything in code structure. Just going to build the code incrementally. One step at a time. <!--more-->

{{< story/time "5" "54" "pm" >}} 

I would like to take this opportunity to campaign for building codes in a modular manner; AKA divide and conquer. And not just separating developing the concept from implementation. But also:
+ Develop the concept in a modular manner.
+ Implement the code in the modular manner.

Imagine you have a basket of oranges to sell and separate them into smaller basket and focus on selling one smaller basket at a time. Yeah, that would be selling the oranges in a modular manner. It simply means breaking something into meaning part, usually to tackle each part separately. 

This way you can focus on only a small piece of the code at a time. It makes refactoring easy. It makes debugging(finding and fixing errors) easy, it makes restarting the module easy. Because, now you are not starting the entire code from scratch but just that piece of it. 

<!-- For my backend developers, if you haven't heard of micro-services you should look into it. It's incredible! Interesting! 
If you just want to explore micro-services, I recommend when you do so use the Go programming language.  -->
 
{{< story/time "6" "7" "pm" >}}

Another approach to implementing codes I've seen is doing so incrementally. That is, build the most basic feature, make sure it works. Then add another layer or feature, make sure it works and add another one and another one ... this way you can avoid feature creep(too many features too early). I got this idea from Stroustrup. In fact, the reason I had to restart today is feature creep. I want the code to do something and do it fast, store things in a database, and UI and UX. And I'm building all of it at once and I finding it difficult to keep it all straight. 

{{< story/time "10" "9" "pm" >}}

I finished the code. It has a simple UI. Three threads. Three threads: main thread for GUI, one for target building, and the last one for renaming files. 

GUI: Graphical User Interface, what you interact with, the window with the buttons, text, menu, ... . Target building is a fancy name for selecting which files would be renamed and which folder will be searched next. Renaming read is where the files are renamed. 

UI here also mean `GUI`. `GUI` is charging of showing things on the screen. `Targets` here are files with names ending with `.lyli` and folders. The files are sent to the `Renamer` and the folders are search for `Targets`. `Target building` is the process of identifying `Targets` and sending them out to be worked on. `Renamer` is receives `Target` files(ending with`.lyli`) and removes `.lyli` from the name. 

The `GUI` is in the main thread, the `TargetBuilder` in another thread and the `Renamer` also in another thread. `TargetBuilder` does the target building, `Renamer` does the renaming.

{{< story/problem >}} I'm having a problem. It appears as if some signals and slots are not working. {{< /story/problem >}}

{{< story/nav prev="day-5" next="day-8" >}}
