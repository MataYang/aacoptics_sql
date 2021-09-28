

--3B2FF03 135137A01
select top 10* from RESRCE where SITE = '2210' and RESRCE = '3B2FF03'

select top 10* from Z_VERSION_USED_HISTORY where RESRCE = '3B2FF03' order by CREATED_DATE_TIME desc

--机台上下料查询
select top 100* from Z_SLLZ_LOADUNLOAD
--update Z_SLLZ_LOADUNLOAD set SHOP_ORDER = '1002466244' where id in (1,2)

--机台物料消耗查询
select top 100* from Z_MACHINE_MODEL_USAGE


--更改过站时间
select distinct z1.SFC,z2.MACHINE_ID,z2.PROJECT_NAME,z2.MODEL_ID,z2.PART_NAME,z3.QTY,z3.SHOP_ORDER_BO
        from Z_LensID_SFC z1,Z_LensCPSNInfo z2,SFC z3 where z1.LENS_ID = z2.ID and z1.SFC = z3.SFC
        and z1.SFC in(select SFC from PRODUCTION_LOG where OPERATION = 'ZJCJXX' and DATE_TIME between (GETDATE() - 0.02) and GETDATE() and site = '2210')

select top 100* from PRODUCTION_LOG  --where SFC = '210824B4DW'
	where operation = 'ZJCJXX'
	and SFC in ('210824E91M','210824E917','210824E952','210824E90L')
	and site = '2210' order by DATE_TIME desc

--begin tran
--update PRODUCTION_LOG set DATE_TIME = GETDATE(),PARTITION_DATE = GETDATE()
--	where SFC in ('210824E91M','210824E917','210824E952','210824E90L')
--	and OPERATION = 'ZJCJXX'
--go
--commit

--新增镀膜板二维码 和 绑定SFC
--SFC 210824E91M 210824E917 210824E952 210824E90L
select top 100* from Z_LensID_SFC 
	 where sfc in ('210824E91M','210824E917','210824E952','210824E90L')
	order by CREATE_DATE_TIME desc 

--update Z_LensID_SFC set SFC = '210825E00L' , CREATE_DATE_TIME = GETDATE() where ID = 77047090
select top 100* from Z_LensCPSNInfo 
		where ID in (select LENS_ID from Z_LensID_SFC 
					 where sfc in ('210824E91M','210824E917','210824E952','210824E90L'))

--begin tran
--update Z_LensCPSNInfo set PART_NAME ='P1',MODEL_ID = 'N1',MACHINE_ID = '3B2FF03'
--	where ID in(select LENS_ID from Z_LensID_SFC 
--				where sfc in ('210824E91M','210824E917','210824E952','210824E90L'))
--go
--commit
--rollback

--产出
select * from Z_MACHINE_OUTPUT

--报废
select distinct SFC, QTY from Z_LensID_SFC_DELETE
	where OPERATION = 'SCRAP' and MODIFIED_DATE_TIME between (GETDATE() - 0.02) and  GETDATE() and site = '2210'

--清退
select * from Z_SLLZ_CLEAR



