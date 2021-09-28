
select * from sys.tables

--工单绑定查询
select top 1* from RESOURCE_SETUP

--维护物料查询
select top 1* from ITEM

--维护物料自定义字段
select top 1* from CUSTOM_FIELDS

--BOM查询
select top 1* from Bom

--资源查询resource
select top 10* from RESOURCE_TYPE

--注塑JQHP及中转仓发料打印log
select top 1* from Z_PRINT_LOG

--LOT SFC绑定SN
select top 1* from SFC where SFC = '210113E09K';
select top 1* from SFC_DATA --LOT Data 模具号 版本 穴位
select top 1* from Z_LensID_SFC;--link SerialID
select top 100* from Z_LensCPSNInfo; --SFC link 镀膜板 serialID

--LOT scrap批次报废、中转仓冻结
select top 10* from Z_LensID_SFC_DELETE; --operation field Scrap

--状态表
select top 10* from STATUS 

--过站记录
select top 10* from ACTIVITY_LOG;

--产品过站日志
select top 10* from PRODUCTION_LOG;

--生产数据收集表
select top 10* from PARAMETRIC_MEASURE

--中转仓_收发料表 --type列字段为含义：收料-null，发料-正常发料,退料-退料至中转库
select top 1000* 
	from Z_SFC_RECEIVED order by CREATE_DATE_TIME desc 

--配对发料
select top 10* from Z_MATCH_RULE

--配对发料打印日志
select top 10* from Z_MATCH_PRINT_LOG

--产品状态、操作表
select * from PRODUCTION_COMMENT

--error_code内容
select top 100* from NC_CODE
--所有检测的不良记录表
select top 100* from NC_DATA where NC_CONTEXT_GBO = 'SFCBO:2210,201201E57N'
--不良品维修路线
select top 100* from NC_DISP_ROUTER


--测试数据查询表 actual列记录数据
select top 100MEASURE_NAME,ACTUAL from PARAMETRIC_MEASURE where PARA_CONTEXT_GBO = 'SFCBO:2080,200903N123'

--异常批次，SFC与镀膜板SN关联查询
select top 10* from Z_LensID_SFC where LENS_ID = '69711478'
select top 10* from Z_LensCPSNInfo where ID = '69711478'

select z1.ID,z1.SFC,z2.ID,z2.PART_NAME,z2.PROJECT_NAME,z2.SN,z2.SITE
		from Z_LensID_SFC z1, Z_LensCPSNInfo z2
		where z1.SFC = '210220B0VK'
		and z1.LENS_ID = z2.ID
		--and z2.SN = 'H1486017A01P6-201011-01836'
		and z2.site = 5060

--APS模具版本维护表
select top 10* from z_optics_mould_setting

--组装上料记录
select top 10* from Z_MATCH_LOAD_HISTORY



