

--现品票打印信息表
select top 100* 
	from T_SN_PrintInformation
	
--外箱 中箱 现品票绑定关系表
select top 100*
	from T_SN_BoxBound

--外箱3 中箱2 标签打印信息表
select top 100*
	from T_SN_LargeMIddleBox