package com;

import java.sql.*;


public class CheckAdmin {	
	/**
	 * 检测用户登录信息
	 * @param String adminName
	 *                   用户登录的用户名
	 * @param String adminPassword
	 *                   用户登录的密码                  
	 * @return String
	 *         返回一个字符串：如果用户名已经在数据库存在并且用户输入的密码也正确
                                返回字符串 SUCCESS_LOGIN
	 *                         如果用户名已经在数据库存在但是输入的密码不正确
                               返回字符串 WRONG_PASSWROD
	 *                         如果用户名不存在返回字符串 NONE_USER 
	 * */	
	public String checklogin(String adminName,String adminPassword) 
	throws SQLException,ClassNotFoundException
	{
		BaseConn conn = null;
		try
		{
			conn = new BaseConn();
			
			//创建一个用预处理的SQL语句
			String sql = "select * from admin where adminName=?";
			
			//创建一个预处理SQL对象
			PreparedStatement ps = conn.preparedStatement(sql);
			ps.setString(1,adminName);
			
			//从数据库中查询该用户名是否在数据库存在
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
			conn.closeDB(); //关闭数据库连接，释放JDBC资源
		}
	}
}
