 
--出货现品票查询
select Product,ProductionBatch,Cave,Param1 from T_SN_PrintInformation where 
  ProductionBatch in	
		(select B.SmallBox
		FROM T_SN_LargeMIddleBox A,T_SN_BoxBound B
		where A.ShipmentBatch = B.MiddleBox
		and A.ProductType  in ('LENS-165081A01','LENS-165081B01')
		and A.Customer = '欧菲'
		and A.QTY = 1600
		and A.InDate between '2021-01-01 01:00:00.000' and '2021-07-01 01:00:00.000'
		and SmallBox is not null) 
		order by Product,Time