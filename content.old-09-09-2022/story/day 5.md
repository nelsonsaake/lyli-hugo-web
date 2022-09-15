---
title: "Day 5"
date: 2020-12-04T10:13:04Z
draft: false
---

{{< story/time "10" "13" "am" >}} 

I'm starting a new project. With a different code structure. So instead of having the database accessed from multiple threads; we will have the database in one thread and only access it in that one thread.

A different thread will be created for the database. At the start of the program, the data would be loaded from the database to a DataManger. And, at the end of the program, data will be written back to the database.  <!--more-->

`DataManager` here, is just a piece of code that behaves like a database. Normally it can store, delete, update, and retrieve information like a database. Since the `DataManager` is just another regular piece of code, it should not have the database issues. Example: cause an error when accessed from a different thread. This means the `DataManager` can be used from different thread. It would be a `QObject`, which means it can use the `signals` and `slots` we spoke about some days back. `signals` and `slots` are features of a `QObject`. 

**FYI:** Yesterday I discovered a cool Qt class. QThreadStorage. It is incredible. 

{{< story/nav prev="day-4" next="day-6" >}}
