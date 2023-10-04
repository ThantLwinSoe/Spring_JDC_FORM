package com.jdc.app.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = {"com.jdc.app.controller","com.jdc.app.service"})
public class AppConfig {

}
