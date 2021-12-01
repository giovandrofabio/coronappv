<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Pacientes</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Nome Paciente</th>
				<th>CPF</th>
				<th>Resultado</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${pacienteList}" var="paciente">
				<tr>
					<td>${paciente.nome}</td>
					<td>${paciente.cpf}</td>
					<td>${paciente.resultado}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>