package com.example.skyland.validator;

import com.example.skyland.entity.Tour;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class TourValidator implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return Tour.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Tour product = (Tour) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name","error.not_empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "error.not_empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "price", "error.not_empty");

        // Name must have from 2 characters to 32
        if (product.getTitle().length() <= 1) {
            errors.rejectValue("name", "product.error.name.less_2");
        }
        if (product.getTitle().length() > 32) {
            errors.rejectValue("name", "product.error.name.over_32");
        }
    }
}
