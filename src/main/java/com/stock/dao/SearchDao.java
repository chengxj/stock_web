package com.stock.dao;

import java.util.Date;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.stock.entity.Activities;
import com.stock.entity.Assets;
import com.stock.entity.AssetsCategory;
import com.stock.entity.AssetsType;
import com.stock.entity.Order;
import com.stock.entity.Registration;
import com.stock.entity.common.User;
import com.stock.request.SearchRequest;

@Repository
@Transactional(noRollbackFor = { NoResultException.class })
public class SearchDao {

	@PersistenceContext(unitName = "entityManagerFactory")
	private EntityManager entityManager;

	private static int pageSize = 10;

	public Activities getActivitiesById(long id) {
		String hql = "from Activities where id = :uuid";
		return entityManager.createQuery(hql, Activities.class).setParameter("uuid", id).getSingleResult();
	}
	
	/**
	 * 
	 * @param oid
	 * @return
	 */
	public Order getOrderById(long oid) {
		String hql = "from Order where id = :oid";
		return entityManager.createQuery(hql, Order.class).setParameter("oid", oid).getSingleResult();
	}
	
	/**
	 * 
	 * @param oid
	 * @return
	 */
	public List<Assets> getAssetsByOrderId(long oid) {
		String hql = "from Assets where id in (select assets_id from OrderAssets where order_id=:oid)";
		return entityManager.createQuery(hql, Assets.class).setParameter("oid", oid).getResultList();
	}
	
	/**
	 * 获取所有类型
	 * @return
	 */
	public List<AssetsType> getAllAssetsType() {
		String hql = "from AssetsType";
		return entityManager.createQuery(hql, AssetsType.class).getResultList();
	}
	
	public List<AssetsCategory> getAllAssetsCategory() {
		String hql = "from AssetsCategory";
		return entityManager.createQuery(hql, AssetsCategory.class).getResultList();
	}
	
	private String getSearchAssetsJql(SearchRequest request) {
		StringBuffer hql = new StringBuffer("from Assets");
		if (request != null) {
			
		}
//		public List<String> type;
//		public List<String> category;
//		public String key;
//		public Date begin;
//		public Date end;
//		public int index;
		return hql.toString();
	}
	
	public List<Assets> searchAssets(SearchRequest request) {
		String hql = getSearchAssetsJql(request); 
		return entityManager.createQuery(hql, Assets.class).setFirstResult(request.index).setMaxResults(pageSize)
				.getResultList();
	}

	/**
	 * 
	 * @param id
	 * @return
	 */
	public User getUserByUid(String userid) {
		String hql = "from User where userid = :userid";
		return entityManager.createQuery(hql, User.class).setParameter("userid", userid).getSingleResult();
	}

	/**
	 * 
	 * @param activities_id
	 * @return
	 */
	public List<Registration> getRegistrations(long activities_id) {
		String hql = "from Registration where activities_id = :activities_id";
		return entityManager.createQuery(hql, Registration.class).setParameter("activities_id", activities_id)
				.getResultList();
	}

	/**
	 * 
	 * @param uuid
	 * @param activities_id
	 * @return
	 */
	public Registration getRegistrationById(long uuid, long activities_id) {
		String hql = "from Registration where id = :uuid and activities_id = :activities_id";
		return entityManager.createQuery(hql, Registration.class).setParameter("uuid", uuid)
				.setParameter("activities_id", activities_id).getSingleResult();
	}

	/**
	 * 
	 * @param request
	 * @return
	 */
	public List<Activities> searchActivities(String searchTerm, int index) {
		String hql;
		if (searchTerm == null || searchTerm.isEmpty()) {
			hql = "from Activities";
		} else {
			hql = "From Activities where title like '%" + searchTerm + "%'";
		}
		return entityManager.createQuery(hql, Activities.class).setFirstResult(index).setMaxResults(pageSize)
				.getResultList();
	}

	/**
	 * 
	 * @param searchTerm
	 * @return
	 */
	public int getSearchActivitiesCount(String searchTerm) {
		try {
			String hql;
			if (searchTerm == null || searchTerm.isEmpty()) {
				hql = "select count(*) from Activities";
			} else {
				hql = "select count(*) From Activities where title like '%" + searchTerm + "%'";
			}
			return entityManager.createQuery(hql, Long.class).getSingleResult().intValue();
		} catch (NoResultException e) {
			return 0;
		}
	}

	public int getAssetsCount(SearchRequest request) {
		try {
			String hql = "select count(*) " + getSearchAssetsJql(request); 
			return entityManager.createQuery(hql, Long.class).getSingleResult().intValue();
		} catch (NoResultException e) {
			return 0;
		}
	}

}
