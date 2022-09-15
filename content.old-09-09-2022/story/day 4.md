---
title: "Day 4"
date: 2020-12-03T12:27:37Z
draft: false
---

{{< story/time "12" "27" "pm" >}}

My 3-segment approach looked promising until I run the code. I got an error. 

{{< story/problem >}} The error was cause by SQL query on one thread, trying to use database on a different thread. {{< /story/problem >}} 

This is good news. This is proof that the threads are working like they are supposed to. I check online: on how to deal with this error. The solution was one connection per thread. That's the database and all communication with the database should be on one thread; or at least that's how I understand it.  <!--more--> 

As for why the multithreading approach failed the first time: I am certain is because, I made the classes static. Static class means there can be one instance of that class. A class is like a blueprint of a house. An instance of the class is like a real-life house constructed based on the blueprint. Static class means only one house can be built using that blueprint. Example: 

{{< gist nelsonsaake "debebde77ae4e7509b81f1a90796267c" >}}

When the application starts, it starts with one thread. This thread is called the main thread. Every work is done in this thread. So, imagine you have one lane and all the cars must use that lane. But in some places where a lot of people use cars, one lane won't be enough. There will be traffic and the cars will slow down. It is the same for a computer program. 

Knowing that one lane can get really busy, we add more lanes. Similarly in a program, when a lot of work is being done on the main thread and it might slow done the program, you can add more threads. The errors I'm currently dealing with, is because I'm trying to share the work the program is doing on different threads. 

I created a thread for each component and let each component work in their own thread. The problem comes when components on different threads try to talk to each other. In this particular case a component on one thread is trying to send a query to the database on a different thread. I can't figure out why this is an issue.

I will look at the code again, maybe modify a bit and see what happens...

{{< story/nav prev="day-3" next="day-5" >}}

<!-- You can use a QObject of one thread in a different thread without going through the signals and slots.  -->

<!-- My reasoning is, to create a class that just pops up DB connection using the thread-Id as the connection name. In Qt once you are connected to the database in a particular thread, you can simply execute queries (or access it) without connecting to the database every single time. So, if there is a need to have more than one database you need to qualify it. You do that by using a connection name, and the database name. You can go through the documentation to get acquainted. Documentation available at {{< story/link "://doc.qt.io/qt-5/sql-connecting.html" >}}  -->

<!-- {{< story/time "6" "13" "pm" >}}  -->

