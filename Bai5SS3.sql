use ss3;
drop table cart_items;
CREATE TABLE cart_items (
    CartItemID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT not null ,
    ProductID INT not null,
    Quantity INT not null,
    AddedDate DATETIME DEFAULT CURRENT_TIMESTAMP
);
select UserID,ProductID,Quantity,AddedDate
from cart_items
where UserID = 1 and ProductID = 1;

insert into cart_items (userid,productid,quantity,addeddate)
values (1,1,1,current_timestamp());

update cart_items
set quantity = quantity + 1
where userid = 1 and productid = 1;

select UserID,ProductID,Quantity,AddedDate
from cart_items
where userid = 1;

update cart_items
set quantity = 5
where userid = 1 and productid = 1;

delete from cart_items
where userid = 1 and productid = 1;


 