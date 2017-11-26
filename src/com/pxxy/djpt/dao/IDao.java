package com.pxxy.djpt.dao;

import java.io.Serializable;
import java.util.List;

import com.pxxy.djpt.bean.News;

public interface IDao {
	
	/**
	 * 通过HQL和SQL查询
	 * @param hql sql 语句
	 * @param from_id 查询范围的开始
	 * @param len 查询范围的长度
	 * @return 返回一个泛型List
	 */
	public <T> List<T> findByHql(String hql,Object vals[],int from_id,int len);
	public <T> List<T> findBySql(String sql,Object vals[],int from_id,int len);
	public <T> List<T> findByHql(String hql,int from_id,int len);
	public <T> List<T> findBySql(String sql,int from_id,int len);
	public <T> List<T> findByHql(String hql,Object vals[]);
	public <T> List<T> findBySql(String sql,Object vals[]);
	public <T> List<T> findByHql(String hql);
	public <T> List<T> findBySql(String sql);
	
	/**
	 * 通过HQL和SQL查询单个
	 * @param hql sql 语句
	 * @param from_id 查询范围的开始
	 * @param len 查询范围的长度
	 * @return 返回一个泛型对象
	 */
	public <T> T findOneByHql(String hql,Object vals[]);
	public <T> T findOneBySql(String sql,Object vals[]);
	public <T> T findOneByHql(String hql);
	public <T> T findOneBySql(String sql);
	
	/**
	 * 通过HQL和SQL更新数据库
	 * @param hql sql 语句
	 * @param vals 问号的代替参数
	 */
	public void updateByHql(String hql,Object vals[]);
	public void updateBySql(String sql,Object vals[]);
	public void updateByHql(String hql);
	public void updateBySql(String sql);
	
	/**
	 * 保存实体
	 * @param entity
	 * @return
	 */
	public Serializable saveEntity(Object entity);
	public void deleteEntity(Object entity);
	public void updateEntity(Object entity);
	
}
