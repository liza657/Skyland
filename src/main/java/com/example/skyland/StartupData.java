package com.example.skyland;

import com.example.skyland.entity.Category;
import com.example.skyland.entity.Tour;
import com.example.skyland.entity.User;
import com.example.skyland.repository.CategoryRepository;
import com.example.skyland.service.TourService;
import com.example.skyland.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;

import java.math.BigDecimal;

public class StartupData implements CommandLineRunner {
    private final UserService userService;
    private final TourService productService;
    private final CategoryRepository categoryRepository;
    private static final Logger logger = LoggerFactory.getLogger(StartupData.class);

    @Autowired
    public StartupData(UserService userService, TourService tourService, CategoryRepository categoryRepository) {
        this.userService = userService;
        this.productService = tourService;
        this.categoryRepository = categoryRepository;
    }

    @Override
    public void run(String... args) {
        adminAccount();
        userAccount();
        category();
//        exampleProducts();
    }

    private void userAccount() {
        User user = new User();
        user.setUsername("user");
        user.setPassword("user");
        user.setEmail("user@gmail.com");
        user.setFirstName("user");
        user.setLastName("user");
        user.setPhoneNumber("0951110428");
        user.setPasswordConfirm("user");
        userService.save(user);
    }

    private void adminAccount() {
        User admin = new User();

        admin.setUsername("admin");
        admin.setPassword("admin");
        admin.setEmail("admin@gmail.com");
        admin.setFirstName("admin");
        admin.setLastName("admin");
        admin.setPhoneNumber("0951110428");
        admin.setPasswordConfirm("admin");
        userService.save(admin);
    }

    private void category() {
        Category category1 = new Category();
        Category category2 = new Category();
        Category category3 = new Category();
        Category category4 = new Category();
        Category category5 = new Category();
        Category category6 = new Category();
        category1.setId(1L);
        category1.setCategoryName("Europe");
        category2.setId(2L);
        category2.setCategoryName("South America");
        category3.setId(3L);
        category3.setCategoryName("North America");
        category4.setId(4L);
        category4.setCategoryName("Asia");
        category5.setId(5L);
        category5.setCategoryName("Africa");
        category6.setId(6L);
        category6.setCategoryName("Australia");


        categoryRepository.save(category1);
        categoryRepository.save(category2);
        categoryRepository.save(category3);
        categoryRepository.save(category4);
        categoryRepository.save(category5);
        categoryRepository.save(category6);
    }

//    private void exampleProducts() {
//        final String NAME = "Example Name";
//        final String IMAGE_URL = "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX7389458.jpg";
//        final String DESCRIPTION = "Example Description";
//        final BigDecimal PRICE = BigDecimal.valueOf(22);
//
//        Tour product1 = new Tour();
//        Tour product2 = new Tour();
//        Tour product3 = new Tour();
//        Tour product4 = new Tour();
//
//        product1.setName(NAME);
//        product1.setImageUrl(IMAGE_URL);
//        product1.setDescription(DESCRIPTION);
//        product1.setCategory(categoryRepository.findByCategoryName("Adventure"));
//        product1.setPrice(PRICE);
//
//        product2.setName(NAME);
//        product2.setImageUrl(IMAGE_URL);
//        product2.setDescription(DESCRIPTION);
//        product2.setCategory(categoryRepository.findByCategoryName("Adventure"));
//        product2.setPrice(PRICE);
//
//        product3.setName(NAME);
//        product3.setImageUrl(IMAGE_URL);
//        product3.setDescription(DESCRIPTION);
//        product3.setCategory(categoryRepository.findByCategoryName("Novel"));
//        product3.setPrice(PRICE);
//
//        product4.setName(NAME);
//        product4.setImageUrl(IMAGE_URL);
//        product4.setDescription(DESCRIPTION);
//        product4.setCategory(categoryRepository.findByCategoryName("Novel"));
//        product4.setPrice(PRICE);
//
//        productService.save(product1);
//        productService.save(product2);
//        productService.save(product3);
//        productService.save(product4);
//    }
}
