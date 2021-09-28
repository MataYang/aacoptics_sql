

select top 10* 
	from Z_VERSION_USED_HISTORY
	where PROJECT_NAME='125064A01'
		and left([RESRCE],7) = '1B2FT06'
		and MODEL='N2' 
		and ITEM_NAME='SP4'
	order by ID desc
go

-------------É¾³ý¼ÇÂ¼
begin tran
delete from Z_VERSION_USED_HISTORY 
	where PROJECT_NAME='125064A01' 
		and RESRCE = '1B2FT06'
		and MODEL='N2'
		and ITEM_NAME='SP4'
go
--rollback
commit