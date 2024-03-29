package com.corn.market.post.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.corn.market.post.dao.PostDao;
import com.corn.market.post.domain.Criteria;
import com.corn.market.post.domain.PostList;
import com.corn.market.post.domain.PostVO;

@Service
public class PostService {
	
	private final PostDao dao;

	public PostService(PostDao dao) {
		this.dao = dao;
	}

	//판매글 전체조회
	public List<PostList> getPostList() throws Exception {
		List<PostList> list = dao.selectAll();
		getPostImgThumbnail(list);
		return list;
	}
	//판매글 카테고리별 조회
	public List<PostList> getPostCategoryList(String category_id) throws Exception {
		List<PostList> list = dao.selectCategory(category_id);
		getPostImgThumbnail(list);
		return list;
	}
	//판매글 지역별 조회
	public List<PostList> getPostTownList(String town_code) throws Exception {
		List<PostList> list = dao.selectTown(town_code);
		getPostImgThumbnail(list);
		return list;
	}
	//판매글 상세 조회
	public PostList getOnePost(String post_id) throws Exception {
		PostList post = dao.selectOne(post_id);
		String[] imgs = post.getPost_img().split(",");
		post.setPost_img(imgs[0]);
		return post;
	}
	
	//판매글 등록
	public void registerPost(PostVO post) throws Exception {
		dao.enroll(post);
	}
	
	//판매글 수정
	public void modifyPost(PostVO post) throws Exception {
		dao.update(post);
	}
	
	//판매글 삭제
	public void deletePost(String post_id) throws Exception {
		dao.delete(post_id);
	}
	
	//판매글 이미지 썸네일 가져오기
	public void getPostImgThumbnail(List<PostList> postList) {
		for (PostList post : postList) {
			String[] imgs = post.getPost_img().split(",");
			post.setPost_img(imgs[0]);
		}
	}
	
	//판매글 등록시 내용 부분 줄바꿈 처리
	public String replaceLine(String content) {
		if(content.contains("\n"))
			return content.replace("\n", "<br>");
		return content;
	}


	// 판매물  목록 + 페이징
	public List<PostList> getListPaging(Criteria cri) throws Exception {
		List<PostList> list = dao.getListPaging(cri);
		getPostImgThumbnail(list);
		return list;
	}

	// 판매글 카테고리별 조회 + 페이징
	public List<PostList> getCategoryList(Criteria cri, String category_id) throws Exception {
		Map<String, Object> cateMap = new HashMap<String, Object>();
		cateMap.put("category_id", category_id);
		cateMap.put("skip", cri.getSkip());
		cateMap.put("amount", cri.getAmount());
		List<PostList> list = dao.selectCategoryList(cateMap);
		getPostImgThumbnail(list);
		return list;
	}

	//판매글 총 갯수 
	public int getTotal() throws Exception {
		return dao.getTotal();
	}
	//판매글 카테고리별 총 갯수 
	public int getCategoryTotal(String category_id) throws Exception {
		return dao.getCategoryTotal(category_id);
	}
	//판매글 검색 총 갯수 
	public int getSearchTotal(String keyword) throws Exception {
		return dao.getSearchTotal(keyword);
	}
	
	//판매글 검색 (페이징)
	public List<PostList> getSearchResult(Criteria cri, String keyword) throws Exception {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("keyword", keyword);
		searchMap.put("skip", cri.getSkip());
		searchMap.put("amount", cri.getAmount());
		List<PostList> list = dao.selectSearchResult(searchMap);
		getPostImgThumbnail(list);
		return list;
	}

}
