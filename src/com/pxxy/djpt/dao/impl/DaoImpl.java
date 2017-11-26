package com.pxxy.djpt.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.pxxy.djpt.dao.IDao;

public class DaoImpl implements IDao {
	private HibernateTemplate hibernateTemplate;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public <T> List<T> findByHql(String hql, Object[] vals, int from_id, int len) {
		Session session = hibernateTemplate.getSessionFactory().openSession();
		org.hibernate.Transaction tx = session.beginTransaction(); 
		
		Query query = session.createQuery(hql);
		if(vals != null) {
			for(int i=0;i<vals.length;i++) {
				if(vals[i] instanceof Integer) {
					query.setInteger(i, (Integer)vals[i]);
				} else {
					query.setString(i, vals[i].toString());
				}
			}
		}
		
		if(len>0) {
			query.setFirstResult(from_id);
			query.setMaxResults(len);
		}
		
		try {
			tx.commit();
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			return null;
		} finally {
			session.close(); 
		}
		
	}
	public <T> List<T> findBySql(String sql, Object[] vals, int from_id, int len) {
		Session session = hibernateTemplate.getSessionFactory().openSession();
		org.hibernate.Transaction tx = session.beginTransaction(); 
		
		SQLQuery query = session.createSQLQuery(sql);
		if(vals != null) {
			for(int i=0;i<vals.length;i++) {
				if(vals[i] instanceof Integer) {
					query.setInteger(i, (Integer) vals[i]);
				} else {
					query.setString(i, vals[i].toString());
				}
			}
		}
		
		if(len>0) {
			query.setFirstResult(from_id);
			query.setMaxResults(len-1);
		}
		
		try {
			tx.commit();
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			return null;
		} finally {
			session.close(); 
		}
		
	}
	public <T> List<T> findByHql(String hql, int from_id, int len) {
		return findByHql(hql, null, from_id, len);
	}
	public <T> List<T> findBySql(String sql, int from_id, int len) {
		return findBySql(sql, null, from_id, len);
	}
	public <T> List<T> findByHql(String hql, Object[] vals) {
		return findByHql(hql, vals, 0, 0);
	}
	public <T> List<T> findBySql(String sql, Object[] vals) {
		return findBySql(sql, vals, 0, 0);
	}
	public <T> List<T> findByHql(String hql) {
		return findByHql(hql, null, 0, 0);
	}
	public <T> List<T> findBySql(String sql) {
		return findBySql(sql, null, 0, 0);
	}
	
	
	public <T> T findOneByHql(String hql, Object[] vals) {
		List<T> li = findByHql(hql, vals, 0, 1);
		if(li.size()>0)
			return li.get(0);
		return null;
	}
	public <T> T findOneBySql(String sql, Object[] vals) {
		List<T> li = findBySql(sql, vals, 0, 1);
		if(li.size()>0)
			return li.get(0);
		return null;
	}
	public <T> T findOneByHql(String hql) {
		List<T> li = findByHql(hql, null, 0, 1);
		if(li.size()>0)
			return li.get(0);
		return null;
	}
	public <T> T findOneBySql(String sql) {
		List<T> li = findBySql(sql, null, 0, 1);
		if(li.size()>0)
			return li.get(0);
		return null;
	}
	
	public void updateByHql(String hql, Object[] vals) {
		Session session = hibernateTemplate.getSessionFactory().openSession();
		
		org.hibernate.Transaction tx = session.beginTransaction(); 
		
		Query query = session.createQuery(hql);
		if(vals != null) {
			for(int i=0;i<vals.length;i++) {
				if(vals[i] instanceof Integer) {
					query.setInteger(i, (Integer)vals[i]);
				} else {
					query.setString(i, vals[i].toString());
				}
			}
		}
		query.executeUpdate();
		try {
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		session.close(); 
	}
	public void updateBySql(String sql, Object[] vals) {
		Session session = hibernateTemplate.getSessionFactory().openSession();
		
		org.hibernate.Transaction tx = session.beginTransaction();
		
		SQLQuery query = session.createSQLQuery(sql);
		if(vals != null) {
			for(int i=0;i<vals.length;i++) {
				if(vals[i] instanceof Integer) {
					query.setInteger(i, (Integer)vals[i]);
				} else {
					query.setString(i, vals[i].toString());
				}
			}
		}
		query.executeUpdate();
		
		try {
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		session.close(); 
	}
	public void updateByHql(String hql) {
		updateByHql(hql, null);
	}
	public void updateBySql(String sql) {
		updateBySql(sql, null);
	}
	public Serializable saveEntity(Object entity) {
		Session session = hibernateTemplate.getSessionFactory().openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		//Serializable seri = hibernateTemplate.save(entity);
		Serializable seri = session.save(entity);
		try {
			tx.commit();
			return seri;
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		session.close();
		return seri;
	}
	public void deleteEntity(Object entity) {
		Session session = hibernateTemplate.getSessionFactory().openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		session.delete(entity);
		try {
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		session.close();
	}
	public void updateEntity(Object entity) {
		Session session = hibernateTemplate.getSessionFactory().openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		session.update(entity);
		try {
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		session.close();
	}
}