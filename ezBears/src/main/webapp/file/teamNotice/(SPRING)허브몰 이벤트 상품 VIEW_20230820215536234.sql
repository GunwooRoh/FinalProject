
Select * From products;
Select * From eventProduct;
select * from category;

Select * From cart;
Select * From orders;
Select * From orderDetails;


--�̺�Ʈ ��ǰ�� ����������? 
--> product ���̺�� �����ؼ� �����´�
--> join���ؼ� ����� �޾ƿ����� view�� ����°� ����

--join
select p.*, e.eventname,e.eventproductno
from products p join
eventProduct e
on p.productNo = e.productNo
where e.eventname='NEW';


--view
create or replace view eventproductview
as 
select p.*, e.eventname, e.eventproductno
from products p join
eventProduct e
on p.productNo = e.productNo;

select * from eventProductView;
--New view-select
select * from eventProductView
where eventname='NEW';

select * from eventProductView
where eventname='BEST';

select * from eventProductView
where eventname='MD';

