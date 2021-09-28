

select top 100* from Z_LensPackerProcessingTime order by id desc

begin tran
insert into Z_LensPackerProcessingTime values('2210','3B2FF01',GETDATE()-2,GETDATE(),GETDATE()-2,0);
go
commit
rollback

-----------------
select top 100* from Z_LensCPSNInfo --where sn = '085074A01P1-1909-000034' 
								order by ID desc

begin tran
insert into Z_LensCPSNInfo values('2210','085074A01P1-1909-000043','085074A01','P1','50022','N2','3B2FF01','1',GETDATE()-1,GETDATE()-1,1,0)
insert into Z_LensCPSNInfo values('2210','085074A01P1-1909-000044','085074A01','P1','50023','N2','3B2FF01','1',GETDATE()-1,GETDATE()-1,1,0)
--insert into Z_LensCPSNInfo values('2210','085074A01P1-1909-000038','085074A01','P1','50024','N2','3B2FF01','1',GETDATE()-1,GETDATE()-1,1,0)
--insert into Z_LensCPSNInfo values('2210','085074A01P1-1909-000039','085074A01','P1','50025','N2','3B2FF01','1',GETDATE()-1,GETDATE()-1,1,0)
--insert into Z_LensCPSNInfo values('2210','085074A01P1-1909-000040','085074A01','P1','50026','N2','3B2FF01','1',GETDATE()-1,GETDATE()-1,1,0)
--insert into Z_LensCPSNInfo values('2210','085074A01P1-1909-000041','085074A01','P1','50027','N2','3B2FF01','1',GETDATE()-1,GETDATE()-1,1,0)
--insert into Z_LensCPSNInfo values('2210','085074A01P1-1909-000042','085074A01','P1','50028','N2','3B2FF01','1',GETDATE()-1,GETDATE()-1,1,0)
go
commit

--begin tran
--update Z_LensCPSNInfo set STATUS = 0 where SN in('085074A01P1-1909-000008',
--												'085074A01P1-1909-000009',
--												'085074A01P1-1909-000010',
--												'085074A01P1-1909-000011',
--												'085074A01P1-1909-000012',
--												'085074A01P1-1909-000013',
--												'085074A01P1-1909-000014'
--													)
--go
--commit

-------------------------
select top 100* from Z_LensID_SFC where SFC = '210524E003' and LENS_ID = '23286283'
			order by id desc

select top 100* from Z_LensID_SFC z1,Z_LensCPSNInfo z2
			where z1.LENS_ID = z2.ID
			and z2.ID = '23286313'

select top 10* from Z_LensID_SFC where LENS_ID = '23286313'
select top 10* from Z_PRINT_LOG  --where SFC = '210524E002' 
			order by id desc

select top 10* from SFC where SFC = '210524E003' --
update SFC set qty = 1152.000000 where SFC = '210524E003'

