select bank.name AS name, SUM (transaction.amount)
from bank 
inner join transaction on transaction.bank_id = bank.bank_code
where date_part('MONTH', transaction.transaction_date) = 5
group by name 