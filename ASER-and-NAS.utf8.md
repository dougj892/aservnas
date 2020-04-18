
<!-- rnb-text-begin -->

---
title: "Compare ASER, NAS, and IHDS"
output: html_notebook
---

# Summary
This notebook compares ASER 2018 data, NAS 2017 data, and IHDS 2012 data.  ASER and NAS differ in both sampling and the assessment tool used. I provide a brief recap of ASER and NAS and then discuss what data is used for this comparison. The ASER Centre has put together a comparison of the two surveys [here](https://img.asercentre.org/docs/Bottom%20Panel/Key%20Docs/nas_stdvvs_aser.pdf)

## ASER
1. Frequency
    1. Basic survey conducted every other year
2. Sampling
    1. Only rural areas covered
    2. In each rural district, 30 villages are selected using PPS.  In each village, 20 households are selected using the right-hand rule
    3. Survey is conducted at home rather than in school. Thus, results not affected by enrollment / attendance.
    4. All children 5-16 years old, regardless of school enrollment, are administered the assessment. (In addition, data on enrollment is collected for 3 and 4 year olds
3. Data collected
    1. Assessment tests basic reading and math.  
        a. Read levels are not even letters, letters, word, std 1 text, std 2 text
        b. Math levels are not even 1-9, 1-9 numbers, 10-99 numbers, substract, and divide
    2. Basic household details and school attendance (e.g. whether public or private) also collected
4. Other
    1. ASER is carried out through local partners who rely on volunteers
    2. There are some internal and third party checks, but these seem to be pretty minimal
    3. The assessment is administered one-on-one by the enumerators who read out the questions to the child being assessed.
    4. ASER uses weights when calculating state and national figures


## NAS
NCERT has been conducting NAS since 2001 but in previous years they only collected data for a single grade at a time. (For example, they collected data for class 5 in academic year 2001-02, for class 8 in academic year 2002-03, and for class 3 in academic year 2003-04.  See [here](http://www.ncert.nic.in/programmes/NAS/pdf/DRC_report.pdf) page 6 for more info.) In addition, the sample sizes in previous years were smaller (they were only intended to be representative at the state level) and the assessment tool used was different. More details of NAS 2017 can be found [here](http://www.ncert.nic.in/programmes/NAS/Training.html). In particular, the following documents are partiularly useful:

* [FAQ](http://www.ncert.nic.in/programmes/NAS/pdf/NAS_FrequentlyAsked_Questions.pdf)
* [Field investigator module for test administration](http://www.ncert.nic.in/programmes/NAS/pdf/Module_Administration_Field_Investigators.pdf) 
* [District training module](http://www.ncert.nic.in/programmes/NAS/pdf/NAS_District_Workshop_Module.pdf)
* [Operational guidelines cum training manual](http://www.ncert.nic.in/programmes/NAS/pdf/Operational_Guidelines_Training_Manual.pdf)


1. Frequency
    1. Previous versions of the NAS were carried out every year.  There has only been one instance in which NAS has been carried out in its current form (in 2017)
2. Sampling
    1. Schools are selected from UDISE using PPS (according to the ASER note on the NAS)
    2. Includes both government and government aided 
    2. Grades 3, 5, and 8 covered
    3. If there is more than one section for grades 3, 5, or 8 then one section was randomly selected. (See bottom of page 7 of FAQ)
    4. If a section has more than 30 students, then roughly 30 students randomly selected. The method for randomly selecting students appears to be well thought and clearly documented in field investigator module.
3. Data collected
    1. Test language, math, and environmental science
    2. Seems like they also collect basic data about the school
4. Implementation
    1. NCERT is responsible for designing the survey tools and quality assurance. (See roles and functions of different stakeholders in FAQ) 
    2. States are responsible for translating the test into regional languages
    3. The test is a paper and pencil test. Students fill out a paper questionnaire and then the field investigators tallies responses on an OMR sheet.  
    4. Government school teachers cannot be field investigators. Ideally, DIET students should be field investigators but B.Ed or M.Ed students can only serve as FIs. (See FAQ and FI module)
    5. Field investigators visit schools on a prep day to meet the teachers and fill the school and teacher questionnaires. The assessment is done on a second day (which was November 17th for all districts across the country).
    6. The test is paper and pencil. Field investigators read questions aloud (but do not read the passage in the reading comprehension book). 
    7. According to the field investigator module, the field investigatores "after administration of tests, fill up the PQ by
interview mode for each student one by one"
    8. It seems like only class 8 students directly fill OMR sheets and that class 3 and 5 students instead mark in the test booklet. (page 14 and 15 of field investigator module)
4. Other
    1. Estimates are not weighted (actual enrollment varied quite a bit from figures in USIDE so ideally should have used weights)
    
## Comparing ASER and NAS
Andres copied NAS data from [here](http://nas.schooleduinfo.in/dashboard/nas_ncert#/).  I copied the ASER data from table 5 in the 2018 ASER report. To make the data as comparable as possible...

* ASER data is for class 3 students able to read a standard 2 text. Only government school students are included.
* NAS data is only for rural areas for class 3 students. (The website above breaks down results for rural / urban). The NAS language assessment for class 3 tests competencies L312 and L304. L304 is "Reads small texts with comprehension i.e., identifies main ideas, details, sequence and draws conclusion". L312 is "Reads printed scripts on the classroom walls: poems, posters, charts etc". Unclear how the two data points are combined.

Note that even with these corrections, there are still a lot of ways in which ASER and NAS differ. The biggest difference is that ASER is representative of all children enrolled in govt schools while NAS is representative only of children who showed up on the day of the assessment.  In addition, the assessment itself varies quite a bit. (And the ASER exam suggests that the pen and paper exam )


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxubGlicmFyeSh0aWR5dmVyc2UpXG5saWJyYXJ5KGhhdmVuKVxubGlicmFyeShzdXJ2ZXkpXG5wYXRoIDwtIFxcQzovVXNlcnMvZG91Z2ovRG9jdW1lbnRzL0RhdGEvRWR1Y2F0aW9uXFxcbmZpZ3VyZXMgPC0gXFxDOi9Vc2Vycy9kb3Vnai9Eb2N1bWVudHMvRWR1Y2F0aW9uIGluIEluZGlhL09yaWdpbmFsIHJlc2VhcmNoL0xlYXJuaW5nIG91dGNvbWVzIGRhdGEvZmlndXJlc1xcXG5gYGBcbmBgYCJ9 -->

```r
```r
library(tidyverse)
library(haven)
library(survey)
path <- \C:/Users/dougj/Documents/Data/Education\
figures <- \C:/Users/dougj/Documents/Education in India/Original research/Learning outcomes data/figures\
```
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->





<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuXG5saWJyYXJ5KGdncmVwZWwpXG5cbiMjIyBSYW5rIGNvbXBhcmlzb25cbm1haW5fZGF0YSA8LSByZWFkX2NzdihmaWxlLnBhdGgocGF0aCwgXFxBU0VSIDIwMTggYW5kIE5BUyAyMDE3IGdvdnQgc2Nob29sIGdyYWRlIDMgcmVhZGluZ19jb3JyZWN0ZWQuY3N2XFwpKVxuYGBgXG5gYGAifQ== -->

```r
```r

library(ggrepel)

### Rank comparison
main_data <- read_csv(file.path(path, \ASER 2018 and NAS 2017 govt school grade 3 reading_corrected.csv\))
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiUGFyc2VkIHdpdGggY29sdW1uIHNwZWNpZmljYXRpb246XG5jb2xzKFxuICBTdGF0ZSA9IFx1MDAxYlszMW1jb2xfY2hhcmFjdGVyKClcdTAwMWJbMzltLFxuICBBU0VSXzIwMTIgPSBcdTAwMWJbMzJtY29sX2RvdWJsZSgpXHUwMDFiWzM5bSxcbiAgQVNFUl8yMDE0ID0gXHUwMDFiWzMybWNvbF9kb3VibGUoKVx1MDAxYlszOW0sXG4gIEFTRVJfMjAxNiA9IFx1MDAxYlszMm1jb2xfZG91YmxlKClcdTAwMWJbMzltLFxuICBBU0VSXzIwMTggPSBcdTAwMWJbMzJtY29sX2RvdWJsZSgpXHUwMDFiWzM5bSxcbiAgTkFTID0gXHUwMDFiWzMybWNvbF9kb3VibGUoKVx1MDAxYlszOW0sXG4gIGFzZXJfcmFuayA9IFx1MDAxYlszMm1jb2xfZG91YmxlKClcdTAwMWJbMzltLFxuICBuYXNfcmFuayA9IFx1MDAxYlszMm1jb2xfZG91YmxlKClcdTAwMWJbMzltXG4pXG4ifQ== -->

```
Parsed with column specification:
cols(
  State = [31mcol_character()[39m,
  ASER_2012 = [32mcol_double()[39m,
  ASER_2014 = [32mcol_double()[39m,
  ASER_2016 = [32mcol_double()[39m,
  ASER_2018 = [32mcol_double()[39m,
  NAS = [32mcol_double()[39m,
  aser_rank = [32mcol_double()[39m,
  nas_rank = [32mcol_double()[39m
)
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuZ2dwbG90KGRhdGEgPSBtYWluX2RhdGEsYWVzKHg9YXNlcl9yYW5rLHk9bmFzX3JhbmssbGFiZWw9IFN0YXRlKSkgKyBnZW9tX2FibGluZShpbnRlcmNlcHQgPSAwLCBzbG9wZSA9IDEsIGNvbG9yPVxcb3JhbmdlXFwpICArXG4gIGdlb21fYWJsaW5lKGludGVyY2VwdCA9IC02LCBzbG9wZSA9IDEsIGNvbG9yPVxcZ3JheVxcLCBsd2Q9MSwgbHR5PTIpICtcbiAgZ2VvbV9hYmxpbmUoaW50ZXJjZXB0ID0gNiwgc2xvcGUgPSAxLCBjb2xvcj1cXGdyYXlcXCwgbHdkPTEsIGx0eT0yKSArXG4gIGdlb21fcG9pbnQoY29sb3I9XFxkYXJrYmx1ZVxcKSAgK1xuICB0aGVtZV9idygpICsgbGFicyh0aXRsZT1cXFN0YXRlIFJhbmtpbmdzIEJhc2VkIG9uIExhbmd1YWdlIFJlc3VsdHMgZm9yIFN0ZCBJSUkgU3R1ZGVudHMgKFJ1cmFsKVxcLCBcbiAgICAgICAgICAgICAgICAgICAgeCA9IFxcUmFuayBpbiBBU0VSICgyMDE4KVxcLCB5ID0gXFxSYW5rIGluIE5BUyAoMjAxNylcXCkgKyBcbiAgIHNjYWxlX3lfY29udGludW91cyhicmVha3M9YygxOjI4KSkgKyBzY2FsZV94X2NvbnRpbnVvdXMoYnJlYWtzPWMoMToyOCkpICArIHRoZW1lKHBhbmVsLmdyaWQubWlub3IgPSAgIGVsZW1lbnRfYmxhbmsoKSxcbiAgIHBhbmVsLmdyaWQubWFqb3IgPSAgIGVsZW1lbnRfbGluZShjb2xvdXIgPSBcXGdyYXlcXCxzaXplPTAuMSkpICsgZ2VvbV9sYWJlbF9yZXBlbCgpIFxuXG5nZ3NhdmUoXFxhc2VyX25hc19sYW5nX3JhbmtpbmcucG5nXFwsIHdpZHRoID0gOSwgaGVpZ2h0ID0gNiAsIHBhdGggPSBmaWd1cmVzKVxuXG5gYGBcbmBgYCJ9 -->

```r
```r
ggplot(data = main_data,aes(x=aser_rank,y=nas_rank,label= State)) + geom_abline(intercept = 0, slope = 1, color=\orange\)  +
  geom_abline(intercept = -6, slope = 1, color=\gray\, lwd=1, lty=2) +
  geom_abline(intercept = 6, slope = 1, color=\gray\, lwd=1, lty=2) +
  geom_point(color=\darkblue\)  +
  theme_bw() + labs(title=\State Rankings Based on Language Results for Std III Students (Rural)\, 
                    x = \Rank in ASER (2018)\, y = \Rank in NAS (2017)\) + 
   scale_y_continuous(breaks=c(1:28)) + scale_x_continuous(breaks=c(1:28))  + theme(panel.grid.minor =   element_blank(),
   panel.grid.major =   element_line(colour = \gray\,size=0.1)) + geom_label_repel() 

ggsave(\aser_nas_lang_ranking.png\, width = 9, height = 6 , path = figures)

```
```

<!-- rnb-source-end -->

<!-- rnb-plot-begin -->

<img src="data:image/png;base64,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" />

<!-- rnb-plot-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## ASER and NAS vs GDP
Given the huge variation in state GDP per capita, one would expect that there would be some correlation in GPD per capita and learning outcomes. Surprisingly, this is not the case.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuc2V0d2QoXFxDOi9Vc2Vycy9kb3Vnai9Eb2N1bWVudHMvRGF0YS9FZHVjYXRpb25cXClcbmBgYFxuYGBgIn0= -->

```r
```r
setwd(\C:/Users/dougj/Documents/Data/Education\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiVGhlIHdvcmtpbmcgZGlyZWN0b3J5IHdhcyBjaGFuZ2VkIHRvIEM6L1VzZXJzL2RvdWdqL0RvY3VtZW50cy9EYXRhL0VkdWNhdGlvbiBpbnNpZGUgYSBub3RlYm9vayBjaHVuay4gVGhlIHdvcmtpbmcgZGlyZWN0b3J5IHdpbGwgYmUgcmVzZXQgd2hlbiB0aGUgY2h1bmsgaXMgZmluaXNoZWQgcnVubmluZy4gVXNlIHRoZSBrbml0ciByb290LmRpciBvcHRpb24gaW4gdGhlIHNldHVwIGNodW5rIHRvIGNoYW5nZSB0aGUgd29ya2luZyBkaXJlY3RvcnkgZm9yIG5vdGVib29rIGNodW5rcy5cbiJ9 -->

```
The working directory was changed to C:/Users/dougj/Documents/Data/Education inside a notebook chunk. The working directory will be reset when the chunk is finished running. Use the knitr root.dir option in the setup chunk to change the working directory for notebook chunks.
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuZ2RwIDwtIHJlYWRfY3N2KFxcc3RhdGUgR0RQIHBlciBjYXBpdGEuY3N2XFwpXG5gYGBcbmBgYCJ9 -->

```r
```r
gdp <- read_csv(\state GDP per capita.csv\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiUGFyc2VkIHdpdGggY29sdW1uIHNwZWNpZmljYXRpb246XG5jb2xzKFxuICBTdGF0ZSA9IFx1MDAxYlszMW1jb2xfY2hhcmFjdGVyKClcdTAwMWJbMzltLFxuICBgTlNEUCBwZXIgY2FwaXRhYCA9IFx1MDAxYlszMm1jb2xfZG91YmxlKClcdTAwMWJbMzltLFxuICBgRGF0YSB5ZWFyYCA9IFx1MDAxYlszMW1jb2xfY2hhcmFjdGVyKClcdTAwMWJbMzltXG4pXG4ifQ== -->

```
Parsed with column specification:
cols(
  State = [31mcol_character()[39m,
  `NSDP per capita` = [32mcol_double()[39m,
  `Data year` = [31mcol_character()[39m
)
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuZGYgPC0gbWFpbl9kYXRhICU+JSBsZWZ0X2pvaW4oZ2RwLCBieSA9IFxcU3RhdGVcXClcbnByaW50KHBhc3RlKFxcTnVtYmVyIG9mIHVubWF0Y2hlZCBzdGF0ZXNcXCwgc3VtKGlzLm5hKGRmJGBOU0RQIHBlciBjYXBpdGFgKSkpKVxuYGBgXG5gYGAifQ== -->

```r
```r
df <- main_data %>% left_join(gdp, by = \State\)
print(paste(\Number of unmatched states\, sum(is.na(df$`NSDP per capita`))))
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFxcTnVtYmVyIG9mIHVubWF0Y2hlZCBzdGF0ZXMgMFxcXG4ifQ== -->

```
[1] \Number of unmatched states 0\
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuZGYkZ2RwX3JhbmsgPC0gTkFcbmRmJGdkcF9yYW5rW29yZGVyKGRmJGBOU0RQIHBlciBjYXBpdGFgLCBkZWNyZWFzaW5nID0gVFJVRSldIDwtIDE6bnJvdyhkZilcblxudGVtcCA8LSBkZiAlPiUgc2VsZWN0KEFTRVJfMjAxOCwgJ05TRFAgcGVyIGNhcGl0YScsIE5BUylcbmNvcih0ZW1wLCBtZXRob2QgPSBcXHBlYXJzb25cXCwgdXNlID0gXFxwYWlyd2lzZS5jb21wbGV0ZS5vYnNcXClcbmBgYFxuYGBgIn0= -->

```r
```r
df$gdp_rank <- NA
df$gdp_rank[order(df$`NSDP per capita`, decreasing = TRUE)] <- 1:nrow(df)

temp <- df %>% select(ASER_2018, 'NSDP per capita', NAS)
cor(temp, method = \pearson\, use = \pairwise.complete.obs\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiICAgICAgICAgICAgICAgIEFTRVJfMjAxOCBOU0RQIHBlciBjYXBpdGEgICAgICAgTkFTXG5BU0VSXzIwMTggICAgICAgMS4wMDAwMDAwICAgICAgIDAuNDE1NDk2NCAwLjE4NzI5MDFcbk5TRFAgcGVyIGNhcGl0YSAwLjQxNTQ5NjQgICAgICAgMS4wMDAwMDAwIDAuMDUxNTE0N1xuTkFTICAgICAgICAgICAgIDAuMTg3MjkwMSAgICAgICAwLjA1MTUxNDcgMS4wMDAwMDAwXG4ifQ== -->

```
                ASER_2018 NSDP per capita       NAS
ASER_2018       1.0000000       0.4154964 0.1872901
NSDP per capita 0.4154964       1.0000000 0.0515147
NAS             0.1872901       0.0515147 1.0000000
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuY29yKHRlbXAsIG1ldGhvZCA9IFxcc3BlYXJtYW5cXCwgdXNlID0gXFxwYWlyd2lzZS5jb21wbGV0ZS5vYnNcXClcbmBgYFxuYGBgIn0= -->

```r
```r
cor(temp, method = \spearman\, use = \pairwise.complete.obs\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiICAgICAgICAgICAgICAgIEFTRVJfMjAxOCBOU0RQIHBlciBjYXBpdGEgICAgICAgTkFTXG5BU0VSXzIwMTggICAgICAgMS4wMDAwMDAwICAgICAgIDAuMzc1ODIwNSAwLjEyNjcxNzZcbk5TRFAgcGVyIGNhcGl0YSAwLjM3NTgyMDUgICAgICAgMS4wMDAwMDAwIDAuMTM4MjIzNlxuTkFTICAgICAgICAgICAgIDAuMTI2NzE3NiAgICAgICAwLjEzODIyMzYgMS4wMDAwMDAwXG4ifQ== -->

```
                ASER_2018 NSDP per capita       NAS
ASER_2018       1.0000000       0.3758205 0.1267176
NSDP per capita 0.3758205       1.0000000 0.1382236
NAS             0.1267176       0.1382236 1.0000000
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuIyBmb3JtYWwgdGVzdCBmb3IgY29ycmVsYXRpb25cbmNvci50ZXN0KHRlbXAkQVNFUl8yMDE4LHRlbXAkYE5TRFAgcGVyIGNhcGl0YWAsIHVzZSA9IFxccGFpcndpc2UuY29tcGxldGUub2JzXFwsIG1ldGhvZCA9IFxccGVhcnNvblxcKVxuYGBgXG5gYGAifQ== -->

```r
```r
# formal test for correlation
cor.test(temp$ASER_2018,temp$`NSDP per capita`, use = \pairwise.complete.obs\, method = \pearson\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiXG5cdFBlYXJzb24ncyBwcm9kdWN0LW1vbWVudCBjb3JyZWxhdGlvblxuXG5kYXRhOiAgdGVtcCRBU0VSXzIwMTggYW5kIHRlbXAkYE5TRFAgcGVyIGNhcGl0YWBcbnQgPSAyLjI4NCwgZGYgPSAyNSwgcC12YWx1ZSA9IDAuMDMxMTNcbmFsdGVybmF0aXZlIGh5cG90aGVzaXM6IHRydWUgY29ycmVsYXRpb24gaXMgbm90IGVxdWFsIHRvIDBcbjk1IHBlcmNlbnQgY29uZmlkZW5jZSBpbnRlcnZhbDpcbiAwLjA0MjEzNTQyIDAuNjg3MDMxODhcbnNhbXBsZSBlc3RpbWF0ZXM6XG4gICAgICBjb3IgXG4wLjQxNTQ5NjQgXG4ifQ== -->

```

	Pearson's product-moment correlation

data:  temp$ASER_2018 and temp$`NSDP per capita`
t = 2.284, df = 25, p-value = 0.03113
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.04213542 0.68703188
sample estimates:
      cor 
0.4154964 
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuY29yLnRlc3QodGVtcCRBU0VSXzIwMTgsdGVtcCRgTlNEUCBwZXIgY2FwaXRhYCwgdXNlID0gXFxwYWlyd2lzZS5jb21wbGV0ZS5vYnNcXCwgbWV0aG9kID0gXFxzcGVhcm1hblxcKVxuYGBgXG5gYGAifQ== -->

```r
```r
cor.test(temp$ASER_2018,temp$`NSDP per capita`, use = \pairwise.complete.obs\, method = \spearman\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiQ2Fubm90IGNvbXB1dGUgZXhhY3QgcC12YWx1ZSB3aXRoIHRpZXNcblxuXHRTcGVhcm1hbidzIHJhbmsgY29ycmVsYXRpb24gcmhvXG5cbmRhdGE6ICB0ZW1wJEFTRVJfMjAxOCBhbmQgdGVtcCRgTlNEUCBwZXIgY2FwaXRhYFxuUyA9IDIwNDQuOCwgcC12YWx1ZSA9IDAuMDUzMzdcbmFsdGVybmF0aXZlIGh5cG90aGVzaXM6IHRydWUgcmhvIGlzIG5vdCBlcXVhbCB0byAwXG5zYW1wbGUgZXN0aW1hdGVzOlxuICAgICAgcmhvIFxuMC4zNzU4MjA1IFxuIn0= -->

```
Cannot compute exact p-value with ties

	Spearman's rank correlation rho

data:  temp$ASER_2018 and temp$`NSDP per capita`
S = 2044.8, p-value = 0.05337
alternative hypothesis: true rho is not equal to 0
sample estimates:
      rho 
0.3758205 
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuY29yLnRlc3QodGVtcCROQVMsdGVtcCRgTlNEUCBwZXIgY2FwaXRhYCwgdXNlID0gXFxwYWlyd2lzZS5jb21wbGV0ZS5vYnNcXCwgbWV0aG9kID0gXFxwZWFyc29uXFwpXG5gYGBcbmBgYCJ9 -->

```r
```r
cor.test(temp$NAS,temp$`NSDP per capita`, use = \pairwise.complete.obs\, method = \pearson\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiXG5cdFBlYXJzb24ncyBwcm9kdWN0LW1vbWVudCBjb3JyZWxhdGlvblxuXG5kYXRhOiAgdGVtcCROQVMgYW5kIHRlbXAkYE5TRFAgcGVyIGNhcGl0YWBcbnQgPSAwLjI2MzAyLCBkZiA9IDI2LCBwLXZhbHVlID0gMC43OTQ2XG5hbHRlcm5hdGl2ZSBoeXBvdGhlc2lzOiB0cnVlIGNvcnJlbGF0aW9uIGlzIG5vdCBlcXVhbCB0byAwXG45NSBwZXJjZW50IGNvbmZpZGVuY2UgaW50ZXJ2YWw6XG4gLTAuMzI3ODYzNCAgMC40MTY1ODUzXG5zYW1wbGUgZXN0aW1hdGVzOlxuICAgICAgY29yIFxuMC4wNTE1MTQ3IFxuIn0= -->

```

	Pearson's product-moment correlation

data:  temp$NAS and temp$`NSDP per capita`
t = 0.26302, df = 26, p-value = 0.7946
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.3278634  0.4165853
sample estimates:
      cor 
0.0515147 
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuY29yLnRlc3QodGVtcCROQVMsdGVtcCRgTlNEUCBwZXIgY2FwaXRhYCwgdXNlID0gXFxwYWlyd2lzZS5jb21wbGV0ZS5vYnNcXCwgbWV0aG9kID0gXFxzcGVhcm1hblxcKVxuYGBgXG5gYGAifQ== -->

```r
```r
cor.test(temp$NAS,temp$`NSDP per capita`, use = \pairwise.complete.obs\, method = \spearman\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiQ2Fubm90IGNvbXB1dGUgZXhhY3QgcC12YWx1ZSB3aXRoIHRpZXNcblxuXHRTcGVhcm1hbidzIHJhbmsgY29ycmVsYXRpb24gcmhvXG5cbmRhdGE6ICB0ZW1wJE5BUyBhbmQgdGVtcCRgTlNEUCBwZXIgY2FwaXRhYFxuUyA9IDMxNDguOSwgcC12YWx1ZSA9IDAuNDgzXG5hbHRlcm5hdGl2ZSBoeXBvdGhlc2lzOiB0cnVlIHJobyBpcyBub3QgZXF1YWwgdG8gMFxuc2FtcGxlIGVzdGltYXRlczpcbiAgICAgIHJobyBcbjAuMTM4MjIzNiBcbiJ9 -->

```
Cannot compute exact p-value with ties

	Spearman's rank correlation rho

data:  temp$NAS and temp$`NSDP per capita`
S = 3148.9, p-value = 0.483
alternative hypothesis: true rho is not equal to 0
sample estimates:
      rho 
0.1382236 
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuZ2dwbG90KGRhdGEgPSBkZixhZXMoeD0gZ2RwX3JhbmsseT1uYXNfcmFuayxsYWJlbD0gU3RhdGUpKSArIGdlb21fYWJsaW5lKGludGVyY2VwdCA9IDAsIHNsb3BlID0gMSwgY29sb3I9XFxvcmFuZ2VcXCkgICtcbiAgZ2VvbV9wb2ludChjb2xvcj1cXGRhcmtibHVlXFwpICArXG4gIHRoZW1lX2J3KCkgKyBsYWJzKHRpdGxlPVxcTkFTIHZzIEdEUFxcLCBcbiAgICAgICAgICAgICAgICAgICAgeCA9IFxcR0RQIHJhbmtcXCwgeSA9IFxcUmFuayBpbiBOQVMgKDIwMTcpXFwpICsgXG4gICBzY2FsZV95X2NvbnRpbnVvdXMoYnJlYWtzPWMoMToyOCkpICsgc2NhbGVfeF9jb250aW51b3VzKGJyZWFrcz1jKDE6MjgpKSAgKyB0aGVtZShwYW5lbC5ncmlkLm1pbm9yID0gICBlbGVtZW50X2JsYW5rKCksXG4gICBwYW5lbC5ncmlkLm1ham9yID0gICBlbGVtZW50X2xpbmUoY29sb3VyID0gXFxncmF5XFwsc2l6ZT0wLjEpKSArIGdlb21fbGFiZWxfcmVwZWwoKSBcbmBgYFxuYGBgIn0= -->

```r
```r
ggplot(data = df,aes(x= gdp_rank,y=nas_rank,label= State)) + geom_abline(intercept = 0, slope = 1, color=\orange\)  +
  geom_point(color=\darkblue\)  +
  theme_bw() + labs(title=\NAS vs GDP\, 
                    x = \GDP rank\, y = \Rank in NAS (2017)\) + 
   scale_y_continuous(breaks=c(1:28)) + scale_x_continuous(breaks=c(1:28))  + theme(panel.grid.minor =   element_blank(),
   panel.grid.major =   element_line(colour = \gray\,size=0.1)) + geom_label_repel() 
```
```

<!-- rnb-source-end -->

<!-- rnb-plot-begin -->

<img src="data:image/png;base64,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" />

<!-- rnb-plot-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuTkFcbk5BXG5gYGBcbmBgYCJ9 -->

```r
```r
NA
NA
```
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuZ2dwbG90KGRhdGEgPSBkZixhZXMoeD0gZ2RwX3JhbmsseT1hc2VyX3JhbmssbGFiZWw9IFN0YXRlKSkgKyBnZW9tX2FibGluZShpbnRlcmNlcHQgPSAwLCBzbG9wZSA9IDEsIGNvbG9yPVxcb3JhbmdlXFwpICArXG4gIGdlb21fcG9pbnQoY29sb3I9XFxkYXJrYmx1ZVxcKSAgK1xuICB0aGVtZV9idygpICsgbGFicyh0aXRsZT1cXEFTRVIgdnMgR0RQXFwsIFxuICAgICAgICAgICAgICAgICAgICB4ID0gXFxHRFAgcmFua1xcLCB5ID0gXFxSYW5rIGluIEFTRVIgKDIwMTgpXFwpICsgXG4gICBzY2FsZV95X2NvbnRpbnVvdXMoYnJlYWtzPWMoMToyOCkpICsgc2NhbGVfeF9jb250aW51b3VzKGJyZWFrcz1jKDE6MjgpKSAgKyB0aGVtZShwYW5lbC5ncmlkLm1pbm9yID0gICBlbGVtZW50X2JsYW5rKCksXG4gICBwYW5lbC5ncmlkLm1ham9yID0gICBlbGVtZW50X2xpbmUoY29sb3VyID0gXFxncmF5XFwsc2l6ZT0wLjEpKSArIGdlb21fbGFiZWxfcmVwZWwoKSBcblxuYGBgXG5gYGAifQ== -->

```r
```r
ggplot(data = df,aes(x= gdp_rank,y=aser_rank,label= State)) + geom_abline(intercept = 0, slope = 1, color=\orange\)  +
  geom_point(color=\darkblue\)  +
  theme_bw() + labs(title=\ASER vs GDP\, 
                    x = \GDP rank\, y = \Rank in ASER (2018)\) + 
   scale_y_continuous(breaks=c(1:28)) + scale_x_continuous(breaks=c(1:28))  + theme(panel.grid.minor =   element_blank(),
   panel.grid.major =   element_line(colour = \gray\,size=0.1)) + geom_label_repel() 

```
```

<!-- rnb-source-end -->

<!-- rnb-plot-begin -->

<img src="data:image/png;base64,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" />

<!-- rnb-plot-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Compare ASER, NAS, and IHDS
While ASER and NAS use different assessments, based on their descriptions it seems like the reading components of each assessment seeks to measure about the same thing. Therefore, it is useful to compare the average scores (as opposed to ranks) of each assessment for each state.

### Calculate IHDS scores by state. 
Calculate percentage of students with ASER == 4 (i.e. can read std 2 level text) for rural (URBAN2011 == 0) govt school (CS4 ==2) or private aided (CS4 == 3) students in grades 2 to 5 (there are too few students if we restrict only to grade 3) by state. *warning: this code takes a long time* 


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuaWhkc19pbmRfZGlyIDwtIFxcQzovVXNlcnMvZG91Z2ovRG9jdW1lbnRzL0RhdGEvSUhEUy9JSERTIDIwMTIvRFMwMDAxXFxcbmluZF9maWxlIDwtIGZpbGUucGF0aChpaGRzX2luZF9kaXIsIFxcMzYxNTEtMDAwMS1EYXRhLmR0YVxcKVxuIyByZWFkIGluIGp1c3QgdGhvc2UgdmFyaWFibGVzIHRoYXQgaSBuZWVkXG4jIHRoaXMgaXMgbXVjaCBmYXN0ZXIgdGhhbiByZWFkaW5nIGluIGV2ZXJ5dGhpbmcgYW5kIHRoZW4gc2VsZWN0aW5nXG5paGRzIDwtIHJlYWRfZHRhKGluZF9maWxlLCBjb2xfc2VsZWN0ID0gYyhTVEFURUlELCBESVNUSUQsIFBTVUlELCBISElELCBISFNQTElUSUQsIFBFUlNPTklELCBJRFBTVSwgV1QsIFJPMywgUk83LCBSTzUsIFVSQkFOMjAxMSwgc3RhcnRzX3dpdGgoXFxDU1xcKSwgc3RhcnRzX3dpdGgoXFxUQVxcKSwgc3RhcnRzX3dpdGgoXFxFRFxcKSkpXG5paGRzIDwtIGloZHMgJT4lIG11dGF0ZShwc3VfZXhwYW5kZWQgPSBwYXN0ZShTVEFURUlELCBESVNUSUQsIFBTVUlELCBzZXAgPVxcLVxcKSwgaGhfZXhwYW5kZWQgPSBwYXN0ZShTVEFURUlELCBESVNUSUQsIFBTVUlELCBISElELCBISFNQTElUSUQsIHNlcCA9XFwtXFwpKVxuXG4jIGNvbmZpcm0gdGhhdCBUQTQgKGNsYXNzKSBpcyBub3QgTkEgaWYgVEE4QiBpcyBub3QgTkEgLS0+IHRoZXJlIGFyZSBvbmx5IDM4IGluc3RhbmNlcyB3aGVuIFRBOEIgaXMgbm90IE5BIGJ1dCBUQTQgaXMgTkFcbmloZHMgJT4lIGZpbHRlcighaXMubmEoVEE4QikpICU+JSBjb3VudChUQTQpXG5gYGBcbmBgYHJcblxuIyBkcm9wIHRoZSBvbmUgcm93IHdpdGggbWlzc2luZyB2YWx1ZXMgZm9yIHdlaWdodHNcbmloZHMgPC0gaWhkcyAlPiUgZmlsdGVyKCFpcy5uYShXVCkpXG5cbiMgY3JlYXRlIHZhcmlhYmxlIGZvciBBU0VSIGF0IGxldmVsIDRcbmloZHMgPC0gaWhkcyAlPiUgbXV0YXRlKEFTRVI0ID0gKFRBOEIgPT00KSkgJT4lIG11dGF0ZShTdGF0ZSA9IGFzX2ZhY3RvcihTVEFURUlEKSlcblxuIyB1c2UgdGhlIHN1cnZleSBwYWNrYWdlIHRvIHNldCB0aGUgc3VydmV5IGRlc2lnbi4gIEkgd2lsbCB1c2UgdGhlIGloZHNfc3Z5IG9iamVjdCB0byBjYWxjdWxhdGUgQ0lzXG5paGRzX3N2eSA8LSBzdnlkZXNpZ24oaWQgPX4gcHN1X2V4cGFuZGVkICsgaGhfZXhwYW5kZWQsIHdlaWdodHMgPX4gV1QsIGRhdGEgPSBpaGRzKVxuYGBgXG5gYGAifQ== -->

```r
```r
ihds_ind_dir <- \C:/Users/dougj/Documents/Data/IHDS/IHDS 2012/DS0001\
ind_file <- file.path(ihds_ind_dir, \36151-0001-Data.dta\)
# read in just those variables that i need
# this is much faster than reading in everything and then selecting
ihds <- read_dta(ind_file, col_select = c(STATEID, DISTID, PSUID, HHID, HHSPLITID, PERSONID, IDPSU, WT, RO3, RO7, RO5, URBAN2011, starts_with(\CS\), starts_with(\TA\), starts_with(\ED\)))
ihds <- ihds %>% mutate(psu_expanded = paste(STATEID, DISTID, PSUID, sep =\-\), hh_expanded = paste(STATEID, DISTID, PSUID, HHID, HHSPLITID, sep =\-\))

# confirm that TA4 (class) is not NA if TA8B is not NA --> there are only 38 instances when TA8B is not NA but TA4 is NA
ihds %>% filter(!is.na(TA8B)) %>% count(TA4)
```
```r

# drop the one row with missing values for weights
ihds <- ihds %>% filter(!is.na(WT))

# create variable for ASER at level 4
ihds <- ihds %>% mutate(ASER4 = (TA8B ==4)) %>% mutate(State = as_factor(STATEID))

# use the survey package to set the survey design.  I will use the ihds_svy object to calculate CIs
ihds_svy <- svydesign(id =~ psu_expanded + hh_expanded, weights =~ WT, data = ihds)
```
```

<!-- rnb-source-end -->

<!-- rnb-frame-begin eyJtZXRhZGF0YSI6eyJjbGFzc2VzIjpbInRibF9kZiIsInRibCIsImRhdGEuZnJhbWUiXSwibmNvbCI6MiwibnJvdyI6MTF9LCJyZGYiOiJINHNJQUFBQUFBQUFCbDFRdTA3RFFCRGNuR09IWEpTSEJBVUZCYUtnaXlVQ0VhSWlDRDRBSVlxMGgyUEF3cHdqMnhGMDhDMzhBd1VGSDhHZklDVGFtRGw3VDBKMzB0N01qdmRtZDMxMU1UK1VjMGxFSG5tQklNOEhwZUQ4OG1BeW5SQzFCYklXdGFscjhCbFZteUJHSENCNnhPZjB1OEVaNTdNTnhoSGpGdU0yNHc3akx1TmVneSsxVCtjTlY1LzlQekRFTzdSUElvbGNUc0cvTUFjMCtrR2NJSWFJZldkWVg2dkh1QUFaMVFNM29uZDlkbVNYMGU2REtGV0ZmV0JGdVZDbENtOXplRG5sM1R4N0NtMFBNNng0eFZWVjFTOWc3UlIzc21XWlpCcWx3dncvMytuU3loMWh1TkxHZWpHTzdsZjZZWHhzSnFrL042ZlB2UGVQaTZhbHFOaktaNnNnMW5lSmp1MlNxYnFKVTA0R1dLSGVJRnptaVM3dHlsQ0xzTXhLWmV0a2xLVldxWGVqOVIvZ2JsNTBOd0lBQUE9PSJ9 -->

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["TA4"],"name":[1],"type":["dbl"],"align":["right"]},{"label":["n"],"name":[2],"type":["int"],"align":["right"]}],"data":[{"1":"0","2":"185"},{"1":"1","2":"1205"},{"1":"2","2":"1981"},{"1":"3","2":"2571"},{"1":"4","2":"2613"},{"1":"5","2":"2001"},{"1":"6","2":"949"},{"1":"7","2":"242"},{"1":"8","2":"57"},{"1":"9","2":"15"},{"1":"NA","2":"38"}],"options":{"columns":{"min":{},"max":[10],"total":[2]},"rows":{"min":[10],"max":[10],"total":[11]},"pages":{}}}
  </script>
</div>

<!-- rnb-frame-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Calculate correlations 


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuYXNlcl9uYXMgPC0gbWFpbl9kYXRhICU+JSBzZWxlY3QoU3RhdGUsIEFTRVJfMjAxOCwgTkFTKVxuc2NvcmVzIDwtIGFzZXJfbmFzICU+JSBmdWxsX2pvaW4oaWhkc19zY29yZXMsIGJ5ID0gXFxTdGF0ZVxcKVxuXG4jIGRyb3AgaWYgSUhEU19BU0VSIGlzIE5BXG4jIHNjb3JlcyA8LSBzY29yZXMgJT4lIGZpbHRlcighaXMubmEoSUhEU19BU0VSKSkgJT4lIGFycmFuZ2UoQVNFUikgJT4lIHNlbGVjdChTdGF0ZSwgQVNFUiwgSUhEU19BU0VSLCBOQVMsIG9icylcblxuIyBjYWxjdWxhdGUgY29ycmVsYXRpb24gbWF0cml4IC0tPiB3aGlsZSB0aGVyZSBhcmUgYSBmZXcgb3V0bGllcnMsIG92ZXJhbGwgdGhlIEFTRVIgZGF0YSBhbmQgSUhEUyBkYXRhIG1hdGNoIE9rXG4jIG5vdGUgdGhhdCBcbnRlbXAgPC0gc2NvcmVzICU+JSBzZWxlY3QoQVNFUl8yMDE4LCBpaGRzLCBOQVMpXG5jb3IodGVtcCwgbWV0aG9kID0gXFxwZWFyc29uXFwsIHVzZSA9IFxccGFpcndpc2UuY29tcGxldGUub2JzXFwpXG5gYGBcbmBgYCJ9 -->

```r
```r
aser_nas <- main_data %>% select(State, ASER_2018, NAS)
scores <- aser_nas %>% full_join(ihds_scores, by = \State\)

# drop if IHDS_ASER is NA
# scores <- scores %>% filter(!is.na(IHDS_ASER)) %>% arrange(ASER) %>% select(State, ASER, IHDS_ASER, NAS, obs)

# calculate correlation matrix --> while there are a few outliers, overall the ASER data and IHDS data match Ok
# note that 
temp <- scores %>% select(ASER_2018, ihds, NAS)
cor(temp, method = \pearson\, use = \pairwise.complete.obs\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiICAgICAgICAgIEFTRVJfMjAxOCAgICAgICAgaWhkcyAgICAgICAgIE5BU1xuQVNFUl8yMDE4IDEuMDAwMDAwMCAwLjYxNzk4NDk1NCAwLjE4NzI5MDA2NlxuaWhkcyAgICAgIDAuNjE3OTg1MCAxLjAwMDAwMDAwMCAwLjAwMzIwNDMxNlxuTkFTICAgICAgIDAuMTg3MjkwMSAwLjAwMzIwNDMxNiAxLjAwMDAwMDAwMFxuIn0= -->

```
          ASER_2018        ihds         NAS
ASER_2018 1.0000000 0.617984954 0.187290066
ihds      0.6179850 1.000000000 0.003204316
NAS       0.1872901 0.003204316 1.000000000
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuY29yKHRlbXAsIG1ldGhvZCA9IFxcc3BlYXJtYW5cXCwgdXNlID0gXFxwYWlyd2lzZS5jb21wbGV0ZS5vYnNcXClcbmBgYFxuYGBgIn0= -->

```r
```r
cor(temp, method = \spearman\, use = \pairwise.complete.obs\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiICAgICAgICAgIEFTRVJfMjAxOCAgICAgICAgaWhkcyAgICAgICAgIE5BU1xuQVNFUl8yMDE4IDEuMDAwMDAwMCAgMC42MDE1MjUwMiAgMC4xMjY3MTc1NlxuaWhkcyAgICAgIDAuNjAxNTI1MCAgMS4wMDAwMDAwMCAtMC4wMzEwNjQ2N1xuTkFTICAgICAgIDAuMTI2NzE3NiAtMC4wMzEwNjQ2NyAgMS4wMDAwMDAwMFxuIn0= -->

```
          ASER_2018        ihds         NAS
ASER_2018 1.0000000  0.60152502  0.12671756
ihds      0.6015250  1.00000000 -0.03106467
NAS       0.1267176 -0.03106467  1.00000000
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuIyBjb25kdWN0IGZvcm1hbCBjb3JyZWxhdGlvbiB0ZXN0XG5jb3IudGVzdCh0ZW1wJE5BUyx0ZW1wJGloZHMsIHVzZSA9IFxccGFpcndpc2UuY29tcGxldGUub2JzXFwsIG1ldGhvZCA9IFxccGVhcnNvblxcKVxuYGBgXG5gYGAifQ== -->

```r
```r
# conduct formal correlation test
cor.test(temp$NAS,temp$ihds, use = \pairwise.complete.obs\, method = \pearson\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiXG5cdFBlYXJzb24ncyBwcm9kdWN0LW1vbWVudCBjb3JyZWxhdGlvblxuXG5kYXRhOiAgdGVtcCROQVMgYW5kIHRlbXAkaWhkc1xudCA9IDAuMDE0MzMsIGRmID0gMjAsIHAtdmFsdWUgPSAwLjk4ODdcbmFsdGVybmF0aXZlIGh5cG90aGVzaXM6IHRydWUgY29ycmVsYXRpb24gaXMgbm90IGVxdWFsIHRvIDBcbjk1IHBlcmNlbnQgY29uZmlkZW5jZSBpbnRlcnZhbDpcbiAtMC40MTg5NzAxICAwLjQyNDIzOTZcbnNhbXBsZSBlc3RpbWF0ZXM6XG4gICAgICAgIGNvciBcbjAuMDAzMjA0MzE2IFxuIn0= -->

```

	Pearson's product-moment correlation

data:  temp$NAS and temp$ihds
t = 0.01433, df = 20, p-value = 0.9887
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.4189701  0.4242396
sample estimates:
        cor 
0.003204316 
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuY29yLnRlc3QodGVtcCRBU0VSXzIwMTgsdGVtcCRpaGRzLCB1c2UgPSBcXHBhaXJ3aXNlLmNvbXBsZXRlLm9ic1xcLCBtZXRob2QgPSBcXHBlYXJzb25cXClcbmBgYFxuYGBgIn0= -->

```r
```r
cor.test(temp$ASER_2018,temp$ihds, use = \pairwise.complete.obs\, method = \pearson\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiXG5cdFBlYXJzb24ncyBwcm9kdWN0LW1vbWVudCBjb3JyZWxhdGlvblxuXG5kYXRhOiAgdGVtcCRBU0VSXzIwMTggYW5kIHRlbXAkaWhkc1xudCA9IDMuNTE1MywgZGYgPSAyMCwgcC12YWx1ZSA9IDAuMDAyMTc2XG5hbHRlcm5hdGl2ZSBoeXBvdGhlc2lzOiB0cnVlIGNvcnJlbGF0aW9uIGlzIG5vdCBlcXVhbCB0byAwXG45NSBwZXJjZW50IGNvbmZpZGVuY2UgaW50ZXJ2YWw6XG4gMC4yNjU1NzAyIDAuODI0NzE1N1xuc2FtcGxlIGVzdGltYXRlczpcbiAgICAgY29yIFxuMC42MTc5ODUgXG4ifQ== -->

```

	Pearson's product-moment correlation

data:  temp$ASER_2018 and temp$ihds
t = 3.5153, df = 20, p-value = 0.002176
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.2655702 0.8247157
sample estimates:
     cor 
0.617985 
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuY29yLnRlc3QodGVtcCROQVMsdGVtcCRBU0VSXzIwMTgsIHVzZSA9IFxccGFpcndpc2UuY29tcGxldGUub2JzXFwsIG1ldGhvZCA9IFxccGVhcnNvblxcKVxuYGBgXG5gYGAifQ== -->

```r
```r
cor.test(temp$NAS,temp$ASER_2018, use = \pairwise.complete.obs\, method = \pearson\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiXG5cdFBlYXJzb24ncyBwcm9kdWN0LW1vbWVudCBjb3JyZWxhdGlvblxuXG5kYXRhOiAgdGVtcCROQVMgYW5kIHRlbXAkQVNFUl8yMDE4XG50ID0gMC45NTMzMiwgZGYgPSAyNSwgcC12YWx1ZSA9IDAuMzQ5NlxuYWx0ZXJuYXRpdmUgaHlwb3RoZXNpczogdHJ1ZSBjb3JyZWxhdGlvbiBpcyBub3QgZXF1YWwgdG8gMFxuOTUgcGVyY2VudCBjb25maWRlbmNlIGludGVydmFsOlxuIC0wLjIwNzQ5MTcgIDAuNTI5NjEwMlxuc2FtcGxlIGVzdGltYXRlczpcbiAgICAgIGNvciBcbjAuMTg3MjkwMSBcbiJ9 -->

```

	Pearson's product-moment correlation

data:  temp$NAS and temp$ASER_2018
t = 0.95332, df = 25, p-value = 0.3496
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.2074917  0.5296102
sample estimates:
      cor 
0.1872901 
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuY29yLnRlc3QodGVtcCROQVMsdGVtcCRpaGRzLCB1c2UgPSBcXHBhaXJ3aXNlLmNvbXBsZXRlLm9ic1xcLCBtZXRob2QgPSBcXHNwZWFybWFuXFwpXG5gYGBcbmBgYCJ9 -->

```r
```r
cor.test(temp$NAS,temp$ihds, use = \pairwise.complete.obs\, method = \spearman\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiQ2Fubm90IGNvbXB1dGUgZXhhY3QgcC12YWx1ZSB3aXRoIHRpZXNcblxuXHRTcGVhcm1hbidzIHJhbmsgY29ycmVsYXRpb24gcmhvXG5cbmRhdGE6ICB0ZW1wJE5BUyBhbmQgdGVtcCRpaGRzXG5TID0gMTgyNiwgcC12YWx1ZSA9IDAuODkwOFxuYWx0ZXJuYXRpdmUgaHlwb3RoZXNpczogdHJ1ZSByaG8gaXMgbm90IGVxdWFsIHRvIDBcbnNhbXBsZSBlc3RpbWF0ZXM6XG4gICAgICAgIHJobyBcbi0wLjAzMTA2NDY3IFxuIn0= -->

```
Cannot compute exact p-value with ties

	Spearman's rank correlation rho

data:  temp$NAS and temp$ihds
S = 1826, p-value = 0.8908
alternative hypothesis: true rho is not equal to 0
sample estimates:
        rho 
-0.03106467 
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuY29yLnRlc3QodGVtcCRBU0VSXzIwMTgsdGVtcCRpaGRzLCB1c2UgPSBcXHBhaXJ3aXNlLmNvbXBsZXRlLm9ic1xcLCBtZXRob2QgPSBcXHNwZWFybWFuXFwpXG5gYGBcbmBgYCJ9 -->

```r
```r
cor.test(temp$ASER_2018,temp$ihds, use = \pairwise.complete.obs\, method = \spearman\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiQ2Fubm90IGNvbXB1dGUgZXhhY3QgcC12YWx1ZSB3aXRoIHRpZXNcblxuXHRTcGVhcm1hbidzIHJhbmsgY29ycmVsYXRpb24gcmhvXG5cbmRhdGE6ICB0ZW1wJEFTRVJfMjAxOCBhbmQgdGVtcCRpaGRzXG5TID0gNzA1LjcsIHAtdmFsdWUgPSAwLjAwMzA2M1xuYWx0ZXJuYXRpdmUgaHlwb3RoZXNpczogdHJ1ZSByaG8gaXMgbm90IGVxdWFsIHRvIDBcbnNhbXBsZSBlc3RpbWF0ZXM6XG4gICAgIHJobyBcbjAuNjAxNTI1IFxuIn0= -->

```
Cannot compute exact p-value with ties

	Spearman's rank correlation rho

data:  temp$ASER_2018 and temp$ihds
S = 705.7, p-value = 0.003063
alternative hypothesis: true rho is not equal to 0
sample estimates:
     rho 
0.601525 
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuY29yLnRlc3QodGVtcCROQVMsdGVtcCRBU0VSXzIwMTgsIHVzZSA9IFxccGFpcndpc2UuY29tcGxldGUub2JzXFwsIG1ldGhvZCA9IFxcc3BlYXJtYW5cXClcbmBgYFxuYGBgIn0= -->

```r
```r
cor.test(temp$NAS,temp$ASER_2018, use = \pairwise.complete.obs\, method = \spearman\)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiQ2Fubm90IGNvbXB1dGUgZXhhY3QgcC12YWx1ZSB3aXRoIHRpZXNcblxuXHRTcGVhcm1hbidzIHJhbmsgY29ycmVsYXRpb24gcmhvXG5cbmRhdGE6ICB0ZW1wJE5BUyBhbmQgdGVtcCRBU0VSXzIwMThcblMgPSAyODYwLjksIHAtdmFsdWUgPSAwLjUyODhcbmFsdGVybmF0aXZlIGh5cG90aGVzaXM6IHRydWUgcmhvIGlzIG5vdCBlcXVhbCB0byAwXG5zYW1wbGUgZXN0aW1hdGVzOlxuICAgICAgcmhvIFxuMC4xMjY3MTc2IFxuIn0= -->

```
Cannot compute exact p-value with ties

	Spearman's rank correlation rho

data:  temp$NAS and temp$ASER_2018
S = 2860.9, p-value = 0.5288
alternative hypothesis: true rho is not equal to 0
sample estimates:
      rho 
0.1267176 
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Create graph showing IHDS, ASER, and NAS all on same scale.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuXG5zY29yZXMubG9uZyA8LSBzY29yZXMgJT4lIHNlbGVjdChTdGF0ZSwgQVNFUl8yMDE4LCBOQVMsIGloZHMpICU+JVxuICByZW5hbWUoSUhEUyA9IGloZHMpICU+JVxuICBmaWx0ZXIoIWlzLm5hKEFTRVJfMjAxOCkgJiAhaXMubmEoTkFTKSkgJT4lXG4gIGdhdGhlcihBc3Nlc3NtZW50LCBhdmdfc2NvcmUsIC1TdGF0ZSkgXG5cbmdncGxvdChkYXRhID0gc2NvcmVzLmxvbmcsIGFlcyh4PSByZW9yZGVyKFN0YXRlLCBhdmdfc2NvcmUpLHk9YXZnX3Njb3JlLCBmaWxsPSBBc3Nlc3NtZW50KSkgKyBcbiAgZ2VvbV9iYXIoc3RhdCA9IFxcaWRlbnRpdHlcXCwgcG9zaXRpb24gPSBwb3NpdGlvbl9kb2RnZSh3aWR0aD0uOCkpICsgXG4gIHRoZW1lKGF4aXMudGV4dC54ID0gZWxlbWVudF90ZXh0KGFuZ2xlPTkwKSkgKyBcbiAgc2NhbGVfZmlsbF9tYW51YWwodmFsdWVzID0gYyhcXGxpZ2h0Ymx1ZVxcLCBcXGJsdWVcXCwgXFxkYXJrYmx1ZVxcKSkrXG4gIGxhYnMoeSA9IFxcQXZlcmFnZSBzY29yZVxcLCB4ID0gXFxcXClcblxuYGBgXG5gYGAifQ== -->

```r
```r

scores.long <- scores %>% select(State, ASER_2018, NAS, ihds) %>%
  rename(IHDS = ihds) %>%
  filter(!is.na(ASER_2018) & !is.na(NAS)) %>%
  gather(Assessment, avg_score, -State) 

ggplot(data = scores.long, aes(x= reorder(State, avg_score),y=avg_score, fill= Assessment)) + 
  geom_bar(stat = \identity\, position = position_dodge(width=.8)) + 
  theme(axis.text.x = element_text(angle=90)) + 
  scale_fill_manual(values = c(\lightblue\, \blue\, \darkblue\))+
  labs(y = \Average score\, x = \\)

```
```

<!-- rnb-source-end -->

<!-- rnb-plot-begin -->

<img src="data:image/png;base64,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" />

<!-- rnb-plot-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Attempt to create the same bar but with standard errors for IHDS. 



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuIyB0cmVhdCB0aGUgU0UgYXMganVzdCBhbm90aGVyIHNjb3JlXG5zY29yZXMubG9uZzIgPC0gc2NvcmVzICAlPiVcbiAgZmlsdGVyKCFpcy5uYShBU0VSXzIwMTgpICYgIWlzLm5hKE5BUykpICU+JSBcbiAgbXV0YXRlKElIRFMgPSBwYXN0ZShpaGRzLGloZHNfc2UsIHNlcCA9XFwtXFwpKSAlPiUgXG4gIHNlbGVjdChTdGF0ZSwgQVNFUl8yMDE4LCBOQVMsIElIRFMpICU+JSBcbiAgZ2F0aGVyKEFzc2Vzc21lbnQsIGF2Z19zY29yZSwgLVN0YXRlKSAlPiVcbiAgc2VwYXJhdGUoYXZnX3Njb3JlLCBzZXAgPSBcXC1cXCwgaW50byA9IGMoXFxhdmdfc2NvcmVcXCxcXHNlXFwpKVxuYGBgXG5gYGAifQ== -->

```r
```r
# treat the SE as just another score
scores.long2 <- scores  %>%
  filter(!is.na(ASER_2018) & !is.na(NAS)) %>% 
  mutate(IHDS = paste(ihds,ihds_se, sep =\-\)) %>% 
  select(State, ASER_2018, NAS, IHDS) %>% 
  gather(Assessment, avg_score, -State) %>%
  separate(avg_score, sep = \-\, into = c(\avg_score\,\se\))
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiRXhwZWN0ZWQgMiBwaWVjZXMuIE1pc3NpbmcgcGllY2VzIGZpbGxlZCB3aXRoIGBOQWAgaW4gNTQgcm93cyBbMSwgMiwgMywgNCwgNSwgNiwgNywgOCwgOSwgMTAsIDExLCAxMiwgMTMsIDE0LCAxNSwgMTYsIDE3LCAxOCwgMTksIDIwLCAuLi5dLlxuIn0= -->

```
Expected 2 pieces. Missing pieces filled with `NA` in 54 rows [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...].
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuIyBjb252ZXJ0IGF2Z19zY29yZSBhbmQgc2UgYmFjayB0byBudW1lcmljIFxuc2NvcmVzLmxvbmcyIDwtIHNjb3Jlcy5sb25nMiAgJT4lXG4gIG11dGF0ZShhdmdfc2NvcmUgPSBhcy5udW1lcmljKGF2Z19zY29yZSksIHNlID0gYXMubnVtZXJpYyhzZSkpXG5gYGBcbmBgYCJ9 -->

```r
```r
# convert avg_score and se back to numeric 
scores.long2 <- scores.long2  %>%
  mutate(avg_score = as.numeric(avg_score), se = as.numeric(se))
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiTkFzIGludHJvZHVjZWQgYnkgY29lcmNpb25OQXMgaW50cm9kdWNlZCBieSBjb2VyY2lvblxuIn0= -->

```
NAs introduced by coercionNAs introduced by coercion
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuIyBtdWx0aXBseSBzZSBcbnNjb3Jlcy5sb25nMiA8LSBzY29yZXMubG9uZzIgICU+JVxuICBtdXRhdGUoc2UgPSAxMDAqc2UpXG5cblxuIyBjcmVhdGUgeV9taW4gYW5kIHlfbWF4XG5tIDwtIHFub3JtKDEtLjA1LzIpXG5zY29yZXMubG9uZzIgPC0gc2NvcmVzLmxvbmcyICAlPiVcbiAgbXV0YXRlKHltaW4gPSBhdmdfc2NvcmUtbSpzZSwgeW1heCA9IGF2Z19zY29yZSttKnNlKSAlPiVcbiAgbXV0YXRlKHltaW4gPSBpZmVsc2UoeW1pbiA8MCwgMCwgeW1pbikpXG5cblxuZ2dwbG90KGRhdGEgPSBzY29yZXMubG9uZzIsIGFlcyh4PSByZW9yZGVyKFN0YXRlLCBhdmdfc2NvcmUpLHk9YXZnX3Njb3JlLCBmaWxsPSBBc3Nlc3NtZW50KSkgKyBcbiAgZ2VvbV9iYXIoc3RhdCA9IFxcaWRlbnRpdHlcXCwgcG9zaXRpb24gPSBwb3NpdGlvbl9kb2RnZSh3aWR0aD0uOCkpICsgXG4gIGdlb21fZXJyb3JiYXIoYWVzKHltaW4gPSB5bWluLCB5bWF4ID0geW1heCksIHdpZHRoID0gLjEpICsgXG4gIHRoZW1lKGF4aXMudGV4dC54ID0gZWxlbWVudF90ZXh0KGFuZ2xlPTkwKSkgKyBcbiAgc2NhbGVfZmlsbF9tYW51YWwodmFsdWVzID0gYyhcXGxpZ2h0Ymx1ZVxcLCBcXGJsdWVcXCwgXFxkYXJrYmx1ZVxcKSkrXG4gIGxhYnMoeSA9IFxcQXZlcmFnZSBzY29yZVxcLCB4ID0gXFxcXClcbmdnc2F2ZShcXGFzZXJfbmFzX2loZHNfdmFsdWVzLnBuZ1xcLCB3aWR0aCA9IDksIGhlaWdodCA9IDYgLCBwYXRoID0gZmlndXJlcylcbmBgYFxuYGBgIn0= -->

```r
```r
# multiply se 
scores.long2 <- scores.long2  %>%
  mutate(se = 100*se)


# create y_min and y_max
m <- qnorm(1-.05/2)
scores.long2 <- scores.long2  %>%
  mutate(ymin = avg_score-m*se, ymax = avg_score+m*se) %>%
  mutate(ymin = ifelse(ymin <0, 0, ymin))


ggplot(data = scores.long2, aes(x= reorder(State, avg_score),y=avg_score, fill= Assessment)) + 
  geom_bar(stat = \identity\, position = position_dodge(width=.8)) + 
  geom_errorbar(aes(ymin = ymin, ymax = ymax), width = .1) + 
  theme(axis.text.x = element_text(angle=90)) + 
  scale_fill_manual(values = c(\lightblue\, \blue\, \darkblue\))+
  labs(y = \Average score\, x = \\)
ggsave(\aser_nas_ihds_values.png\, width = 9, height = 6 , path = figures)
```
```

<!-- rnb-source-end -->

<!-- rnb-plot-begin -->

<img src="data:image/png;base64,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" />

<!-- rnb-plot-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



Show line graphs of ASER class 3 reading scores for govt school students over time.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYGBgclxuIyByZXNoYXBlIHRoZSBtYWluIGRhdGFcbnNjb3Jlcy5sb25nMyA8LSBtYWluX2RhdGEgJT4lIFxuICBzZWxlY3QoU3RhdGUsIHN0YXJ0c193aXRoKFxcQVNFUlxcKSkgJT4lIFxuICBzZWxlY3QoLWFzZXJfcmFuaykgJT4lXG4gIGdhdGhlcihrZXkgPVxcVGVtcFxcLCB2YWx1ZT0gXFxSZWFkaW5nXFwsIC1TdGF0ZSkgJT4lXG4gIHNlcGFyYXRlKFRlbXAsIHNlcCA9IFxcX1xcLCBpbnRvID0gYyhcXGR1bW15XFwsXFxZZWFyXFwpKVxuXG5nZ3Bsb3QoZGF0YSA9IHNjb3Jlcy5sb25nMywgYWVzKHg9WWVhciwgeT1SZWFkaW5nLCBjb2xvcj1TdGF0ZSkpICtcbiAgZ2VvbV9saW5lKGFlcyhncm91cD1TdGF0ZSkpXG5cbmdnc2F2ZShcXGFzZXJfb3Zlcl90aW1lLnBuZ1xcLCBwYXRoID0gZmlndXJlcylcbmBgYFxuYGBgIn0= -->

```r
```r
# reshape the main data
scores.long3 <- main_data %>% 
  select(State, starts_with(\ASER\)) %>% 
  select(-aser_rank) %>%
  gather(key =\Temp\, value= \Reading\, -State) %>%
  separate(Temp, sep = \_\, into = c(\dummy\,\Year\))

ggplot(data = scores.long3, aes(x=Year, y=Reading, color=State)) +
  geom_line(aes(group=State))

ggsave(\aser_over_time.png\, path = figures)
```
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiU2F2aW5nIDcuMjkgeCA0LjUgaW4gaW1hZ2VcbiJ9 -->

```
Saving 7.29 x 4.5 in image
```



<!-- rnb-output-end -->

<!-- rnb-plot-begin -->

<img src="data:image/png;base64,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" />

<!-- rnb-plot-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->

