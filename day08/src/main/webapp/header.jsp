<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="youtube.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="dao" value="${YoutubeDAO.getInstance() }" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>youtube clip</title>
<style>
	body {
		margin: 0;
		padding: 0;
	}
	header {
/* 		border: 1px dashed black; */
		height: 70px;
		overflow: hidden;
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: 0 20px;
	}
	h1 {
		margin: 0;
		padding: 0;
		font-size: 20px;
		font-family: 'Impact';
		font-weight: normal;
	}
	h1 > a > sup {
		font-weight: 100;
		font-family: 'Arial';
		font-size: 12px;
	}
	aside {
/* 		border: 1px dashed red; */
		position: fixed;
		box-sizing: border-box;
		top: 70px;
		left: 0;
		width: 200px;
		height: 97vh;
		overflow-x: hidden;
		overflow-y: auto; 
	}
	aside::-webkit-scrollbar {
		display: none;
	}
	section {
/*  		border: 1px dashed blue; */
 		box-sizing: border-box;
 		width: 1720px;
		position: fixed;
		top: 70px;
		left: 200px;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	div.search {
		border: 1px solid #dadada;
		box-sizing: border-box;
		overflow: hidden;
		height: 40px;
		border-radius: 20px;
		display: flex;
		align-items: center;
		width: 500px;
		min-width: 25%;
		margin: 0 50px;
	}
	input#search {
		all: unset;
/* 		box-sizing: border-box; */
		width: 100%;
		height: 40px;
		padding: 10px 15px;
		border: 1px solid #dadada;
	}
	div.search > button {
		all: unset;
		width: 70px;
		height: 40px;
		background-color: #eee;
		text-align: center;
	}
	aside > ul {
		list-style: none;
		padding-left: 10px;
		padding-bottom: 20px;
		border-bottom: 1px solid #eee;
	}
	aside > ul > li {
		padding: 9px 20px;	
		border-radius: 5px;
	}
	aside > ul > li > a {
		display: block;
		width: 100%;
		height: 100%;
	}
	aside > ul > li:hover {
		background-color: #eee;
	}
	section {
		padding: 20px;
	}
	button.category {
		all: unset;
		border-radius: 10px;
		background-color: #f5f6f7;
		color: black;
		padding: 7px 12px;
		font-size: 15px;
		margin: 0 5px;
	}
	button.category:hover {
		background-color: #eee;
	}
	button.category.selected {
		background-color: black;
		color: white;
	}
</style>
</head>
<body>

<header>
	<div class="logo">
		<h1><a href="${cpath }">Youtube<sup>KR</sup></a></h1>
	</div>
	<div class="search">
		<input type="search" id="search" placeholder="검색" autocomplete="off">
		<button>🔍</button>
	</div>
	<div class="info">
		<a href="${cpath }/add.jsp"><button>추가</button></a>
	</div>
</header>
<aside>
	<ul>
		<li><a href="">홈</a></li>
		<li><a href="">Shorts</a></li>
		<li><a href="">구독</a></li>
		<li><a href="">YouTube Music</a></li>
	</ul>
	<ul>
		<li><a href="">내 채널</a></li>
		<li><a href="">시청 기록</a></li>
		<li><a href="">내 동영상</a></li>
		<li><a href="">내 영화</a></li>
		<li><a href="">나중에 볼 동영상</a></li>
		<li><a href="">오프라인 저장 동영...</a></li>
	</ul>
	<ul>
		<li><a href="">구독채널1</a></li>
		<li><a href="">구독채널2</a></li>
		<li><a href="">구독채널3</a></li>
		<li><a href="">구독채널4</a></li>
		<li><a href="">구독채널5</a></li>
		<li><a href="">구독채널6</a></li>
		<li><a href="">구독채널7</a></li>
		<li><a href="">구독채널8</a></li>
		<li><a href="">구독채널9</a></li>
		<li><a href="">구독채널10</a></li>
		<li><a href="">구독채널11</a></li>
		<li><a href="">구독채널12</a></li>
	</ul>
</aside>


