with table1 as(select a.account_number,
b.amount,
cast(replace(b.amount,'EUR','') as decimal(10,2)) as cureency 
from card a left join transection b
on a.card_id = b.card_id where b.amount like '%EUR%'
union all
select a.account_number,
b.amount,
cast(replace(b.amount,'USD','') as decimal(10,2)) as cureency 
from card a left join transection b
on a.card_id = b.card_id where b.amount like '%USD%'), table2 as(
select account_number,
case when amount like '%EUR%' then cureency else 0 end as euro_curency,
case when amount like '%USD%' then cureency else 0 end as USD_curency
from table1 
)
select account_number, sum(euro_curency) as sum_euro,sum(USD_curency) as sum_usd from table2 group by account_number order by account_number asc
--select * from table1

