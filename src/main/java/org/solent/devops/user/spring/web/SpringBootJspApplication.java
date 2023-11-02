package org.solent.devops.user.spring.web;

import org.solent.devops.user.model.MapPoint;
import org.solent.devops.user.spring.map.repository.MapPointRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;

@SpringBootApplication(scanBasePackages = "org.solent.com619.devops.user.spring.web")
public class SpringBootJspApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(SpringBootJspApplication.class);
    }
    
    public static void main(String[] args) {
        SpringApplication.run(SpringBootJspApplication.class);
    }
}