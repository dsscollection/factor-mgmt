This paper does a great job outlining some of the difficulties with working with categorical data, specifically factors, in R. Below I provide overall comments on the paper as well as line-by-line comments on the text (many of which are minor issues). Responses to the questions to reviewers are also included at the end of the review.

## Overall comments

- I think the paper would benefit from a brief discussion on how R's handling of factors makes it difficult for new learners. While all the examples you showcase in the paper address important issues, I can see an expert R user suggesting that they have just as robust ways of solving these problems using base R only. However for a new learner a robust base R method is likely to have a much steeper learning curve than the tidyverse method. I think this is a big selling point for the tidyverse method, especially within the context of teaching.
- I suggest dropping the "so-called" in front of tidyverse, unless this is some commonly agreed upon phrasing that I am unaware of.
- To someone unfamiliar with the tidyverse it might not be obvious that dplyr is part of it. Perhaps defining tidyverse at the beginning of the paper, and listing packages from it that will come up in the paper might be helpful.
- Changing the labels of factor levels: Compact but fragile base R example uses a different variable than the robust but verbose base R and Direct and robust dplyr. It would make sense to use the same example for showcasing all three approaches.
- The defensive coding section could benefit from a discussion on why both assertthat and testthat packages are useful. Is there functionality in one package that is not in the other? If so, the examples should reflect this. If not, and both are showcased just to provide alternatives, it would be a good idea to mention this. Also, I believe the assertions are often used within functions, but the example given here is not within a function. Why would someone not just use "length(levels(drinkstat))==3", which would give TRUE/FALSE, but instead put this within the assert_that function? It would be useful to spell out the reason for the reader.
- The tone is a bit too colloquial at times. I think the paper would benefit from reading over once more and making edits specifically to address this.

## Line-by-line comments

- Line 16: Erronous ? in front of "FitzJohn" in the citation reference
- Line 17-18: "because so many variables are categorical": I understand the sentiment here but this phrasing sounds a bit odd. 
- Line 45-49: Peng 2015 also mentions an important reason why factors exist in the first place -- usage of categorial variables in regression models. I think it's important to mention this reason here to provide a reason for why one might want to store their categorical variables as factors.
- Line 56: "unfortunate behavior of factors in base R": I suggest removing "base" from this phrase as factors behave the same in base R and in tidyverse. The difference is in the syntax of wrangling the factors, but not in how a factor variable behaves.
- Line 56-60: "online movement": I believe I know what you're referring to here but I find it odd to refer to it as such in a journal article without providing background as to what is meant by an online movement. Also, I think it would be worthwhile to briefly explain what the readr package does (provides functions for importing and exporting data) so that it's clear it is during the import/export stage that strings are kept as is. I would also suggest citing the package here.
- Line 61: It's unclear which storage issues have been solved and how they have been solved.
- Line 67-68: The ordering of the levels could also be important for interpretability of model results when this variable is an explanatory variable in a multiple linear regression setting.
- Line 87: "It had 9 factor levels." = "It is a categorical variable with nine levels."
- Line 89-90: "changing the text of one (or more) factor labels, so it appears" = "changing the text of factor labels, so they appear" 
- Line 90: This would be relevant in a ggplot2 plot or a base plot. I suggest just referring to a plot, as opposed to specifically a ggplot2 plot.
- Line 97: tick after k should be ', not `
- Line 99: Labor.force.status variable should be in monospace font
	- Note: It seems like none of the inline code is formatted properly, e.g.  Line 127. This might be a global setting issue in the Rnw document.
- Line 99: "throw error" - I think the verb "throw" comes from other languages, like C# or JavaScript. I have not heard it used within the context of R, is this common?
- Line 112: "vector function" = "vectorized function"
- Line 115-117: Nice example! It would be nice to line number the code chunks so that you can refer to the trailing space with a line number.
- Line 130: "whitespace an `Below" = "whitespace and `Below" (missing d in and)
- Line 132-135 + following code chunk: This example touches upon an important mistake, but it's not only relevant to wrangling categorical data hence I think it should be removed.
- Line 144: The order is broken the second time this piece of code is run, I don't think it's accurate to say it gets worse. 
- Line 147: Consider removing referring to forcats as a "new addition" since by the time this is published it might not be as new anymore.
- Line 151: I am not sure calling working in the console an "interactive session" is accurate --- ***COLIN***
- Line 166: `stringsasfactors=FALSE` = `stringsAsFactors = FALSE` (capitalization and spaces)
- Line 167: "final category containing the lumped remainder of people" = "final category that lumps the remainder of people into one" (or some other phrasing, "lumped remainder" sounds awkward)
- Line 185: "two category factor" = "two level factor"
- Line 187: Would one really write a function for this? If the idea is to have a helper function for such a task I would imagine the number 65 would be an argument for that function. Otherwise, if this is a one time task, I doubt many people would functionalize this task. What was the reason for presenting this task as a function followed by sapply?
	- Also, "x<65" = "x < 65"
- Line 194-195: I don't follow what this warning is saying, can you clarify? Or maybe give an example?
- Line 196: "Variable" = "Variables" (plural sounds more appropriate in a section title)
- Line 199 and Line 204: Is there a typo in how the citation is displayed?
- Line 200: "women, or men" = "women or men"
- Line 205: It sounds awkward to refer to people as "alcohol-involved", is this a technical term?
- Code chunk following Line 212: 
	- "id==1" = "id == 1"
	- Used if_else in an earlier chunk but ifelse here, would be good to keep those consistent (unless there is a reason not to, which I believe there isn't)
- Code chunk following Line 210: Does mosaic also load mosaicData? If not, it should be loaded as well since it's referred to earlier in the text. 
- Code chunk following Line 212:
	- "empty repository" = "empty vector"
	- Add whitespaces around logical operators, i.e. "==" = " == "
	- This chunk is quite difficult to follow. I suppose that is the point, so it makes that point very well. But a few comments in especially the moderate section would help readability
- Line 217: "their extreme value" = "the extreme i2 value for that observation" (or something along these lines, current phrasing made me ask "who are they?")
- Code chunk following Line 218:
	- Note on case_when: I assume this comment will be removed and code chunk updated? (On a related note I really wish case_when worked like this!)
	- Add whitespaces around == for sex variable
	- "this can't be NA": Why not?
	- `tally` is a mosaic function, not dplyr. Since this section is the dplyr section I think it would be more appropriate to use something like HELPsmall %>% count(drink_stat)
- Line 222: What do you mean by "harder to miss possible edge cases"?
- Code chunk following Line 230: "length(levels(drinkstat))==3" = "length(levels(drinkstat)) == 3" (whitspaces around ==)
- Code chunk following Line 233: 
	- Will the comments about the code that doesn't work be removed? If not, what is the benefit of keeping them in?
	- Last three lines of code: Explain why all three are necessary, or if not, why they are interchangeable.
- Line 235-236: "Aspects of data wrangling involving categorical variables can be problematic and error-prone." = "Aspects of data wrangling in R involving categorical variables can be problematic and error-prone." (since the discussion in this paper is about doing this in R, not other languages/packages)
- Line 238: "tidyverse mini-language of R": I like the term "mini-language", but is that commonly used?

## Responses to questions for reviewers

1. Is it useful to demonstrate two ways to do each thing (as long as one isn’t totally stupid) -- Definitely, I like presenting both ways.

2. Do we clarify why each of the tasks are hard? -- I'm not sure what this question means. Do you mean why these tasks are hard due to R's treatment of factors, or why in general data wrangling is hard? Either way, I think the paper clarifies why these tasks are important, but I'm not sure about "hard".

3. Do we clarify why each of the standard approaches are error-prone? -- Yes, especially the reordering factor levels section gives makes a good case about this.

4. Should we focus more on missing values? less? -- I don't think more emphasis on missing values is needed since they are not specific to categorical data.

5. Add appendices or online resources for other examples? Move closing exercise to be online only? -- I suggest providing the GSS data among online resources so that all examples in the paper can be reproduced by the reader.

6. Add other references? -- The paper indeed is a bit light on references compared to most journal articles. That being said, it doesn't read like it's not grounded in literature, so I don't think references need to be added just for the sake of adding references. 