<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >

<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>글쓰기</title>
    <link rel="stylesheet" href="/test/css/bootstrap.css">
    <style>
    
        button {
            float: right;
        }
    
    </style>
    
    
    
     <meta charset="utf-8">
        <title>게시글 수정 페이지</title>
        <!-- Make sure the path to CKEditor is correct. -->
      <script src="//cdn.ckeditor.com/4.14.1/full/ckeditor.js"></script>
        <script src="../ckeditor.js"></script>
    
    
    
</head>

<body>
<c:import url="../used/usedModify.jsp"/>
    <div class="container">
        <form id="form_data" method="POST">
            <table class="table table-bordered">
                <thead>
                    <p>게시물 수정</p>
            <select>
            
                <option value="레시피 게시판">미정</option>
                <option value="가이드 게시판">미정</option>
            </select>
                    <br>
                    
                </thead>
                <tbody>
                    <tr>
                        <th>제목 : </th>
                        <td><input type="text" name="title" id="title" class="form-control" placeholder="제목을 입력해주세요."></td>
                    </tr>
                    <tr>
                        <th>작성자 : </th>
                        <td>user01</td>
                    </tr>
                    <tr>
                        <th>내용 : </th>
                        <td><form>
            <textarea name="nContent" id="editor1" rows="10" cols="80">
                내용을 입력하세요.
            </textarea>
            <script>
                // Replace the <textarea id="editor1"> with a CKEditor 4
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
            </script>
        </form></td>
                    </tr>
                    
                </tbody>
            </table>
            
            <br>
            <button type="button" class="btn btn-secondary">취소하기</button>
        
            <button type="submit" class="btn btn-info">등록하기</button>
            

        </form>
    </div>
