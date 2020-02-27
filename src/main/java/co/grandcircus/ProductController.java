package co.grandcircus;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.Repos.ProductRepository;
//import co.grandcircus.Repos.ProductRepository;
//import co.grandcircus.beans.ProductBean;
import co.grandcircus.entity.Product;

@Controller
public class ProductController {

	@Autowired
	ProductRepository pRepo;
	//switched away from dao to repo
	//ProductDao pDao;
	
	@RequestMapping("/")
	public ModelAndView home() {
		//moved product display to dedicated menu page
		//List<ProductBean> products = pDao.findAll();
		return new ModelAndView("index");
	}
	
	@RequestMapping("/menu")
	public ModelAndView menu() {
		List<Product> products = pRepo.findAll();
		for (Product product : products) {
			if (product.getimagePath() == null) {
				product.setImagePath("genericcoffee.jpg");
			}
		}
		return new ModelAndView("menu", "products", products);
	}
	
	@RequestMapping("/admin")
	public ModelAndView showAdminPage(){
		List<Product> products = pRepo.findAll();
		return new ModelAndView("admin", "products", products);
	}
	
	@RequestMapping("/add-product-form")
	public ModelAndView addProductForm() {
		return new ModelAndView("add-product-form");
	}
	
	@PostMapping("/add-product-form")
	public ModelAndView submitAddProductForm(Product product) {
		pRepo.save(product);
		return new ModelAndView("redirect:/admin");
	}
	@RequestMapping("/edit-product-form")
	public ModelAndView editProductForm(@RequestParam ("id") Long id) {
		Product thisProduct = pRepo.findById(id).orElse(null);
		return new ModelAndView("edit-product-form", "product", thisProduct);
	}
	
	@PostMapping("/edit-product-form")
	public ModelAndView submitEditProductForm(Product product) {
		pRepo.save(product);
		return new ModelAndView("redirect:/admin");
	}
	
	@RequestMapping("/delete-product")
	public String delete(@RequestParam("id") Long id) {
		pRepo.deleteById(id);
		return "redirect:/admin";
	}
}
