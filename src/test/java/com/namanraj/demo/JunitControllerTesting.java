package com.namanraj.demo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.namanraj.demo.controller.complaintController;
import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
@RunWith(SpringRunner.class)
public class JunitControllerTesting {
	
	@Autowired
	complaintController complaintController;
	
	@Test
	public void testUsertableControllerInitialization()	{
		assertThat(complaintController).isNotNull();
	}
	
	
}
