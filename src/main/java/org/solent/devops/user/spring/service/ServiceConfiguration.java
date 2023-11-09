package org.solent.devops.user.spring.service;

import org.solent.devops.user.dao.impl.PersistenceJPAConfig;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

/**
 *
 * @author Blaise
 */
@Configuration

@ComponentScan(basePackages = {"org.solent.com619.devops.user.spring.service"})
@Import({PersistenceJPAConfig.class})
public class ServiceConfiguration {

}
