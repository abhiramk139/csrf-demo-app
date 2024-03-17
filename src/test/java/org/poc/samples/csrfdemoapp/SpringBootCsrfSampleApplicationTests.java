package org.poc.samples.csrfdemoapp;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.poc.samples.csrfdemoapp.SpringBootCsrfSampleApplication;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = SpringBootCsrfSampleApplication.class)
@WebAppConfiguration
public class SpringBootCsrfSampleApplicationTests {

	@Test
	public void contextLoads() {
	}

}
