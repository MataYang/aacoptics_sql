
select * from sys.tables

--�����󶨲�ѯ
select top 1* from RESOURCE_SETUP

--ά�����ϲ�ѯ
select top 1* from ITEM

--ά�������Զ����ֶ�
select top 1* from CUSTOM_FIELDS

--BOM��ѯ
select top 1* from Bom

--��Դ��ѯresource
select top 10* from RESOURCE_TYPE

--��ӡlog
select top 1* from Z_PRINT_LOG

--LOT SFC��SN
select top 1* from SFC where SFC = '210113E09K';
select top 1* from SFC_DATA --LOT Data ģ�ߺ� �汾 Ѩλ
select top 1* from Z_LensID_SFC;--link SerialID
select top 1* from Z_LensCPSNInfo; --machine link SerialID

--LOT scrap���α���
select top 10* from Z_LensID_SFC_DELETE; --operation field Scrap

--״̬��
select top 10* from STATUS 

--��վ��¼
select top 10* from ACTIVITY_LOG;

--��Ʒ��վ��־
select top 10* from PRODUCTION_LOG;

--���������ռ���
select top 10* from PARAMETRIC_MEASURE

--��ת��_�շ��ϱ� --type���ֶ�Ϊ���壺����-null������-��������,����-��������ת��
select top 1000* 
	from Z_SFC_RECEIVED order by CREATE_DATE_TIME desc 

--��Է���
select top 10* from Z_MATCH_RULE

--��Ʒ��ע��
select * from PRODUCTION_COMMENT

--error_code����
select top 100* from NC_CODE
--���м��Ĳ�����¼��
select top 100* from NC_DATA
--����Ʒά��·��
select top 100* from NC_DISP_ROUTER


--�������ݲ�ѯ�� actual�м�¼����
select top 100MEASURE_NAME,ACTUAL from PARAMETRIC_MEASURE where PARA_CONTEXT_GBO = 'SFCBO:2080,200903N123'

--��ת��_�շ��ϴ�ӡ��
select top 1* from Z_Product_StockManage

--��ת������-��Ŀ�����͡�����������
select z1.ID,z1.SFC,z1.SITE,z1.TYPE,z1.QTY,c3.ATTRIBUTE,c3.VALUE
	from Z_SFC_RECEIVED z1,SFC s2,CUSTOM_FIELDS c3
	where z1.SFC = s2.SFC
	 and z1.SITE = '2210'
	 and c3.HANDLE = s2.ITEM_BO
	 and c3.ATTRIBUTE in ('PROJECT_NAME','ITEM_NAME')
	 and c3.VALUE = 'BR'
	 group by z1.SFC,z1.SITE,z1.TYPE,z1.QTY,c3.ATTRIBUTE,c3.VALUE,z1.ID






