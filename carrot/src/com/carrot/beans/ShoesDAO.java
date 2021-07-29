package com.carrot.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import jsp.util.DBConnection;

public class ShoesDAO {
	
	private static ShoesDAO instance;
	
	
	public static ShoesDAO getInstance() {
		if(instance== null) {
			instance = new ShoesDAO();
		}
		return instance;
	}
	
	public ShoesVO getShoesOne(String id) throws SQLException,NamingException,ClassNotFoundException {
		ShoesVO result = new ShoesVO();
		StringBuffer sql  = new StringBuffer();
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement pstmt =null;
		sql.append("select * from shoes where shoes_id = ? ");
		try {
			conn =DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = (PreparedStatement)conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			rs.next();
			result.setShoes_id(Integer.parseInt(id));
			result.setName(rs.getString("name"));
			result.setPrice(rs.getString("price"));
			result.setType(rs.getString("type"));
			result.setImg(rs.getString("img"));
			
			
		}catch(NamingException | SQLException sqle) {
			System.out.println(sqle);
		}finally {
			try {
				if(pstmt!= null) {pstmt.close(); pstmt = null;}
				if(conn!=null) {conn.close(); conn = null;}
				if(rs!=null) {rs.close(); rs =null;}
			}catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		
		return result;
	}
	public ArrayList<ShoesVO> getShoesList() throws SQLException,NamingException,ClassNotFoundException {
		
		ArrayList<ShoesVO> list = new ArrayList<ShoesVO>();
		
		StringBuffer sql= new StringBuffer();
		sql.append("select * from shoes");
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int i =0;
		try {
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = (PreparedStatement)conn.prepareStatement(sql.toString());
			rs =pstmt.executeQuery();
			
			while(rs.next()) {
				ShoesVO vo = new ShoesVO();
				vo.setShoes_id(rs.getInt("shoes_id"));
				vo.setName(rs.getString("name"));
				vo.setPrice(rs.getString("price"));
				vo.setType(rs.getString("type"));
				vo.setImg(rs.getString("img"));
				System.out.println(vo.getName());
				list.add(vo);
			}
		}catch(NamingException | SQLException sqle) {
			System.out.println(sqle);
			
		}finally {
			try {
				if(pstmt!= null) {pstmt.close(); pstmt = null;}
				if(conn!=null) {conn.close(); conn = null;}
				if(rs!=null) {rs.close(); rs =null;}
			}catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		
		
		
		return list; 
	}
	
	
}