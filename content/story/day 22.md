---
title: "Day 22"
date: 2020-12-21T21:38:21Z
draft: false
---

{{< story/catchup >}} Catch up (Everything I did between the last log and the next)
I implemented the finish approach I described in the last my last log. 
I also went ahead to implement a wrapper around a QWidget that would provide property animation feature. The property I’m animating here is the background color. {{< /story/catchup >}}

{{< story/problem >}} After this I experienced an unexplainable behavior in the code. It would start, display UI and shortly after just stop. {{< /story/problem >}}  <!--more-->

There was no error. There were no pointers as to where I might start looking for a solution. I have been since toying with the code, and finally I decided to roll back to the last working version. 
I did the roll back yesterday. Since I'm not using git. I did the roll back by going through the code and deleting the last added features. 
After the roll back I also remove the dataManager from the app. The dataManager was supposed to manage the data going through the app. 
In the dataManager, the data is not stored at any point, just passed around from one function to the other. The dataManager gets the data when it slots are called in response to a signal. It will pass data through some function and send it back out by emitting some signals. 

{{< story/problem >}} After removing the dataManager, one of the signals and slots connection seems to be faulty. The signals are not going through. {{< /story/problem >}}

{{< story/time "9" "58" "am" >}}

Today, I will attempt a different approach to the whole thing: the focus here is how to know work is done. Work is done when all folders of interest have been scanned and all files of interest have been renamed. Folders of interest includes the folder provided and its subfolders. Files of interest includes any files ending with “.lyli”. 

1. I don't want the member functions to pass around data; I want to store it as a member variable that way they can access it. That way we can point a function to work on member variable and still be adding work to it in another function. 
    + Example: For the renamer, the list of files to be renamed will not be passed to the function, it would be stored as a property (or member variables). 
    + The advantage is if the list is empty => that the renamer is done with its task. Or,
    + An additional check would be added. So, if the additional check passes, and the ranamer list is empty, then the ranamer is done with its work.
2. For the finish checking, will be done using the approach enumerated above; or maybe with a few added twists.
3. To show the app is finished, we will display, the number of folders scanned, the number of files renamed, the text "scan completed". This would not be dumped on the screen all at once but it would be animated. As if it was being typed.
4. When the code starts the heartbeat animation will be slow. When it is scanning it would be faster, and when it is done scanning it would be even faster. But after scanning the speed will only increase for about 3sec and it would return to slow.


{{< story/nav prev="day-17" next="day-27" >}}
