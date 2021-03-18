
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

--打印log
select top 1* from Z_PRINT_LOG

--LOT SFC绑定SN
select top 1* from SFC where SFC = '210113E09K';
select top 1* from SFC_DATA --LOT Data 模具号 版本 穴位
select top 1* from Z_LensID_SFC;--link SerialID
select top 1* from Z_LensCPSNInfo; --machine link SerialID

--LOT scrap批次报废
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

--产品备注表
select * from PRODUCTION_COMMENT

--error_code内容
select top 100* from NC_CODE
--所有检测的不良记录表
select top 100* from NC_DATA
--不良品维修路线
select top 100* from NC_DISP_ROUTER


--测试数据查询表 actual列记录数据
select top 100MEASURE_NAME,ACTUAL from PARAMETRIC_MEASURE where PARA_CONTEXT_GBO = 'SFCBO:2080,200903N123'

--中转仓_收发料打印表
select top 1* from Z_Product_StockManage

--中转仓物料-项目、类型、发料情况情况
select z1.ID,z1.SFC,z1.SITE,z1.TYPE,z1.QTY,c3.ATTRIBUTE,c3.VALUE
	from Z_SFC_RECEIVED z1,SFC s2,CUSTOM_FIELDS c3
	where z1.SFC = s2.SFC
	 and z1.SITE = '2210'
	 and c3.HANDLE = s2.ITEM_BO
	 and c3.ATTRIBUTE in ('PROJECT_NAME','ITEM_NAME')
	 and c3.VALUE = 'BR'
	 group by z1.SFC,z1.SITE,z1.TYPE,z1.QTY,c3.ATTRIBUTE,c3.VALUE,z1.ID






