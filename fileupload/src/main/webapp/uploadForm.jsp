<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="uploadResult1.jsp" method ="post" enctype="multipart/form-data">
   <div>
      <label for="title">제목</label>
      <input type="text" name="title" id="title" />
   </div>
      <div>
      <label for="contents">내용</label>
      <textarea name="contents" id="" cols="30" rows="10"></textarea>
      
   </div>
   <div>
      <label for="file">파일1</label>
      <input type="file" name="file1" id="file1" />
   </div>
   <div>
      <label for="file">파일2</label>
      <input type="file" name="file2" id="file" />
   </div>
   <div>   
      <input type="submit" value="전송" />
   </div>
</form>
</body>
</html>