//package com.spring.config;
//
//import java.util.List;
//
//import org.springframework.context.annotation.Configuration;
//import org.springframework.format.FormatterRegistry;
//import org.springframework.http.converter.HttpMessageConverter;
//import org.springframework.validation.Validator;
//import org.springframework.web.method.support.HandlerMethodArgumentResolver;
//import org.springframework.web.method.support.HandlerMethodReturnValueHandler;
//import org.springframework.web.servlet.HandlerExceptionResolver;
//import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
//import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
//import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
//import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//
//@Configuration
//public class WebConfig implements WebMvcConfigurer{
//
//	@Override
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/**").addResourceLocations("/");
//	}
//
//	@Override
//	public void addArgumentResolvers(List<HandlerMethodArgumentResolver> arg0) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public void addFormatters(FormatterRegistry arg0) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public void addInterceptors(InterceptorRegistry arg0) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public void addReturnValueHandlers(List<HandlerMethodReturnValueHandler> arg0) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public void addViewControllers(ViewControllerRegistry arg0) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer arg0) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public void configureHandlerExceptionResolvers(List<HandlerExceptionResolver> arg0) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public void configureMessageConverters(List<HttpMessageConverter<?>> arg0) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public Validator getValidator() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	
//}
