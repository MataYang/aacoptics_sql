/****** SSMS 的 SelectTopNRows 命令的脚本  ******/
SELECT *
  FROM [NEpack].[dbo].[T_SN_PrintInformation] 
  where Product = 'LENS-085084A01' and 
  PN = '1403006368' and
  time between '2021-05-22 16:00:00.000' and '2021-05-24 13:00:00.800'
  order by id

  --截取SQL
  --RV068721052050010 RV141021051050104
  select SUBSTRING(SecrityCode,1,1) from T_SN_PrintInformation where id = 1712149
  select SUBSTRING(SecrityCode,7,LEN(SecrityCode)) from T_SN_PrintInformation where id = 1712149
  select SecrityCode from T_SN_PrintInformation where id = 1712149

  select top 1* from T_SN_PrintInformation where ID = '1712149'

  --更改SQL 
  begin tran
  update T_SN_PrintInformation set SecrityCode = SUBSTRING(SecrityCode,1,1) + 'V0687' + SUBSTRING(SecrityCode,7,LEN(SecrityCode)) where id = 1712149
  go
  commit
  --rollback

--------------------------------------更改 2021-05-22 20:00 - 2021-05-23 19:00
  begin tran
  update T_SN_PrintInformation set SecrityCode = SUBSTRING(SecrityCode,1,1) + 'V0687' + SUBSTRING(SecrityCode,7,LEN(SecrityCode)) 
		where Product = 'LENS-085084A01' and 
		PN = '1403006368' and
		time between '2021-05-22 20:00:00.000' and '2021-05-23 19:00:00.000'
  go
  commit
  --rollback
  select * from T_SN_PrintInformation
		where Product = 'LENS-085084A01' and 
		PN = '1403006368' and
		time between '2021-05-22 20:00:00.000' and '2021-05-23 19:00:00.000' order by ID
--------------------------------------更改 2021-05-23 20;00 - 2021-05-24 13:00
  begin tran
  update T_SN_PrintInformation set SecrityCode = SUBSTRING(SecrityCode,1,1) + 'V0687' + SUBSTRING(SecrityCode,7,LEN(SecrityCode)) 
		where Product = 'LENS-085084A01' and 
		PN = '1403006368' and
		time between '2021-05-23 20:00:00.000' and '2021-05-24 13:00:00.000'
  go
  commit
  --rollback
    select * from T_SN_PrintInformation
		where Product = 'LENS-085084A01' and 
		PN = '1403006368' and
		time between '2021-05-23 20:00:00.000' and '2021-05-24 13:00:00.000' order by ID
