
I really like it

I'd recommend spending a little time thinking a slightly more political term than "fragile"

I'm a bit worried this is over the page limit that we promised TAS (3-5 pages). We don't need to deal with this now but we will need to think about it for TAS.


## Minor comments


 1-37: "line or column" -> "row or column" ?

 "uses hashed versions" -> more correct would be "uses a global string pool, so each unique string is only stored once"

 Maybe make GSS variable names a bit more concise? Would shorten up the code chunks

 6-130: some of the quotes are around the wrong way



This silently makes a missing value:

factor("a", levels = "c")
Maybe worth a mention? (in "Compact but fragile")
 @hadley
     
hadley commented 14 days ago
Another gotcha is that if you have strings that with non-ASCII characters, the default of order levels may vary from locale to locale.



I'm not sure if this can go anyway in the paper, but I realised in some sense you never visualise character strings, you always visualise factors. (i.e. you only see what's in the data, not the infinity of other possible values)

I think you should mention factors are right for models because you can't make predictions about factors that you didn't observe in the training data



Would be nice to have link to paper in README and markdown version of paper for easy preview on GitHub. Should the paper be in the root directory?

(This is the beginning of my review — I'll give you an issue for each major thought)


