package co.grandcircus;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.DAO.ProductDao;
import co.grandcircus.beans.Product;

@Controller
public class ProductController {

	@Autowired
	ProductDao pDao;
	
	@RequestMapping("/")
	public ModelAndView home() {
		List<Product> products = pDao.findAll();
		return new ModelAndView("index", "products", products);
	}
	
	@RequestMapping("/menu")
	public ModelAndView menu() {
		List<Product> products = pDao.findAll();
		return new ModelAndView("menu", "products", products);
	}
	
}
