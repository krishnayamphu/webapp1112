package com.ky;

import org.apache.commons.codec.digest.DigestUtils;

public class TestApp {
    public static void main(String[] args) {
        String sha256hex = DigestUtils.sha256Hex("hello");
        System.out.println(sha256hex);
    }
}
