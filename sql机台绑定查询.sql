
select top 1* 
	from RESOURCE_SETUP
	where RESOURCE_BO = '%3B4FN28'
	order by DATE_TIME desc

select * from SHOP_ORDER

--��ѯ��Դ�󶨹������Զ����ֶ�
SELECT T2.SHOP_ORDER,T3.*
	FROM dbo.RESOURCE_SETUP T1 ,dbo.SHOP_ORDER t2,dbo.CUSTOM_FIELDS T3
	WHERE T1.SETUP_GBO = T2.HANDLE
		and T2.PLANNED_ITEM_BO = T3.HANDLE
		and	T1.RESOURCE_BO ='ResourceBO:2210,3B3FE19'
		--and t2.SHOP_ORDER='1002483907'
	order by DATE_TIME desc
go

--ע�ܻ�ģ�߰汾��ѯ
SELECT * 
	FROM dbo.Z_VERSION_USED_HISTORY
	WHERE PROJECT_NAME='165059A01' and
		--RESRCE = '3B3FE19' and
		MODEL='N1' and
		ITEM_NAME='P1'
	order by ID desc
go


--���θ���20210318_1115