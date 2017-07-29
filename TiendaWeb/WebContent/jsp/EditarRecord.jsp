<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>Editar un Disco</title>
<style type="text/css">@import url(css/estilos.css);</style>
</head>
<body>
<!-- Mensaje de error -->
<s:if test="errors.size()>0">
<div id="mensaje_error">
	<label>Se han producido los errores siguientes: </label>
	<ul><s:fielderror/></ul>
</div>
</s:if>

<div id="carta">									
	<h3>Editar un Disco</h3>
	<s:form method="post" action="Update_Record">
		<s:textfield name="record.name" id="record.name" label="Nombre Disco" labelposition="top" cssClass="input"/>
		<s:textfield name="record.artist" id="record.artist" label="Artista" labelposition="top" cssClass="input"/>
		<s:textfield name="record.price" id="record.price" label="Precio" labelposition="top" cssClass="input"/>
	   <s:textfield name="record.stock" id="record.stock" label="Stock" labelposition="top" cssClass="input"/>
		
		<s:submit value="Modificar Disco"/>
	</s:form>		
</div>
</body>
</html>
