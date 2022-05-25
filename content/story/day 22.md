---
title: "Day 22"
date: 2020-12-21T21:38:21Z
draft: false
---

<!-- {-{< story/catchup >}-}  -->
## Catch up (Everything I did between the last log and the next)

I implemented the `finish` approach I described in the last my last log. I also went ahead to implement a wrapper around a QWidget that would provide property animation feature. The property I’m animating here is the background color. 
<!-- {-{< /story/catchup >}-} -->

{{< story/problem >}} After this I experienced an unexplainable behavior in the code. It would start, display UI and shortly after just stop. {{< /story/problem >}}  <!--more-->

There was no error. There were no pointers as to where I might start looking for a solution. I have been since toying with the code, and finally I decided to roll back(go back) to the last working version. 

I did the roll back yesterday. Since I'm not using git. I did the roll back by going through the code and deleting the last added features. 

After the roll back I also remove the dataManager from the app. The dataManager was supposed to manage the data going through the app. In the dataManager, the data is not stored at any point, just passed around from one function to the other. The dataManager gets the data when it slots are called in response to a signal. It will pass the data through some function and send it back out by emitting some signals. 

{{< story/problem >}} After removing the dataManager, one of the signals and slots connection seems to be faulty. The signals are not going through. {{< /story/problem >}}

{{< story/time "9" "58" "am" >}}

Today, I will attempt a different approach to the whole thing: the focus here is how to know that work is done. Work is done when all folders of interest have been scanned and all files of interest have been renamed. Folders of interest includes the folder provided and all its subfolders. Files of interest includes any files ending with `.lyli`. 

## My Different Approach To Checking if the Scan is done
1. Information related to the scan will not be passed from function to function, it will be stored and used as needed. Example: For the `Renamer`, the list of files to be renamed will not be passed from function to function, it would be stored as a property (or member variables). So, when this list is empty we can assume the work is done. Then may be do some further checks to be sure it is done before `Renamer` exits.
2. For the `finish` checking, will be done using the approach enumerated above; or maybe with a few added twists.
3. When the program starts the heartbeat animation will be slow. When it is scanning it would be faster, and when it is done scanning it would be even faster for about 3sec the slow down. The slow down should give the impression of the end of something.
4. To show the scan is finished, we will display, the number of folders scanned, the number of files renamed, the text **"scan completed"**. This would not be dumped on the screen all at once but it would be animated. As if it was being typed.

{{< story/nav prev="day-17" next="day-27" >}}
