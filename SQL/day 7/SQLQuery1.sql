select *from Employee
use employee database

/*ROW NUMBER() WINDOW FUNCTION- GIVES ROW WISE RANKING */
select dept_id, first_name,last_name,salary,
ROW_NUMBER() over (order by salary desc) as popularity,
RANK() over (order by salary desc) as popularity_rank,
DENSE_RANK() over (order by salary desc) as popularity_dense_rank

from Employee
/*partition by and order by: partion by gives partition of same department together and order by gives the ranking of salary  */

select dept_id, first_name,last_name,salary,
ROW_NUMBER() over (Partition by dept_id order by salary desc) as popularity from Employee