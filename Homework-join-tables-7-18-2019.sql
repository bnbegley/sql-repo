select * from Orders
Select * from OrderLines
Select * from Products

Select Date, Name, City, state, ol.Id, OrderId, ProductId, Quantity from Orders o
	join Customers c
	on o.CustomerId = c.Id
	join OrderLines ol
	on ol.OrderId = o.Id
	where ol.OrderId = 2022