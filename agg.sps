SET DECIMAL=DOT.

DATA LIST FILE= "credit.sav"  free (",")
ENCODING="Locale"
/ custid (A15) dob * gender (F8.0) card (F8.0) card_date * month (F8.0) 
 quarter (F8.0) year (F8.0) type (F8.0) items spent 
  .

VARIABLE LABELS
custid "custid" 
 dob "dob" 
 gender "gender" 
 card "card" 
 card_date "card_date" 
 month "month" 
 quarter "quarter" 
 year "year" 
 type "type" 
 items "items" 
 spent "spent" 
 .

VALUE LABELS
/
gender 
1 "Male" 
 2 "Female" 
/
card 
1 "American Express" 
 2 "Visa" 
 3 "Mastercard" 
 4 "Discover" 
 5 "Other" 
/
month 
1 "January" 
 2 "February" 
 3 "March" 
 4 "April" 
 5 "May" 
 6 "June" 
 7 "July" 
 8 "August" 
 9 "September" 
 10 "October" 
 11 "November" 
 12 "December" 
/
quarter 
1 "Q1" 
 2 "Q2" 
 3 "Q3" 
 4 "Q4" 
/
year 
1 "2007" 
 2 "2008" 
/
type 
1 "Grocery" 
 2 "Retail" 
 3 "Entertainment" 
 4 "Travel" 
 5 "Other" 
.
VARIABLE LEVEL dob, card_date, items, spent 
 (scale).

EXECUTE.
