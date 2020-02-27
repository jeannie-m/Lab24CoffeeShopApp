package co.grandcircus;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.Repos.UserRepository;
import co.grandcircus.entity.Product;
//import co.grandcircus.beans.ProductBean;
//import co.grandcircus.beans.UserBean;
import co.grandcircus.entity.User;

@Controller
public class UserController {
	
	@Autowired
	UserRepository uRepo;
	
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
//		UserBean user = new UserBean(firstName, lastName, email, password, phone);
//		uDao.addUser(user);
		//switching from Beans and daos to entities and repos
		User user = new User(firstName, lastName, email, password, phone);
		uRepo.save(user);
		return new ModelAndView("confirm", "user", user);
	}
	
}
