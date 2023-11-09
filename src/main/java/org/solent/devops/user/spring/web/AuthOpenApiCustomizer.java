package org.solent.devops.user.spring.web;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.security.SecurityRequirement;
import io.swagger.v3.oas.models.security.SecurityScheme;
import org.springdoc.core.customizers.OpenApiCustomiser;
import org.springframework.stereotype.Component;

@Component
public class AuthOpenApiCustomizer implements OpenApiCustomiser {
	@Override
	public void customise(OpenAPI openApi) {
		String securitySchemeName = "basicAuth";
		openApi.getComponents().addSecuritySchemes(securitySchemeName,
				new SecurityScheme().type(SecurityScheme.Type.HTTP).scheme("basic"));
		openApi.addSecurityItem(new SecurityRequirement().addList(securitySchemeName));
	}
}