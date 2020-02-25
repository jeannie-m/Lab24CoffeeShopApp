package co.grandcircus;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.DAO.UserDao;
import co.grandcircus.beans.Product;
import co.grandcircus.beans.User;

@Controller
public class UserController {
	
//	@RequestMapping("/")
//	public ModelAndView showHome() {
//		return new ModelAndView("Home");
//	}
	@Autowired
	UserDao uDao;
	
//	@RequestMapping("/")
//	public ModelAndView list() {
//		List<Product> products = pDao.findAll();
//		return new ModelAndView("/", "products", products);
//	}
	
	
	@RequestMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("register");
	}
	
	@PostMapping("/register")
	public ModelAndView register(@RequestParam ("firstName") String firstName, 
			@RequestParam ("lastName") String lastName, 
			@RequestParam ("email") String  email, 
			@RequestParam ("password") String password, 
			@RequestParam ("phone") String phone) {
		User user = new User(firstName, lastName, email, password, phone);
		uDao.addUser(user);
		return new ModelAndView("confirm", "user", user);
	}
}
