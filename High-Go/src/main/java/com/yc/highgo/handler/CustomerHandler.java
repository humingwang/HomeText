package com.yc.highgo.handler;

import java.io.PrintWriter;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.highgo.entity.Customer;
import com.yc.highgo.service.CustomerService;

@Controller
@RequestMapping("/customer")
@SessionAttributes("Msg")
public class CustomerHandler {

	@Autowired
	private CustomerService customerService;

	private int num;

	@ModelAttribute
	public void getModel(ModelMap map) {
		map.put("Msg", new Customer());
	}

	/**
	 * 主界面到login页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/active", method = RequestMethod.GET)
	public String active() {
		LogManager.getLogger().debug("//登录方法成功到达处理方法中.....");
		return "login";
	}

	/**
	 * 主界面到注册页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/activeres", method = RequestMethod.GET)
	public String activeres() {
		LogManager.getLogger().debug("//注册方法成功到达处理方法中.....");
		return "register";
	}

	/**
	 * 注销登录
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/zxlogin", method = RequestMethod.GET)
	public String zxlogin(ModelMap model, HttpServletRequest request) {
		LogManager.getLogger().debug("//注销方法成功到达处理方法中.....");
		HttpSession session = request.getSession();
		session.removeAttribute("Msg");
		model.remove("Msg");
		return "index";
	}

	/**
	 * 登录操作
	 * 
	 * @param customer
	 * @param map
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Customer customer, ModelMap map) {
		System.out.println("customer login..." + customer);
		customer = customerService.Login(customer);
		if (customer == null) {
			map.put("errorMsg", "用户名或密码错误");
			return "login";
		}
		if (customer.getCpwd() == null) {
			map.put("errorMsg", "用户名未激活");
			return "login";
		}
		map.put("Msg", customer);
		return "index";
	}

	/**
	 * 邮箱发送验证码
	 * 
	 * @param cemail
	 */
	@RequestMapping(value = "/code/{cemail}", method = RequestMethod.POST)
	public void code(@PathVariable("cemail") String cemail, PrintWriter out) {
		LogManager.getLogger().debug("//验证码方法成功到达处理方法中.....");
		String email = cemail + ".com";
		activeAccountMail("邮箱验证码:", getSendContent(), "15674732978@163.com", email);
		out.print(1);
		out.flush();
		out.close();
	}

	/**
	 * 注册操作
	 * 
	 * @param customer
	 * @param bindingResult
	 * @param map
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(Customer customer, BindingResult bindingResult, ModelMap map, HttpServletRequest request) {
		System.out.println("register===>" + customer);
		System.out.println(customer.getCpwd());
		System.out.println(customer.getRecpwd());
		System.out.println(customer.getCode());
		if (!customer.getCpwd().equals(customer.getRecpwd())) {
			map.put("regErrorMsg", "密码不相同...");
			return "register";
		}
		if (Integer.parseInt(customer.getCode()) != num) {
			map.put("regErrorMsg", "验证码不同!!!");
			return "register";
		}

		customerService.register(customer);
		// 成功注册，发送邮件，激活账号
		return "login";

	}

	private String getSendContent() {
		String Content = "";
		num = 0;
		num = (new Random()).nextInt(9999);
		if (num < 1000) {
			num += 1000;
		}

		Content += "你好，你注册所需要的验证码是：";
		Content += num;
		System.out.println(Content);
		return Content;
	}

	@Autowired
	private JavaMailSender mailSender;

	private void activeAccountMail(String subject, String content, String from, String to) {

		try {
			MimeMessage mm = mailSender.createMimeMessage();
			MimeMessageHelper mmh = new MimeMessageHelper(mm, true);
			mmh.setTo(to);// 设置邮件的接收者
			mmh.setFrom(from);
			mmh.setSubject(subject);// 设置主题
			mmh.setText(content);// 设置内容
			mailSender.send(mm);// 发送邮件
		} catch (MessagingException e) {
			e.printStackTrace();
		}

	}
	
	//到达我的嗨购页面
	@RequestMapping("/shopcar")
	public String shopcar(ModelMap map){
		LogManager.getLogger().debug("//我的嗨购页面成功到达.....");
		return "shopcar";
	}
	
	//到达个人信息页面
	@RequestMapping("/personal")
	public String personal(ModelMap map){
		LogManager.getLogger().debug("//个人俱乐部页面成功到达.....");
		return "personal";
	}
}
