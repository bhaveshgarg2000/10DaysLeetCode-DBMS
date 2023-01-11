Select u.user_id as buyer_id, u.join_date, count(o.order_date) as orders_in_2019 from users u left join (select * from orders where order_date >= '2019-01-01') o
on u.user_id = o.buyer_id 
group by u.user_id;
