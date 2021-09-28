

select top 100* from RESOURCE_SETUP where RESOURCE_BO like 'ResourceBO:2210%'

select top 10* from SHOP_ORDER

select a.RESOURCE_BO '资源',
		a.SETUP_GBO '站点工单',
		b.SITE '站点', 
		b.SHOP_ORDER '工单',
		b.PLANNED_BOM_BO '物料清单',
		b.ROUTER_BO '工艺路线',
		a.DATE_TIME '日期' 
		from RESOURCE_SETUP a,SHOP_ORDER b
		where a.SETUP_GBO = b.HANDLE
		and Left(a.RESOURCE_BO,15) = 'ResourceBO:2210'
		order by a.DATE_TIME desc