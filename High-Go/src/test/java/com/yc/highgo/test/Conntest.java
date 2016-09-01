package com.yc.highgo.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring.xml")
public class Conntest {

	@Autowired
	private DataSource dataSource;
	@Test
	public void test() {
		Connection con=null;
		try {
			con=dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		assertNotNull(con);
	}

}
