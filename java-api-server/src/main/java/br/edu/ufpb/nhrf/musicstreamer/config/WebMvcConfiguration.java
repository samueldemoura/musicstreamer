package br.edu.ufpb.nhrf.musicstreamer.config;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooWebMvcConfiguration;
import org.springframework.context.ApplicationContextAware;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooWebMvcThymeleafUIConfiguration;

/**
 * = WebMvcConfiguration
 *
 * TODO Auto-generated class documentation
 *
 */
@RooWebMvcConfiguration(defaultLanguage = "en")
@RooWebMvcThymeleafUIConfiguration
public class WebMvcConfiguration implements ApplicationContextAware {
}
