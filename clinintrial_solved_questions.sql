select * from clinictrial;
#3. Find average of Age
select avg(age) from clinictrial;

#4. Find minimum of Age
select min(age) from clinictrial;

#5. Find maximum of Age
select max(age) from clinictrial;

#6. Find average age of those were pregnant and not pregnant
select * from clinictrial;
select pregnant,avg(age)  as AVG_AGE from clinictrial group by pregnant;

#7. Find average blood pressure of those had drug reaction and did not had drug 
#reaction
select * from clinictrial;
select drug_reaction,avg(BP)  as AVG_BP from clinictrial group by Drug_Reaction;

#8. Add new column name as ‘Age_group’ and those having age between 16 & 21
##should be categorized as Low, more than 21 and less than 35 should be
##categorized as Middle and above 35 should be categorized as High.
alter table clinictrial add column age_group varchar(50);
update clinictrial set age_group = case 
when age between 16 and 21 then "low"
when age > 21 and age < 35 then "middle"
when age <=35 then "High"
else "null" end;

##9. Change ‘Age’ of Reetika to 32
update clinictrial 
set age = 32 where name = "Reetika";

##10. Change name of Reena as Shara’
update clinictrial set name = "Shara" where name = "Reena";

##11. Remove Chlstrl column
##12. Select only Name, Age and BP
select Name,age,BP from clinictrial;

##13. Select ladies whose first name starts with ‘E’
select name from clinictrial where name like "E%";

##14. Select ladies whose Age_group were Low
select name from clinictrial where age_group = "low";
select * from clinictrial;

##15. Select ladies whose Age_group were High
select name from clinictrial where age_group = "high";

##16. Select ladies whose name starts with ‘A’ and those were pregnant 
select name from clinictrial where name like "A%" and pregnant = "yes";

##17. Identify ladies whose BP was more than 120
 select name from clinictrial where bp >120;
 
##18. Identify ladies whose BP was between 100 and 120 
select name from clinictrial where bp between 100 and 120;

##19. Identify ladies who had low anxiety aged less than 30
select name from clinictrial where Anxty_LH = "no"and  age <30;
select * from clinictrial;

##20.Select ladies whose name ends with ‘i’
select name from clinictrial where name like "%i";

##21. Select ladies whose name ends with ‘a’
select name from clinictrial where name like "%e";
 
##22.Select ladies whose name starts with ‘K’
select name from clinictrial where name like "K%";

##23.Select ladies whose name have ‘a’ anywhere 
select name from clinictrial where name like "%a%";

##24. Order ladies in ascending way based on ‘BP’
select bp,name from clinictrial order by name asc;

##25. Order ladies in descending way based on ‘Age
select age,name from clinictrial order by name desc;
