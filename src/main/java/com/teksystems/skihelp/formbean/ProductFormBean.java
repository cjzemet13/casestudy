package com.teksystems.skihelp.formbean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotEmpty;


@Getter
@Setter
@ToString
public class ProductFormBean {

    @NotEmpty(message="product must not be empty")
    private String productName;

    private String description;

    @NotEmpty(message="type file name please and thank.")
    private String imageURL;

    private Double price;

}