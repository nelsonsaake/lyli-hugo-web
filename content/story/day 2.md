---
title: "Day 2"
date: 2020-12-01T09:19:56Z
draft: false
---

<!-- {{< story/time "9" "19" "am" >}} -->
## 9:19am

I found the solution to the yesterdays error. All I had to do was interchange the order of some lines of code. Somethings need to happen before can happen others. A similar scenario in this case is: you need to have table in order to put a plate on a table.   <!--more-->

To be technical about, if a piece of code that will create any widget or UI element; the code must be executed after the QApplication is executed. It might slip through sometimes because, the offending code might be doing so indirectly. 

<!-- {{< story/problem >}}  -->
---

### Problem

I encountered another problem. Somehow insert data into the database is not working, can't find the cause(or the reason). 

<!-- {{< /story/problem >}} -->
---

I've been on this one since yesterday evening around 6:00pm. Slept woke up, keep coming back to the code, referring to the example codes in the Qt online documentation and still I'm getting nowhere. 
And by the way, I arrived at work about 7:29am. 7:29am because that's when I signed in.

<!-- {{< story/time "12" "51" "pm" >}} -->
## 12:51pm

I found the solution to the error. I can't tell what it was, because I don't even know. After refactoring(changing) the code for bit. It just started working. 

Now, I’m trying to simulate continuous entry of data. So, say: the program is continuously supplying data to the database. I want to see how the app will handle displaying it. I have gotten past the entry part, it's now left with the display part. 

<!-- {{< story/problem >}}  -->
---

### Problem

So far, displaying database updates in the UI is not working. It's almost as if it is blocked by the how fast the entry is occurring. And, I don't get it because the continuous entry part of the thing is in a different thread, this way the program should be able to do both of them the same time. 

<!-- {{< /story/problem >}}  -->
---

I have to go do some research on this issue.

<!-- {{< story/time "3" "20" "pm" >}} -->
## 3:20pm

So, I learnt the proper way of dealing with threads in Qt: use signals and slots. That is, when using the QThreads, and you want objects on different threads to communicate, let them inherit QObject and use signals and slots to communicate. 

It is like this: the `signals` are updates being put into a basket which is the `slots`. When ever something gets into the basket, the program will deal with it. In this case display on the screen. `signals` and `slots` will be on different QThreads, which means one doesn't have to wait for the other.

What I was doing was that was causing the error is this: 

{{< gist "nelsonsaake" "4b041abe62166ff1b5f1d2b4a40beade" >}}
	
<!-- {{< story/time "5" "50" "pm" >}} -->
## 5:50pm

Recap: the best way for QObjects on different threads to communicate in Qt is: use QThread. Let them communicate using signals and slots. This way Qt makes sure the functions are called in their own thread. 

One way to think of threads is to imagine them as car lanes on a highway. Functions being called in different threads: will be like cars in different lanes. One will not interfere with the other, but the can communicate. If there is a take-away from the 3:20pm section, this is it.

All this dealing with errors reminds me of The Bjarne Stroustrup, All Salute; to Rob Pike, my respects. Two of the few champions for error handling. At least those I know. 

By the way, I just got home from work. 

<!-- {{< story/nav prev="day-1" next="day-3" >}} -->
