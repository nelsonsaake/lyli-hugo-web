---
title: "Day 17"
date: 2020-12-16T11:17:42Z
draft: false
---

<!-- {{< story/time "11" "17" "am" >}} -->
## 11:17am

It's been some few days since I worked on this. The only thing left is telling if the program is finished. 
The entire thing is multithreading. There is no way to know for sure, because the code is not procedural, it is reactive and event-driven. <!--more-->

The components(QObjects) are kept alive, the threads are kept alive until explicit exit or quit command is given. The components only do work when a signal is sent. For example: the `Renamer` will only rename a file after a signal with the filename is received. 

This of it as boats at a river bank. They are always there to ferry passengers, their work is never done because, they don't know when the next passenger will arrive. Their work is never done because they can't tell which passenger is the last passenger.

That's the problem, I'm trying come up with a way of telling when the work is done so that all the components stop work. The way a normal program works is: it start follow the instruction to do some work then it stops. This is wait for everybody to finish before it stops. Or it can tell everybody to stop so it can stop. The problem is the component don't know when the work will be finish so they will never stop. What I trying to do is find out when to tell them to stop, so the program or some part of the program can stop. This is also important to know when the work is finished so when alert the user that work is finished.

Over the last few day I have been thinking about this, and I think I have an answer. The UI need to know when to tell the user the scan is finished. 

So, the approach I'm taking about is, if the UI doesn't receive any signals in about 30sec, it would send out a signal like a flare, if the signal returns in due time, then the UI will know it is finished. I can't explain it any further because myself, I don't fully understand yet.

{{< gist nelsonsaake "31b645a58cdf525f4cdc868e3471651a">}}

<!-- {{< story/nav prev="day-10" next="day-22" >}} -->
