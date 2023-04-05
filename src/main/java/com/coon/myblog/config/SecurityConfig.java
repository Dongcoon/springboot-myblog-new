package com.coon.myblog.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {
    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder(){
        return new BCryptPasswordEncoder();
    };

    @Bean
    protected SecurityFilterChain configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable() //csrf 공격 방지 해제 -> Rest API 서버를 사용하기 때문에 disable
                .authorizeRequests() // HttpServletRequest를 이용한다는 것을 의미
                .antMatchers("/","/auth/**","/js/**","/css/**","/images/**").permitAll()
                .anyRequest().authenticated() //나머지는 인증이 되어야한다.
            .and()
                .formLogin().loginPage("/auth/loginForm") //인증이 되지않으면 사용자가 정의한 로그인 페이지로 이동
                .loginProcessingUrl("/auth/loginProc") //로그인 연산시킬 URI
                .defaultSuccessUrl("/"); //로그인 성공시 응답할 URI

        return http.build(); // build 패턴
    }
}
