---
title: "Day 1"
date: 2020-11-30T08:00:51Z
draft: false
---

To put this thing together I need a plan, and some tools. Just as constructor needs a drawing and some machines. 

I have some ideas about how it going to like like in the end, how the database should be structure. The idea is not solid. It's not definite but it can get me started. I will use SQLite as my database. I have some drawings of how the database should look like. I will programming C++ and I will be using Qt.  <!--more-->


SQLite because it's small and suit my needs, C++ and Qt because I want to build a program for a computer that has GUI.GUI is that part of the program with buttons, colors, picture, animations and basically anything you can interact with. 

I actually started thinking about how I was going to go about it since Wednesday. I also watched some videos on SQLite and Qt, and read a bit about C++ multithreading (doing many thing in a program at once).

<!-- {{< story/time "8" "1" "am" >}} -->
## 8:01am

I've started, I want to download the SQLite `DBMS` to make my database schema(design or blueprint) before adding the file to the rest of the program.  `DBMS` means database management system, it like `VLC` for database file. It allow you to design you database and fill it with data. 

{{< story/problem >}} The DBMS I want is not the official SQLite site. I will have to search for it. {{< /story/problem >}} 

<!-- {{< story/time "8" "32" "am" >}}   -->
## 8:32am

Found the SQLite DBMS I was looking for, turns out it is a third-party tool called SQLite studio. 
URL: https://github.com/pawelsalawa/sqlitestudio/releases/download/3.2.1/InstallSQLiteStudio-3.2.1.exe 

<!-- {{< story/time "10" "17" "am" >}} -->
## 10:17am

I have just created the schema and added to my program in a folder `assets/database`. 

<!-- {{< story/time "10" "34" "am" >}}  -->
## 10:34am

I having being to trying to push the project to GitHub and I have been failing, will try again later. 
At this point is vital to note that I'm not working on this straight. I'm at work, so coding in between tasks. 

<!-- {{< story/time "1" "27" "pm" >}}  -->
## 1:27pm

Between the last entry and now, I have had the chance to look at the Qt SQL examples and I'm confident and ready to go forward. The examples are found online, on the Qt documentation web site. Qt has a great documentation, that’s just by the way.

<!-- {{< story/time "4" "52" "pm" >}}  -->
## 4:52pm

Jim Wilson: Managing Android App Data with SQLite. It is the Android tutorial on Pluralsight. It is about four hours, very good tutorial. I watched(recently). Following the videos I implemented the database contract class. The contract class(es) help you formalize talking to the database. 

A shoutout to **GADS20** **100DAYSOFGADS20**, the Google Africa Developer Scholarship program. That's how got access to the Pluralsight videos.

I also went ahead to create two widgets to reflect the databases in the application. Then I got an error trying to run the application. The message is as follows:

<!-- {{< story/problem >}} -->
---

### Problem

QWidget: Must construct a QApplication before a QWidget 

<!-- {{< /story/problem >}} -->
---

Don't worry if you don't understand, I don't either. I will google it to find the solution.

<!-- {{< story/nav prev="day-1-intro" next="day-2" >}} -->
