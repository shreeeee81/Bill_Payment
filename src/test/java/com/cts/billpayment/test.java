package com.cts.billpayment;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.setup.SharedHttpSessionConfigurer.sharedHttpSession;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.cts.billpayment.controllers.AdminController;
import com.cts.billpayment.controllers.HomeController;


@SpringBootTest
class test {
	
	 @Autowired
	    private AdminController adminController;
	    
	    
	    private MockMvc mockMvc;
	    

	    @BeforeEach
	    public void setup() {
	        mockMvc = MockMvcBuilders.standaloneSetup(adminController).apply(sharedHttpSession()).build();
	    }
	    @Test
	    public void testLogin() throws Exception {
	        mockMvc.perform(get("/adminLogin"));
	    }
	   
	    
	    @Test
	    public void testloginverify() throws Exception {
	        mockMvc.perform(post("/loginverify"));
	    }
	    @Test
	    public void testshowVendors() throws Exception {
	        mockMvc.perform(get("/vendorlist"));
	    }
	   
	    @Test
	    public void testactivate() throws Exception {
	        mockMvc.perform(get("/success"));
	    }
	    @Test
	    public void testreturntohome() throws Exception {
	        mockMvc.perform(get("/adminportal"));
	    }
	    
	    
	    @Test
	    public void testLogout() throws Exception {
	        mockMvc.perform(get("/adminLogout"));
	    }
	    @Test
	    public void testdisplayissues() throws Exception {
	        mockMvc.perform(get("/HelpList"));
	    }
	        
@Autowired
private HomeController homeController;
@Test
public void testhomepage() throws Exception {
    mockMvc.perform(get("/home"));
}

}