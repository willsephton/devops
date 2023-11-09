package org.solent.devops.user.spring.service;

import org.solent.devops.user.spring.service.ServiceConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;


@Configuration
@Import(ServiceConfiguration.class)
@PropertySource("classpath:persistence-app.properties")
public class SpringBootJspConfiguration {


}
