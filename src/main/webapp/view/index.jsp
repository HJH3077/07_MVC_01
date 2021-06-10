<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function test01() {
		location.href="/07_MVC_01/MyController?cmd=hello";
	}
	function test02() {
		location.href="/07_MVC_01/MyController?cmd=hi";
	}
	function test03() {
		location.href="/07_MVC_01/MyController?cmd=bye";
	}
	
	// 무조건 post 방식이어야 한다.(get 방식은 오류 발생)
	function test04(f) {
		f.action = "/07_MVC_01/MyController?cmd=hello"; // hidden으로 못쓰니 action에 cmd가 따라감
		f.submit();
	}
	function test05(f) {
		f.action = "/07_MVC_01/MyController?cmd=hi";
		f.submit();		
	}
	function test06(f) {
		f.action = "/07_MVC_01/MyController?cmd=bye";
		f.submit();
	}
</script>
</head>
<body>
	<!-- 자바스크립트 : test버튼을 눌러서 hello, hi 등으로 가게함 -->
	<button onclick="test01()">Hello</button>
	<button onclick="test02()">Hi</button>
	<button onclick="test03()">Bye</button>
	<hr>

	<!-- 각각의 form으로 보내는게 1개씩이면 form input submit이 가능  -->
	<form action="/07_MVC_01/MyController" method="post">
		<input type="submit" value="Hello"> <input type="hidden"
			name="cmd" value="hello">
		<!-- MyController를 가면서 cmd를 몰래 가져가게함 -->
	</form>
	<form action="/07_MVC_01/MyController" method="post">
		<input type="submit" value="Hi"> <input type="hidden"
			name="cmd" value="hi">
	</form>
	<form action="/07_MVC_01/MyController" method="post">
		<input type="submit" value="Bye"> <input type="hidden"
			name="cmd" value="bye">
	</form>
	<hr>

	<!-- 하나의 form에서 여러개를 보내야 하면 이렇게 써야함 /예) 수정, 삭제 보낼 때/ -->
	<form method="post">
		<!-- 각자 다른 action을 취하므로 action을 못씀 -->
		<input type="button" value="Hello" onclick="test04(this.form)">
		<input type="button" value="Hi" onclick="test05(this.form)"> <input
			type="button" value="Bye" onclick="test06(this.form)">
	</form>
	<hr>

	<!-- 이름, 국어, 영어, 수학을 받아서 이름, 국어, 영어, 수학, 총점, 평균, 학점 구하기 -->
	<div>
		<h2>성적 입력</h2>
		<form action="/07_MVC_01/MyController?cmd=grade" method="post">
			<table>
				<tbody>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" required></td>
					</tr>
					<tr>
						<td>국어</td>
						<td><input type="number" name="kor" required></td>
					</tr>
					<tr>
						<td>영어</td>
						<td><input type="number" name="eng" required></td>
					</tr>
					<tr>
						<td>수학</td>
						<td><input type="number" name="math" required></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><input type="submit" value="성적확인"></td>
						<input type="hidden" name="cmd" value="grade">
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>