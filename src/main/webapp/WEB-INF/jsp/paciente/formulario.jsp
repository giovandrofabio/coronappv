<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar Paciente</title>
</head>
<body>
	<form action="/paciente/adiciona" method="post">
		<input type="hidden" name="paciente.version" value="${not empty paciente.version ? paciente.version : ''}"/>
		<fieldset>
			<legend><h1>Adicionar Paciente</h1></legend>
			
			<p><label for="paciente.nome"><b>Nome: </b></label> 
			<input type="text"
				name="paciente.nome" 
				required="required" 
				autofocus="autofocus" 
				maxlength="40"
				size="40" placeholder="Nome" 
				value="${empty paciente.nome ? '' : paciente.nome}">
		    
		    <p><label for="paciente.cpf"><b>CPF: </b></label> <input type="number"
				name="paciente.cpf" required="required" value="${sessionScope.cpf}" placeholder="CPF sem pontuações">
		    
		    <p><fmt:formatDate type="date" pattern="dd/MM/yyyy" value="${paciente.dataNascimento}" var="dataNascimento"/>
			
			<p><label for="paciente.dataNascimento"><b>Data de Nascimento: </b></label> <input
				type="text" name="paciente.dataNascimento" required="required"
				placeholder="dd/mm/aaaa" value="${empty dataNascimento ? '' : dataNascimento}">
				
			<p><label for="paciente.sexo"><b>Sexo: </b></label> Masculino <input type="radio"
				name="paciente.sexo" value="M" required="required" ${((not empty paciente.sexo) && (paciente.sexo eq 'M')) ? 'checked' : ''}> Feminino <input
				type="radio" name="paciente.sexo" value="F" required="required" ${((not empty paciente.sexo) && (paciente.sexo eq 'F')) ? "checked" : ""}>				
			
			<p><button type="submit">Cadastrar</button>
		</fieldset>
	</form>
</body>
</html>