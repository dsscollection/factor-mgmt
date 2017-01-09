From Zev Ross, zev@zevross.com
10/12/2016

**General**
 
You've done a nice job with this, I learned several new functions from `dplyr` and I think it will be helpful to R users. None of the issues I bring up below are very big. I do think, though, that the abstract and intro could use a little work. I think you need to be more specific about the problems faced when working with categorical data and make the first two sentences of both the abstract and introduction more interesting and inviting.

In terms of language I think there are a couple of places where you should probably make it a bit more formal. I also think that you have quite a few places where you say "much clearer", "much more robust" etc, I would drop the "much". Show the readers the "much clearer" through the code/examples.

Answers to your questions:

1. *Is it useful to demonstrate two ways to do each thing (as long as one isn’t totally stupid)*: Yes I think having two ways is good. 
2. *Do we clarify why each of the tasks are hard?*: I'm not positive what you're asking, but I think your introduction/abstract needs to lay out more clearly specific issues that arise -- miscoding, etc
3. *Do we clarify why each of the standard approaches are error-prone?*: Like previous question, are you asking if you succeeded? I think so.
4. *Should we focus more on missing values? less?* I think that probably each one of your examples should have a missing values since this is the real world. But if this adds a ton of extra code don't bother -- except if a dplyr approach is much simpler.
5. *Add appendices or online resources for other examples? Move closing exercise to be online only?* This is a question for Jenny and how long it can be
6. *Add other references?* probably no need. Might be useful to have a reference or two describing why factors were hard-coded into R when you read data etc. Hadley mentioned that in the early days R users were 90% stats people (not sure if you could find a reference for this).

**Abstract:** the abstract feels like bullet points and the first two bullet points are pretty obvious. Can you spice up a bit? "Categorical data presents hidden challenges for even the most seasoned data scientist. Misinterpretation, miscoding and XX are common..." I don't know

**First paragraph, line 13**: I'm not sure how the second sentence about "the complexity of some transformations" fits in here. By transformation are you referring to dummy coding etc? I would drop that sentence, then add a sentence at the end of that first paragraph with an explanation of the common pitfalls -- you have "The wrangling of cat data presents challenges". Then describe a couple of the challenges/pitfalls.

**Second P, line 17** You describe "In this paper", in paragraph 3 so I would drop P2 or work that into P3.

**Line 29** where you say "a new version of the data could be supplied with updated results produced", this is true of all R code really, I would either drop this sentence or be a little more specific linking with tidy tools.

**Line 39** Is this true? I find that factors take up half as much space

```r
x <- random::randomStrings(n = 100)
x <- sample(x, 1000000, replace = TRUE)
pryr::object_size(x) # 8MB
pryr::object_size(factor(x)) #4.01MB
```

**Line 55** I'm not sure pejorative is the right word there, I would drop the piece in parenthesis (or replace with "colloquially" or something)

**Line 55** You say "This behavior is lost if the variable is character" referring to creating indicator variables but this is not true, R will still automatically create indicators but you're stuck with the first alphabetic string as your baseline.

```r
dat <- data.frame(a= c("A", "B"), b= 1, stringsAsFactors = FALSE)
model.matrix(~., data= dat)
```

**Line 90** Perhaps not say "silently fail". It will result is mislabeling right?

**Line 92/3** you say "In our experience" and then reference someone, no need for reference is this is your experience.

**Line 102** I didn't know about the `recode` function!

**Line 123** This is too informal. The method I usually use is base-related and seems fine in this example. The advantage of `fct_relevel` is not having to name all of them which is useful

```r
test <- GSS$Opinion.of.family.income
test <- factor(test, levels = c("Far above average", "Above average", "Average", "Below Average", "Far below average", "Don't know", "No answer"))
```

**Line 138** I would again use the code above instead -- you get a warning but it works.

**Line 167**

Using `parse_number()` in this context seems dangerous. You need to be very sure that the strings with a number have a relevant number. You could accidentally add a number that is not meaningful. How about an example where you have "3 Errors" or something?

**Code block at line 189**

I see why you're sticking with `dplyr` but this code is simpler, I think, with `base`

```r
HELPsmall <- HELPmiss[,c("i1", "i2", "age")]
HELPsmall$i1[HELPsmall$il == 1] <- NA
```

**Code block at line 190**
 Sine you're using base, probably replace `tally` with table

**Line 103** 

"combines the robustnes of the second base R method", not sure what you're referring to.

**Line 201**

This sentence is hard to follow consider rewriting.
