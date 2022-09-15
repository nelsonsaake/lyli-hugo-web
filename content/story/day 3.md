---
title: "Day 3"
date: 2020-12-02T08:23:13Z
draft: false
---

<!-- {{< story/time "8" "23" "am" >}} -->
## 8:23am

After my last entry yesterday, I started to doze off. I guess I was tired and I did even know it. I was really surprised. But I went to bed later in the evening. Today is a new day, hopefully no new errors :).  

I'm already at work.  <!--more-->

<!-- {{< story/time "10" "7" "am" >}} -->
## 10:07am

I'm going back to the drawing board. For the first time, I have to think about the structure of the code. Considering in my calculations the use of signals and slots. Ideally, I would like every single query to the database be done(executed) in a different thread. But this is very expensive(require a lot of computational power), and since they will all be trying to access the same database, they would all slow down anyway. 

So, I'm thinking, one thread for database access, one thread for UI and one thread dealing with the files on the system. And one thread for the simulation. 

This is a good time to mention, when I started this, I was considering using 40 thread. Yeah, 40! Maybe I still will: To handle the file system interactions. 

<!-- {{< story/time "6" "53" "pm" >}} -->
## 6:53pm

I'm back at home. 

Today was a very busy day at work. There was some betting. Someone bet his car that NPP would win the 2020 election. Shaking my head quietly. He was betting against nothing. It may end it tears.

I was able to do some little codding though. I refactored(reorganized and rearranged) the code. That was after, you know, the drawing board. The current structure of the code, have the code in segments. And each the segment is on a different thread. They communicate via signals and slots. I have 3 main segments. The UI, simulation and the database. 

Simulation is piece code to check how the program will handle updating the UI, if data is continuously sent to the database. It is allowing us to see what is happening in background. How the program is doing what it is doing, by display updates to the screen.

<!-- {{< story/nav prev="day-2" next="day-4" >}} -->
