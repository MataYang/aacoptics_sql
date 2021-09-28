
--
select top 10* 
	from Z_VERSION_USED_HISTORY
	where PROJECT_NAME='136101'
		and RESRCE = '3B7FH15'
		and MODEL='N2' 
		and ITEM_NAME='BR'
	order by ID desc
go


begin tran
delete from Z_VERSION_USED_HISTORY 
	where PROJECT_NAME='136101' 
		and RESRCE = '3B7FH15'
		and MODEL='N2'
		and ITEM_NAME='BR'
go
--rollback
commit
