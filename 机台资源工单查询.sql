

select top 100* from RESOURCE_SETUP where RESOURCE_BO like 'ResourceBO:2210%'

select top 10* from SHOP_ORDER

select a.RESOURCE_BO '��Դ',
		a.SETUP_GBO 'վ�㹤��',
		b.SITE 'վ��', 
		b.SHOP_ORDER '����',
		b.PLANNED_BOM_BO '�����嵥',
		b.ROUTER_BO '����·��',
		a.DATE_TIME '����' 
		from RESOURCE_SETUP a,SHOP_ORDER b
		where a.SETUP_GBO = b.HANDLE
		and Left(a.RESOURCE_BO,15) = 'ResourceBO:2210'
		order by a.DATE_TIME desc