---
title: "Day 17"
date: 2020-12-16T11:17:42Z
draft: false
---

{{< story/time "11" "17" "am" >}}

It's been some few days since I worked on this. The only thing left is telling if the task is finished. 
The entire thing is multithreading. There is no way to know for sure, because the code is not procedural, it is reactive. It waits in response to signals before it does work and when there is no work the QObjects are kept alive until an explicit exit or quit command is given.   <!--more-->
I have been thinking about this partially, and I thing I have an answer. The UI need to know when to tell the user the scan is finished. 
So, the approach I'm taking is, if the UI doesn't receive any signals in about 30sec, it would send out a signal like a flare, if the signal returns in due time, then the UI will know it is finished. 

{{< gist nelsonsaake "31b645a58cdf525f4cdc868e3471651a">}}

{{< story/nav prev="day-10" next="day-22" >}}
