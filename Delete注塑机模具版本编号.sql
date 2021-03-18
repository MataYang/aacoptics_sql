

--查询项目名、品名、模具
SELECT * 
	FROM dbo.Z_VERSION_USED_HISTORY
	WHERE PROJECT_NAME='646080' 
		AND MODEL='N5'
		AND ITEM_NAME='P4'
	order by ID desc
go

--删除品名
begin tran
delete from Z_VERSION_USED_HISTORY 
	where PROJECT_NAME='646080' 
		AND MODEL='N5'
		AND ITEM_NAME='P4'
go
delete from Z_VERSION_USED_HISTORY 
	where PROJECT_NAME='646080' 
		AND MODEL='N5'
		AND ITEM_NAME='P1'
go

--rollback
commit
