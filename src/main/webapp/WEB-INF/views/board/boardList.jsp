<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
</head>
<script>
	window.addEventListener('load',function(){
		var xhr = new XMLHttpRequest();
		xhr.open('GET','/board');
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4){
				if(xhr.status==200){
					var response = JSON.parse(xhr.responseText);
					var html = '';
					for(var b of response){
						html += '<tr>';
						html += '<td>'+ b.binum +'</td>';
						html += '<td><input type="text" name="bititle'+b.binum+'" value="'+ b.bititle +'"></td>';
						html += '<td><textarea id="bitext'+b.binum+'">'+ b.bitext +'</textarea></td>';
						html += '<td>'+ b.bicnt +'</td>';
						html += '<td>'+ b.uinum +'</td>';
						html += '<td><button onclick="biupdate('+b.binum+')">수정</button><button onclick="bidelete('+b.binum+')">삭제</button></td>';
						html += '</tr>';
					}
					document.querySelector('#bibody').insertAdjacentHTML('beforeend',html);
				}
			}
		}
		xhr.send();
	})
</script>
<body>
<table border="1">
	<thead>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>내용</td>
			<td>조회수</td>
			<td>글쓴이번호</td>
			<td>수정/삭제</td>
		</tr>
	</thead>
	<tbody id="bibody">
		
	</tbody>
</table>
<button onclick="add()">추가</button>
<script>
	function biupdate(binum){
		var bititle = document.querySelector('input[name=bititle'+ binum +']').value;
		var bitext = document.querySelector('#bitext'+binum).value;
		var param = {binum:binum,bititle:bititle,bitext:bitext};
		var xhr = new XMLHttpRequest();
		xhr.open('PUT','/board');
		xhr.setRequestHeader('Content-Type','application/json');
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4){
				if(xhr.status==200){
					if(xhr.responseText="1"){
						alert('수정성공');
						location.href="/uri/board/boardList";
					}
				}else{
					alert('수정실패');
				}
			}
		}
		xhr.send(JSON.stringify(param));
	}
	function bidelete(binum){
		var xhr = new XMLHttpRequest();
		xhr.open('DELETE','/board/'+binum);
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4){
				if(xhr.status==200){
					if(xhr.responseText="1"){
						alert('삭제성공');
						location.href="/uri/board/boardList";
					}
				}else{
					alert('삭제실패');
				}
			}
		}
		xhr.send();
	}
	function add(){
		var html = '';
		html += '<tr>';
		html += '<td></td>';
		html += '<td><input type="text" name="bititle"></td>';
		html += '<td><textarea id="bitext"></textarea></td>';
		html += '<td></td>';
		html += '<td><input type="number" name="uinum"></td>';
		html += '<td><button onclick="biinsert()">글올리기</button></td>';
		html += '</tr>';
		document.querySelector('#bibody').insertAdjacentHTML('beforeend',html);
	}
	function biinsert(){
		var bititle = document.querySelector('input[name=bititle]').value;
		var bitext = document.querySelector('#bitext').value;
		var uinum = document.querySelector('input[name=uinum]').value;
		var param = {bititle:bititle,bitext:bitext,uinum:uinum};
		var xhr = new XMLHttpRequest();
		xhr.open('POST','/board');
		xhr.setRequestHeader('Content-Type','application/json');
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4){
				if(xhr.status==200){
					if(xhr.responseText="1"){
						alert('글올리기성공');
						location.href="/uri/board/boardList";
					}
				}else{
					alert('글올리기실패');
				}
			}
		}
		xhr.send(JSON.stringify(param));
	}
</script>
</body>
</html>