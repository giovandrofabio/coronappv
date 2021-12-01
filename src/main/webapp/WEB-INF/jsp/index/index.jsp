<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoronApp - Teste Seus Sintomas</title>
</head>
<body>
	<h2>Teste seus Sintomas - CoronApp</h2>
	<strong>Informe seu CPF para iniciar o teste:</strong>
	<br/> <br/>
	<h1>${mensagem}</h1>
	<h2>${aviso}</h2>
	<form name="frmcpf" action="/paciente/buscar" method="post">
		<label for="cpf">CPF:</label>
		<input name="cpf" id="cpf" placeholder="CPF sem pontua��o" type="number">
		<br/><br/>
		<button>Iniciar Teste</button>
	</form>
</body>
</html>