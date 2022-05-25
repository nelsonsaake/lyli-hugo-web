---
title: "Day 27"
date: 2020-12-26T17:31:39Z
draft: false
---

<!-- last stop -->

{{< story/time "5" "31" "pm" >}}

## Point One
I’ve implemented point one from my last entry. That is, store the data as member variables instead of passing as arguments. 

# Point Two
Point two was to find a way to know when work is completed. All work is completed means, folders have been searched(scanned) and files have been renamed. That's my main focus now. <!--more-->

I found a better solution to point two. That is, only the file `Renamer` can tell when the all work is done. So, when folder scanner is done with its work, it would send a signal to the `Renamer`. Once the `Renamer` receives that signal and it finishes with its current work load, it would be done! And, there will be for sure no more incoming tasks; so, it would send an all-finished signal to the UI. Indicating that all work related to the scanning is completed. 

So `folder scanner` previously known as `TargetBuilder` finds the files that need to be renamed and the `Renamer` does the renaming. They work in separate threads. The main idea was, we can increase the number of `Renamer`s  is wanted to that's why we keep the two tasks separate. `UI` receives updates on folders searched(scanned) and files renamed. Updates that are displayed to the user to show progress.

Even though the `FolderScanner` formerly know as the `TargetBuilder`, `Renamer` and `UI` work independently they are all working towards a completing a single task. That is, finding and renaming some files. So, the files are found and then their worked. So when the component search for files is done, it will alert concerned parties that it done. So, when the component renaming files is done later it will know for sure that no more work is coming. That would imply the that particular work is done. Work here is: finding and renaming files. Work can also be simply referred to as a `Scan`. 

Think of as three people standing in a line clearing sand from a chocked gutter. The one scooping it passes it to the middle man and he will give it the last man who will pour the sand in car to be sent away. When the sand is finished, the first person will alert the middle man and the middle man will alert the last man and they will all stop.

It is the same what when `FolderScanner` is done it will alert `Renamer` and `Renamer` will alert the `UI` and a message will be displayed to the user.

# Point Three and Four
I haven't implemented point three. I implemented point four and took it out, I will add it again later.

Today, with my head in my hands, I'm sad to say, I would have to sacrifice the speed of the program for user experience. It is almost impossible to coordinate the work(finding and renaming `.lyli` files), that is, different components(`FolderScanner`, `Renamer`, `UI`) in different threads while heavily using the `signals` and `slots`. Some `signals` seems not to be firing(going through). It doesn't make sense to give the customer an extremely fast program if he/she can tell what the program is doing. 

So, we do a little bit of sequential execution of the entire task(finding and renaming `.lyli` files) here. When the `FolderScanner` is called, it will scan the folder given and all of its subfolders. While scanning, it will compile a list of files with filenames ending with `.lyli`. Once it's done, it will pass the list to the `Renamer` to rename them.  

Instead having them working at the same time like an assembly line, we wait for one component to finish completely before the next work start work.

{{< story/nav prev="day-22" next="day-34" >}}
