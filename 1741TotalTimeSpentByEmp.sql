Select event_day as Day, emp_id,sum(out_time - in_time) as total_time from employees group by event_day,emp_id;