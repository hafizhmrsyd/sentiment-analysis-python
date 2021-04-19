--select CustomerId, Total from invoices a where InvoiceId >= 7 AND InvoiceId <=41;
--select FirstName ||' '|| LastName as Name from customers;
select b.FirstName ||' '|| b.LastName as Name, a.InvoiceDate as Date, a.Total
from invoices as a
inner join customers as b
on a.CustomerId = b.CustomerId
where a.InvoiceDate > '2009-02-01' and a.InvoiceDate < '2009-06-30)'
ORDER by date;

--select * from invoices where InvoiceDate > '2009-02-01' and InvoiceDate < '2009-06-30)';