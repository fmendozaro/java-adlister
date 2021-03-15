package com.codeup.adlister.dao;

import java.util.List;

public interface Ads {
    List<Ad> all();
    List<Ad> search(String term);
}