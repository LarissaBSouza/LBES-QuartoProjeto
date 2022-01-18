<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Maven -->
<link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"/>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style type="text/css">
	body {
		background: black;
		color: white;
	}

</style>
	<%!
		String today(){
			java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			return dt.format(new java.util.Date());
		}
	%>
	<c:set var="variavel" value="Primeira página JSP utilizando JSTL" />
	<c:out value="${variavel}" />
	<c:set var="formatar" value="true"/>
	<c:set var="d1" value="<%=new java.util.Date()%>"/>
	<h1>A data de hoje é: <c:out value="${d1}"/> </h1>
	<h1>A data de hoje é: <fmt:formatDate pattern = "yyyy-MM-dd hh:mm:ss" value = "${d1}"/></h1>
	<c:if test="${formartar == true}">
		<p>Variável formatar = <c:out value="${formatar}"/></p>
	</c:if>
	<h1>A data de hoje é: <c:choose>
							<c:when test = "${formatar == true}">
								<c:out value="<%=today()%>"/> <!-- Ou gerar um arquivo .tld -->
							</c:when>
							<c:otherwise>
								<c:out value="${d1}"/>
							</c:otherwise>
							</c:choose></h1>
	
	
	
	<!-- Exemplo de entrada e saída -->
	<c:set var="professor" value="O nome do meu professor é Raphael"/>
	<c:out value="${professor}"/>
	
	<c:set var="notaRaphael" value= "100" />
		
	<c:if test="${notaRaphael == 100}">
		<p>Parabéns, sua nota foi = <c:out value="${notaRaphael}"/></p>
	</c:if>
	
	<c:catch var ="notaWill">
         <% int notaWillian = 30;%>
      </c:catch>

      <c:if test = "${notaWill > 0}">
         <p>Esta foi a nota do Will = <c:out value="${notaWill}"/></p>
      </c:if>
      
      
	<c:set var="notaLarissa" value= "70" />
	<c:set var="reprovacao" value="reprovada(o)"/>
	
	<h1>Larissa, a sua nota foi: <c:choose>
							<c:when test = "${(notaLarissa >= 50)}">
								<c:out value="${notaLarissa}"/>
							</c:when>
							<c:otherwise>
								<c:out value="${reprovacao}"/>
							</c:otherwise>
							</c:choose></h1>
	
</body>
</html>