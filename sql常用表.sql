
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

--ע��JQHP����ת�ַ��ϴ�ӡlog
select top 1* from Z_PRINT_LOG

--LOT SFC��SN
select top 1* from SFC where SFC = '210113E09K';
select top 1* from SFC_DATA --LOT Data ģ�ߺ� �汾 Ѩλ
select top 1* from Z_LensID_SFC;--link SerialID
select top 100* from Z_LensCPSNInfo; --SFC link ��Ĥ�� serialID

--LOT scrap���α��ϡ���ת�ֶ���
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

--��Է��ϴ�ӡ��־
select top 10* from Z_MATCH_PRINT_LOG

--��Ʒ״̬��������
select * from PRODUCTION_COMMENT

--error_code����
select top 100* from NC_CODE
--���м��Ĳ�����¼��
select top 100* from NC_DATA where NC_CONTEXT_GBO = 'SFCBO:2210,201201E57N'
--����Ʒά��·��
select top 100* from NC_DISP_ROUTER


--�������ݲ�ѯ�� actual�м�¼����
select top 100MEASURE_NAME,ACTUAL from PARAMETRIC_MEASURE where PARA_CONTEXT_GBO = 'SFCBO:2080,200903N123'

--�쳣���Σ�SFC���Ĥ��SN������ѯ
select top 10* from Z_LensID_SFC where LENS_ID = '69711478'
select top 10* from Z_LensCPSNInfo where ID = '69711478'

select z1.ID,z1.SFC,z2.ID,z2.PART_NAME,z2.PROJECT_NAME,z2.SN,z2.SITE
		from Z_LensID_SFC z1, Z_LensCPSNInfo z2
		where z1.SFC = '210220B0VK'
		and z1.LENS_ID = z2.ID
		--and z2.SN = 'H1486017A01P6-201011-01836'
		and z2.site = 5060

--APSģ�߰汾ά����
select top 10* from z_optics_mould_setting

--��װ���ϼ�¼
select top 10* from Z_MATCH_LOAD_HISTORY



