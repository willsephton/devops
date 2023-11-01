package org.solent.devops.user.spring.map;

import org.solent.devops.user.model.MapPoint;
import org.solent.devops.user.spring.map.repository.MapPointRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class MapApplication extends SpringBootServletInitializer {

	@Bean
	CommandLineRunner runner(MapPointRepository mapPointRepository) {
		return args -> {

			MapPoint point1 = new MapPoint("Solent University", "We go here", "University", 50.90857185116952, -1.4004158721838138);
			mapPointRepository.save(point1);
		};
	}

	public static void main(String[] args) {
		SpringApplication.run(MapApplication.class, args);
	}
}
