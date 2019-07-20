Select OrderId, C.Name, p.Name, Quantity, Price from Orders o
	join Customers c
	on o.CustomerId = c.Id
	join OrderLines ol
	on ol.OrderId = o.Id
	join Products p
	on p.Id = ol.ProductId
	where ol.OrderId = 2031

	Select * from Products