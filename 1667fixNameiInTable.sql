# Write your MySQL query statement below
-- we are transforming first character of string into Upper Case & rest all letters into Lower case

select user_id,concat(upper(substring(name,1,1)),lower(substring(name,2))) as name from Users order by user_id;