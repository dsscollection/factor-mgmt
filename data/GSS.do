#delimit ;

   infix
      year     1 - 11
      id_      12 - 22
      wrkstat  23 - 33
      prestige 34 - 44
      marital  45 - 55
      childs   56 - 66
      age      67 - 77
      educ     78 - 88
      sex      89 - 99
      race     100 - 110
      incom16  111 - 121
      income   122 - 132
      rincome  133 - 143
      income72 144 - 154
      partyid  155 - 165
      finrela  166 - 176
      sexornt  177 - 187
using GSS.dat;

label variable year     "Gss year for this respondent                       ";
label variable id_      "Respondent id number";
label variable wrkstat  "Labor force status";
label variable prestige "Rs occupational prestige score  (1970)";
label variable marital  "Marital status";
label variable childs   "Number of children";
label variable age      "Age of respondent";
label variable educ     "Highest year of school completed";
label variable sex      "Respondents sex";
label variable race     "Race of respondent";
label variable incom16  "Rs family income when 16 yrs old";
label variable income   "Total family income";
label variable rincome  "Respondents income";
label variable income72 "Total family income";
label variable partyid  "Political party affiliation";
label variable finrela  "Opinion of family income";
label variable sexornt  "Sexual orientation";


label define gsp001x
   9        "No answer"
   8        "Other"
   7        "Keeping house"
   6        "School"
   5        "Retired"
   4        "Unempl, laid off"
   3        "Temp not working"
   2        "Working parttime"
   1        "Working fulltime"
   0        "Not applicable"
;
label define gsp002x
   9        "No answer"
   5        "Never married"
   4        "Separated"
   3        "Divorced"
   2        "Widowed"
   1        "Married"
;
label define gsp003x
   9        "Dk na"
   8        "Eight or more"
;
label define gsp004x
   99       "No answer"
   98       "Don't know"
   89       "89 or older"
;
label define gsp005x
   99       "No answer"
   98       "Don't know"
   97       "Not applicable"
;
label define gsp006x
   2        "Female"
   1        "Male"
;
label define gsp007x
   3        "Other"
   2        "Black"
   1        "White"
   0        "Not applicable"
;
label define gsp008x
   9        "No answer"
   8        "Don't know"
   7        "Lived in institution"
   5        "Far above average"
   4        "Above average"
   3        "Average"
   2        "Below average"
   1        "Far below average"
   -1       "Not applicable"
;
label define gsp009x
   99       "No answer"
   98       "Don't know"
   13       "Refused"
   12       "$25000 or more"
   11       "$20000 - 24999"
   10       "$15000 - 19999"
   9        "$10000 - 14999"
   8        "$8000 to 9999"
   7        "$7000 to 7999"
   6        "$6000 to 6999"
   5        "$5000 to 5999"
   4        "$4000 to 4999"
   3        "$3000 to 3999"
   2        "$1000 to 2999"
   1        "Lt $1000"
   0        "Not applicable"
;
label define gsp010x
   99       "No answer"
   98       "Don't know"
   13       "Refused"
   12       "$25000 or more"
   11       "$20000 - 24999"
   10       "$15000 - 19999"
   9        "$10000 - 14999"
   8        "$8000 to 9999"
   7        "$7000 to 7999"
   6        "$6000 to 6999"
   5        "$5000 to 5999"
   4        "$4000 to 4999"
   3        "$3000 to 3999"
   2        "$1000 to 2999"
   1        "Lt $1000"
   0        "Not applicable"
;
label define gsp011x
   99       "No answer"
   98       "Don't know"
   13       "Refused"
   12       "$30000+"
   11       "$25000 to $29999"
   10       "$20000 to $24999"
   9        "$17500 to $19999"
   8        "$15000 to $17499"
   7        "$12500 to $14999"
   6        "$10000 to $12499"
   5        "$8000 to $9999"
   4        "$6000 to $7999"
   3        "$4000 to $5999"
   2        "$2000 to $3999"
   1        "Lt $2000"
   0        "Not applicable"
;
label define gsp012x
   9        "No answer"
   8        "Don't know"
   7        "Other party"
   6        "Strong republican"
   5        "Not str republican"
   4        "Ind,near rep"
   3        "Independent"
   2        "Ind,near dem"
   1        "Not str democrat"
   0        "Strong democrat"
;
label define gsp013x
   9        "No answer"
   8        "Don't know"
   5        "Far above average"
   4        "Above average"
   3        "Average"
   2        "Below average"
   1        "Far below average"
   0        "Not applicable"
;
label define gsp014x
   9        "No answer"
   8        "Dont know"
   3        "Heterosexual or straight"
   2        "Bisexual"
   1        "Gay, lesbian, or homosexual"
   0        "Not applicable"
;


label values wrkstat  gsp001x;
label values marital  gsp002x;
label values childs   gsp003x;
label values age      gsp004x;
label values educ     gsp005x;
label values sex      gsp006x;
label values race     gsp007x;
label values incom16  gsp008x;
label values income   gsp009x;
label values rincome  gsp010x;
label values income72 gsp011x;
label values partyid  gsp012x;
label values finrela  gsp013x;
label values sexornt  gsp014x;


