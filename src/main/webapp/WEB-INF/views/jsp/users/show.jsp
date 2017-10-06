<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../fragments/header.jsp" />

<div class="container">

	<c:if test="${not empty msg}">
		<div class="alert alert-${css} alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<strong>${msg}</strong>
		</div>
	</c:if>

	<h1>Detalhes do Usuário</h1>
	<br />

	<div class="row">
		<label class="col-sm-2">ID</label>
		<div class="col-sm-10">${user.id}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Nome</label>
		<div class="col-sm-10">${user.name}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Email</label>
		<div class="col-sm-10">${user.email}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Endereço</label>
		<div class="col-sm-10">${user.address}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Newsletter</label>
		<div class="col-sm-10">${user.newsletter}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Web Frameworks</label>
		<div class="col-sm-10">${user.framework}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Sexo</label>
		<div class="col-sm-10">${user.sex}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Número</label>
		<div class="col-sm-10">${user.number}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">País</label>
		<div class="col-sm-10">${user.country}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Skill</label>
		<div class="col-sm-10">${user.skill}</div>
	</div>

	<spring:url value="/users/${user.id}/update" var="updateUrl" />
	<button class="btn btn-primary" onclick="location.href='${updateUrl}'">Atualizar</button>

</div>

<jsp:include page="../fragments/footer.jsp" />

</body>
</html>