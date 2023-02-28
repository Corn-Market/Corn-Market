package com.corn.market.db;

import static org.junit.Assert.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@RunWith(value = SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"classpath:mybatis-config.xml","file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class DbTest {

    @Autowired
    private DataSource ds;
    @Autowired
    private SqlSessionFactory sf;

    @Test
    public void DBTest() throws SQLException {
        //when
        Connection connection = ds.getConnection();
        //then
        assertNotNull(connection);
        System.out.println(connection);
    }

    @Test
    public void MybatisTest() {
        //when
        SqlSession session = sf.openSession();
        //then
        assertNotNull(session);
        System.out.println(session);
    }
  
}