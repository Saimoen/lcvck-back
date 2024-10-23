package lcvck.back.end.config;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

@RequiredArgsConstructor
@Configuration
@EnableWebSecurity
public class SecurityConfig {

    private final UserAuthProvider userAuthProvider;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http, UserAuthProvider userAuthProvider) throws Exception {
        http.csrf(AbstractHttpConfigurer::disable)
                .addFilterBefore(new JwtAuthFilter(userAuthProvider), BasicAuthenticationFilter.class)
                .sessionManagement(customizer -> customizer.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .authorizeHttpRequests((requests) -> requests
                        .requestMatchers(HttpMethod.POST, "/login", "/api/v1/clubs", "/api/v1/resultats/create").permitAll() // Allow POST
                        .requestMatchers(HttpMethod.GET, "/api/v1/clubs", "/api/v1/resultats/get", "/api/v1/resultats/get/{id}").permitAll() // Allow GET
                        .requestMatchers(HttpMethod.PUT, "/api/v1/clubs", "/api/v1/resultats/update/{id}").permitAll() // Allow PUT
                        .requestMatchers(HttpMethod.DELETE, "/api/v1/resultats/delete/{id}").permitAll() // Allow DELETE
                        .anyRequest().authenticated()
                );
        return http.build();
    }
}
