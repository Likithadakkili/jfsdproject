package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Admin;


@Repository
public interface Adminrepository extends JpaRepository <Admin,String>
{
	//Admin findbyUsername(String username);
}
