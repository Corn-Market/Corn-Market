package com.corn.market.member.dao;

import static org.junit.Assert.*;
import static org.assertj.core.api.Assertions.*;

import com.corn.market.member.domain.LoginMember;
import com.corn.market.member.domain.Member;
import junit.framework.TestCase;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"
    ,"file:src/main/resources/mybatis-config.xml"})
public class MemberDaoTest {

    @Autowired
    private SqlSession session;
    private static String namespace = "com.corn.market.MemberMapper.";

    @Test
    @Transactional
    public void 회원가입테스트() {
        // given
        Member member = new Member("하길동","hh12","하하","1234",
                "haha@gmail.com","010-1314-1314");
        LoginMember loginMember = new LoginMember("hh12","1234");
        // when
        session.insert (namespace+"memberSignup" ,member);
        int result = session.selectOne(namespace + "checkLogin", loginMember);
        // then
        assertThat(result).isEqualTo(1);
    }

    @Test
    public void 아이디중복검사테스트() {
        //given
        String userId = "ch11";
        //when
        int result = session.selectOne(namespace + "idCheck", userId);
        //then
        assertThat(result).isEqualTo(1);
    }

    @Test
    public void 닉네임중복검사테스트() {
        // given
        String nickname = "CH";
        // when
        int result = session.selectOne(namespace + "nicknameCheck", nickname);
        // then
        assertThat(result).isEqualTo(1);
    }

    @Test
    public void 로그인확인테스트() {
        // given
        LoginMember member = new LoginMember("ch11","5529");
        // when
        int result = session.selectOne(namespace + "checkLogin", member);
        // then
        assertThat(result).isEqualTo(1);
    }
}