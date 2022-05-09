---
title: "Day 27"
date: 2020-12-26T17:31:39Z
draft: false
---

{{< story/time "5" "31" "pm" >}}

I’ve implemented point one above. That is, store the data as member and accessible to all member function, instead of passing from as arguments. 
Point two was to find a way to notify the UI that all work is completed. All work is completed means, folders have been scanned and files have been worked on. I found a better solution to point two. That is, only the file ranamer can tell when the all work is done.   <!--more-->
So, when folder scanner is done with its work, it would send a signal to the ranamer. Once the ranamer receives that signal and it finishes with its current work load, it would be done! And, there will be for sure no more incoming tasks; so, it would send an all-finished signal to the UI. Indicating that all work related to the scanning is completed. 
I haven't implemented point four. I implemented point 3 and took it out.
Today, with my head in my hands, I'm sad to say, I would have to sacrifice the speed of the project for user experience. It is almost impossible to coordinate the work, that is, different workers over different threads while heavily using the signal and slots. 
Some signal seems not to be firing and it does make sense to give the customer an extremely fast program if he/she can tell what the program is doing. 
So, we do a little bit of procedural execution of the entire task here. When the folder scanner is called, it will scan the folder given and all of its subfolders. While scanning, it will compile a list of files to be worked on. Once it's done it will pass the list to the ranamer and the ranamer will do its do.  

{{< story/nav prev="day-22" next="day-34" >}}
