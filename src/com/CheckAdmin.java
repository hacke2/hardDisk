package com;

import java.sql.*;


public class CheckAdmin {	
	/**
	 * ����û���¼��Ϣ
	 * @param String adminName
	 *                   �û���¼���û���
	 * @param String adminPassword
	 *                   �û���¼������                  
	 * @return String
	 *         ����һ���ַ���������û����Ѿ������ݿ���ڲ����û����������Ҳ��ȷ
                                �����ַ��� SUCCESS_LOGIN
	 *                         ����û����Ѿ������ݿ���ڵ�����������벻��ȷ
                               �����ַ��� WRONG_PASSWROD
	 *                         ����û��������ڷ����ַ��� NONE_USER 
	 * */	
	public String checklogin(String adminName,String adminPassword) 
	throws SQLException,ClassNotFoundException
	{
		BaseConn conn = null;
		try
		{
			conn = new BaseConn();
			
			//����һ����Ԥ�����SQL���
			String sql = "select * from admin where adminName=?";
			
			//����һ��Ԥ����SQL����
			PreparedStatement ps = conn.preparedStatement(sql);
			ps.setString(1,adminName);
			
			//�����ݿ��в�ѯ���û����Ƿ������ݿ����
			ResultSet rs = conn.executeQuery();
			if(rs.next())
			{
				if(rs.getString("adminPassword").equals(adminPassword))
				{
					return "SUCCESS_LOGIN";
				}
				else
					return "WRONG_PASSWORD";
			}
			else
				return "NONE_USER";
		}catch(SQLException ex)
		{
			ex.printStackTrace();
			throw ex;
		}catch(ClassNotFoundException ex)
		{
			ex.printStackTrace();
			throw ex;
		}
		finally
		{
			conn.closeDB(); //�ر����ݿ����ӣ��ͷ�JDBC��Դ
		}
	}
}
