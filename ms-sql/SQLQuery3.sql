use pubs
select * from sys.tables

select * from dbo.authors

select au_fname
		phone
		from dbo.authors order by au_fname DESC

		SELECT * FROM dbo.sales

		select top 5 ord_num, qty from dbo.sales order by qty desc

		select * from dbo.authors
		where state = 'CA' and contract = 0  ORDER BY city

		select sum(QTY) as 'vendas totais' FROM dbo.sales


