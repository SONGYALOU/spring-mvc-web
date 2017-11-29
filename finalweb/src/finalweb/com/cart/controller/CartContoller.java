package finalweb.com.cart.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import finalweb.com.cart.bean.Cart;
import finalweb.com.cart.service.CartService;
import finalweb.com.product.bean.Product;
import finalweb.com.user.bean.User;

@Controller
@RequestMapping("cart")
public class CartContoller {
	@Resource
	private CartService cs;
	
	@RequestMapping(value="/saveCart",method = RequestMethod.POST)
	public String saveCart(@RequestParam("number") int number,Model model,HttpSession session ){
		if(session.getAttribute("cart")!=null){
			Cart c=new Cart();
			c.setOrdernum(number);
			c.setProductid(((Product) session.getAttribute("single")).getProductid());
			c.setUserid((int) session.getAttribute("cart"));
			c.setProductname(((Product) session.getAttribute("single")).getProductname());
			c.setProductprice(((Product) session.getAttribute("single")).getProductprice());
			cs.save(c);
			return "store";
		}else{
			return "login";
		}
	}
	@RequestMapping(value="/checkCart")
	public String checkCart(Model model,HttpSession session){
		if(session.getAttribute("cart")!=null){
			session.setAttribute("checkcart", cs.findById((int)session.getAttribute("cart")));
			System.out.println();
			return "cart";
		}else{
			return "login";
		}
	}
}
