package com;

import java.sql.*;


public class CheckLogin {	
	/**
	 * ����û���¼��Ϣ
	 * @param String userName
	 *                   �û���¼���û���
	 * @param String userPassword
	 *                   �û���¼������                  
	 * @return String
	 *         ����һ���ַ���������û����Ѿ������ݿ���ڲ����û����������Ҳ��ȷ
                                �����ַ��� SUCCESS_LOGIN
	 *                         ����û����Ѿ������ݿ���ڵ�����������벻��ȷ
                               �����ַ��� WRONG_PASSWROD
	 *                         ����û��������ڷ����ַ��� NONE_USER 
	 * */	
	public String checklogin(String userName,String userPassword) 
	throws SQLException,ClassNotFoundException
	{
		BaseConn conn = null;
		try
		{
			conn = new BaseConn();
			
			//����һ����Ԥ�����SQL���
			String sql = "select * from userinfo where userName=?";
			
			//����һ��Ԥ����SQL����
			PreparedStatement ps = conn.preparedStatement(sql);
			ps.setString(1,userName);
			
			//�����ݿ��в�ѯ���û����Ƿ������ݿ����
			ResultSet rs = conn.executeQuery();
			if(rs.next())
			{
				if(rs.getString("userPassword").equals(userPassword))
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
	
	/**
	 * ��������û�ʱ�����û���¼�û��������뱣�浽���ݿ���
	 * */
	public boolean saveToDataBase(String userName,String userPassword)
	throws SQLException,ClassNotFoundException
	{
		BaseConn conn = null;
        try
        {
        	conn = new BaseConn();
        	String sql = "insert into userinfo(userName,userPassword) values(?,?)";
        	PreparedStatement ps = conn.preparedStatement(sql);
        	ps.setString(1,userName);
        	ps.setString(2,userPassword);
        	conn.executeUpdate();
        	return true;
        }catch(SQLException ex)
        {
        	ex.printStackTrace();
        	throw ex;
        }catch(ClassNotFoundException ex)
        {
        	ex.printStackTrace();
        	throw ex;
        }finally
        {
        	conn.closeDB(); //�ر����ݿ����ӣ��ͷ�JDBC��Դ
        }
   }
}
