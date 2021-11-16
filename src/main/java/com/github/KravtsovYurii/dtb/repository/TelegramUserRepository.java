package com.github.KravtsovYurii.dtb.repository;

import com.github.KravtsovYurii.dtb.repository.entity.TelegramUser;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TelegramUserRepository extends JpaRepository<TelegramUser, String> {
    List<TelegramUser> findAllByActiveTrue();
}
