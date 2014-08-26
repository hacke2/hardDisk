package com;
import java.sql.*;
import java.lang.ClassNotFoundException;
public class BaseConn {
	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	public BaseConn() throws SQLException,ClassNotFoundException{
		try
		{
			String url = "jdbc:mysql://localhost:3306/mytest";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,"root","root");
		}catch(SQLException e)
		{
			System.out.println("Error occured when Connect DataBase:"+e);
			throw e;
		}
		catch(ClassNotFoundException e)
		{
			System.out.println("Error occured when Connect DataBase:"+e);
			throw e;
		}
	}
	public PreparedStatement preparedStatement(String sql) throws SQLException
	{
		try
		{
			ps = conn.prepareStatement(sql);
			return ps;
		}catch(SQLException e)
		{
			System.out.println("Error occured when Connect DataBase:"+e);
			throw e;
		}		
	}
	public static Connection getConnection() {
	 	
		String driverClass ="com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/mytest?useUnicode=true&characterEncoding=gbk";
		String userName = "root";
		String password ="root";
		
		System.out.println(driverClass + "\t" + url + "\t" + userName + "\t" + password);
		
		Connection conn = null;
		
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url, userName, password);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	/**
	   * 执行静态 SQL 查询语句并返回它所生成结果的对象
	   * */
	  public ResultSet executeQuery(String sql) throws SQLException
	  {
	    rs = null;
	    try {
	      rs = stmt.executeQuery(sql);
	    }
	    catch (SQLException ex) {
	      System.out.println("Error occured when query database：" + ex);
	      throw ex;
	    }
	    return rs;
	  }
	  
	  /**
	   * 执行静态SQL更新语句并返回影响数据条数
	   * */
	  public int executeUpdate(String sql) throws SQLException
	  {
	    try {
	      conn.setAutoCommit(false);
	      int re = stmt.executeUpdate(sql);
	      conn.commit();
	      return re;
	    }
	    catch (SQLException e) {
	      conn.rollback();
	      System.out.println("Error occured when update database：" + e);
	      throw e;
	    }
	  }  
	  /**
	   * 执行预编译的SQL查询语句
	   * 
	   * */
	  public ResultSet executeQuery() throws SQLException
	  {
	    try {
	      return ps.executeQuery();
	    }
	    catch (SQLException e) {
	      System.out.println("Error occured when query database：" + e);
	      throw e;
	    }
	  }
	  /**
	   * 执行预编译的SQL更新语句
	   * 
	   * */
	  public int executeUpdate() throws SQLException
	  {
	    try {
	      conn.setAutoCommit(false);
	      int r = ps.executeUpdate();
	      conn.commit();
	      return r;
	    }
	    catch (SQLException e) {
	      conn.rollback();
	      System.out.println("Error occured when update database：" + e);
	      throw e;
	    }
	  }

	 /**
	  * 数据库关闭操作
	  * */
	  public boolean closeDB() throws SQLException
	  {
	    try {
	      if (this.rs != null)
	        rs.close();
	      if (this.stmt != null)
	        this.stmt.close();
	      if (this.ps != null)
	        this.ps.close();
	      if (this.conn != null)
	        conn.close();
	      return true;
	    }
	    catch (SQLException e) {
	      System.out.println("Error occured when close database：" + e);
	      throw e;
	    }
	  }	
}
