package finalweb.com.cart.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.cart.bean.Cart;
import finalweb.com.product.bean.Product;
import finalweb.com.user.bean.User;
@Component
@Repository
@Transactional
public class CartDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public void save(Cart c){
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(c);
		tx.commit();
	}
	
	public List<Cart> findAll(){
		List<Cart> list = this.sessionFactory.openSession().createQuery("from Cart").list();
		 return list;
	}
}
