## Getting started with Rmarkdown

Create your first Rmarkdown document:

 - In RStudio, select "New File" from the "File" menu and then choose
"R Markdown..."

 - Choose "Document" in the window that opens, give it a title, and 
click "OK".

This will open a new file in RStudio.  The file is written in Rmarkdown, 
and contains a mix of text and code.

 - The text has some formatting applied (e.g., \*\*this is bold\*\* 
renders as **this is bold**). 
 - The code is surrounding by tick marks (i.e., \`\`\`).

Click the "Knit HTML" button above the file.  All going well, this should 
process the Rmarkdown file, and create HTML output.

 - The text will be nicely formatted, the code will be run, **and the 
output will be incorporated into the HTML document!**

This is just the beginning!  There is lots of additional formatting that
can be applied - see the Markdown Quick Reference guide that is built
into RStudio (click the "?" next to the "Knit HTML" buttin, and choose
"Markdown Quick Reference").

## Now what?

You're ready to create some cool analysis documents!

Download the R file "surveys.R": 

https://raw.githubusercontent.com/mikblacklab/Biochem_R_training/master/surveys.R

and the data file "surveys.csv"

http://files.figshare.com/1919744/surveys.csv

This contains some of the commands that you used in the ggplot lesson.

## Your challenge

Use the Rmarkdown file you created in R to figure out how to turn the code 
in `surveys.R` into a .Rmd file containing a mix of text and code.

Some hints:
 - you'll need to add the correct header information (title, author etc)
 - to start with you can just wrap the R code in ```{r} and ```
to get it to run as one large chunk.

Once you've got it to run (and produce HTML output), start breaking the 
code up into chunks, and add some text in between each code block (just 
like in the Rmarkdown document that you automated created earlier).


