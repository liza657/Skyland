package com.example.skyland.service;

import com.example.skyland.entity.Image;
import com.example.skyland.entity.Tour;
import com.example.skyland.entity.User;
import com.example.skyland.repository.TourRepository;
import com.example.skyland.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class TourService {
    private final TourRepository tourRepository;
    private final UserRepository userRepository;


    public List<Tour> findAllProducts(String title) {
        if (title != null) return tourRepository.findByTitle(title);
        return tourRepository.findAll();
    }

    public Tour findTour(Long id) {
        return tourRepository.findById(id).orElse(null);
    }

    public void addProduct(Principal principal, Tour product, MultipartFile file1, MultipartFile file2, MultipartFile file3, MultipartFile file4) throws IOException {
        product.setUser(getUserByPrincipal(principal));
        Image image1;
        Image image2;
        Image image3;
        Image image4;
        if (file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            product.addImageToTour(image1);
        }
        if (file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            product.addImageToTour(image2);
        }
        if (file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            product.addImageToTour(image3);
        }
        if (file4.getSize() != 0) {
            image4 = toImageEntity(file4);
            product.addImageToTour(image4);
        }
        log.info("Adding new Product. Title: {}; Author email : {} ", product.getTitle(), product.getUser().getEmail());
        Tour productFromDb = tourRepository.save(product);
        productFromDb.setPreviewImageId(productFromDb.getImages().get(0).getId());
        tourRepository.save(product);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }


    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;

    }
    public void deleteProduct(User user, Long id) {
        Tour product = tourRepository.findById(id)
                .orElse(null);
        if (product != null) {
            if (product.getUser().getId().equals(user.getId())) {
                tourRepository.delete(product);
                log.info("Product with id = {} was deleted", id);
            } else {
                log.error("User: {} haven't this product with id = {}", user.getEmail(), id);
            }
        } else {
            log.error("Product with id = {} is not found", id);
        }    }

    public Tour getProductById(Long id) {
        return tourRepository.findById(id).orElse(null);
    }

}
