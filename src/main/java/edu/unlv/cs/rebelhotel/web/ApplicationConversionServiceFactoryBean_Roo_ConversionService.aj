// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.unlv.cs.rebelhotel.web;

import edu.unlv.cs.rebelhotel.domain.Student;
import edu.unlv.cs.rebelhotel.domain.Term;
import edu.unlv.cs.rebelhotel.domain.UserAccount;
import edu.unlv.cs.rebelhotel.domain.WorkEffort;
import edu.unlv.cs.rebelhotel.domain.WorkRequirement;
import edu.unlv.cs.rebelhotel.domain.WorkTemplate;
import java.lang.String;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    Converter<WorkEffort, String> ApplicationConversionServiceFactoryBean.getWorkEffortConverter() {
        return new Converter<WorkEffort, String>() {
            public String convert(WorkEffort source) {
                return new StringBuilder().append(source.getStartDate()).append(" ").append(source.getEndDate()).append(" ").append(source.getHours()).toString();
            }
        };
    }
    
    Converter<WorkRequirement, String> ApplicationConversionServiceFactoryBean.getWorkRequirementConverter() {
        return new Converter<WorkRequirement, String>() {
            public String convert(WorkRequirement source) {
                return new StringBuilder().append(source.getName()).append(" ").append(source.getHours()).toString();
            }
        };
    }
    
    Converter<Term, String> ApplicationConversionServiceFactoryBean.getTermConverter() {
        return new Converter<Term, String>() {
            public String convert(Term source) {
                return new StringBuilder().append(source.getTermYear()).toString();
            }
        };
    }
    
    Converter<Student, String> ApplicationConversionServiceFactoryBean.getStudentConverter() {
        return new Converter<Student, String>() {
            public String convert(Student source) {
                return new StringBuilder().append(source.getNSHE()).append(" ").append(source.getFirstName()).append(" ").append(source.getLastName()).toString();
            }
        };
    }
    
    Converter<UserAccount, String> ApplicationConversionServiceFactoryBean.getUserAccountConverter() {
        return new Converter<UserAccount, String>() {
            public String convert(UserAccount source) {
                return new StringBuilder().append(source.getName()).toString();
            }
        };
    }
    
    Converter<WorkTemplate, String> ApplicationConversionServiceFactoryBean.getWorkTemplateConverter() {
        return new Converter<WorkTemplate, String>() {
            public String convert(WorkTemplate source) {
                return new StringBuilder().append(source.getName()).append(" ").append(source.getHours()).toString();
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getWorkEffortConverter());
        registry.addConverter(getWorkRequirementConverter());
        registry.addConverter(getTermConverter());
        registry.addConverter(getStudentConverter());
        registry.addConverter(getUserAccountConverter());
        registry.addConverter(getWorkTemplateConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
