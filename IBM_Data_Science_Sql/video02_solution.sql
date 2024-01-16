select mac_add,count(salt) as salt from ( 

select 
accounts.id,
accounts.mac_add,
encryptions.salt
from accounts left join encryptions
on accounts.id = encryptions.acc_id where is_active='1' and len(trim(salt))<8 ) a group by mac_add
