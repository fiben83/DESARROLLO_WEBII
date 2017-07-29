<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">@import url(style.css);</style>
<title>Tienda Online</title>
</head>
<body>
<div id="header">
      <a href="/TiendaWeb/" class="float"><img src="cssimages/logo.jpg" alt="" width="171" height="73" /></a>																																																		<div class="inner_copy"><a href="http://www.greatdirectories.org/">web directories</a><a href="http://www.bestfreetemplates.info/">free CSS templates</a></div>
         <div class="topblock1">
                Moneda:<br /><select><option>Soles S/.</option></select>
         </div>
	    <div class="topblock2">
                Idioma:<br />
		<a href="#"><img src="cssimages/flag1.gif" alt="" width="19" height="11" /></a>																																		
		<a href="#"><img src="cssimages/flag2.gif" alt="" width="19" height="11" /></a>
		<a href="#"><img src="cssimages/flag3.gif" alt="" width="19" height="11" /></a>
		<a href="#"><img src="cssimages/flag4.gif" alt="" width="19" height="11" /></a>
		<a href="#"><img src="cssimages/flag5.gif" alt="" width="19" height="11" /></a>
		<a href="#"><img src="cssimages/flag6.gif" alt="" width="19" height="11" /></a>
        </div>
        <div class="topblock2">
            <a href="#"><img src="cssimages/shopping.gif" alt="" width="24" height="24" class="shopping" /></a>																																																																									<div class="inner_copy"><a href="http://www.bestfreetemplates.org/">free templates</a><a href="http://www.bannermoz.com/">banner templates</a></div>
            <p>Carro de compra</p>
            <p><strong>0</strong><span> articulos</span></p>
        </div>
               	        
       <ul id="menu">
        <li><img src="cssimages/li.gif" alt="" width="19" height="29" /></li>
		<li><a href="#"><img src="cssimages/but1_a.gif" alt="" width="90" height="29" /></a></li>
		<li><a href="/TiendaOnline/go?to=new"><img src="cssimages/but2.gif" alt="" width="129" height="29" /></a></li>
		<li><a href=""><img src="cssimages/but3.gif" alt="" width="127" height="29" /></a></li>
		<li><a href="/TiendaOnline/go?to=user"><img src="cssimages/but4.gif" alt="" width="113" height="29" /></a></li>
		<li><a href=""><img src="cssimages/but5.gif" alt="" width="105" height="29" /></a></li>
        <li><a href="/TiendaOnline/go?to=shoppingcart"><img src="cssimages/but6.gif" alt="" width="132" height="29" /></a></li>
		<li><a href="#"><img src="cssimages/but7.gif" alt="" width="82" height="29" /></a></li>
		<li><a href="#"><img src="cssimages/but8.gif" alt="" width="112" height="29" /></a></li>
		<li><a href="Show_Settings.action"/><img src="cssimages/but9.gif" alt="" width="71" height="29" /></a></li>
        </ul>
	</div>
	<div id="container">
            <div id="center" class="column">
                <div id="content">
                    <div id="about">
                        <p class="tree"><b>Inserte los datos del nuevo disco:</b></p><br/>  
                        <s:form method="post" action="Add_Record">
                        
						<p class="line"><s:textfield name="record.name" id="record.name" label="Nombre del disco" labelposition="top"/></p>
						<p class="line"><s:textfield name="record.artist" id="record.artist" label="Artista/Autor" labelposition="top" cssClass="input"/></p>
						<p class="line"><s:textfield name="record.price" id="record.price" label="Precio" labelposition="top" cssClass="input"/></p>
	   					<p class="line"><s:textfield name="record.stock" id="record.stock" label="Unidades de Stock" labelposition="top" cssClass="input"/></p>
		
						<s:submit value="Agregar Disco"/>
						</s:form>                
                       
 					</div>
                 </div>
                 <div id="content">
                    <div id="about">
                        <p class="tree"><b>Listar discos<a href="List_Record.action" class="reg">AQUI</a></b></p>
                    </div>
                </div>
            </div>
            <div id="left" class="column">
                <div class="block">
                    <img src="cssimages/title1.gif" alt="" width="168" height="42" /><br />
                    <ul id="navigation">
                           <li class="color"><a href="#">Rock</a></li>
                          <li class="color"><a href="#">Baladas</a></li>
                           <li class="color"><a href="#">Regueton</a></li>
                            <li class="color"><a href="#">Salsa</a></li>
                    </ul>
				</div>
				<img src="cssimages/banner1.jpg" alt="" width="172" height="200" />
            </div>
             <div id="right" class="column">
                <a href="/TiendaOnline/go?to=search&type=electronica"><img src="cssimages/banner2.jpg" alt="" width="237" height="216" /></a><br />
				<div class="rightblock">
                    >
                    <div class="blocks">
                        <img src="cssimages/top_bg.gif" alt="" width="218" height="12" />
                        
                            <form method="post" action="/TiendaOnline/go">
                                <input name="to" value="user" type="hidden">
                                <p class="line"><span>Usuario:</span> <input name="user" value="" type="text" /></p>
                                <p class="line"><span>Password:</span> <input name="pass" value="" type="password" /></p>
                                <p class="line center"><a href="/TiendaOnline/go?to=register" class="reg">Registro</a> | <a href="/TiendaOnline/go?to=login" class="reg">Recordar password</a></p>
                                <p class="line center pad20"><button>Loguearse</button></p>
                            </form>
                        
						<img src="cssimages/bot_bg.gif" alt="" width="218" height="10" /><br />
                    </div>
                    <div class="blocks">
                        <img src="cssimages/top_bg.gif" alt="" width="218" height="12" />
					<div id="news">
                            <img src="cssimages/title5.gif" alt="" width="201" height="28" />
                            <span class="date">Kurt D. Cobain</span>
                            <p>La música es sinónimo de libertad, de tocar lo que quieras y como quieras, siempre que sea bueno y tenga pasión, que la música sea el alimento del amor.</p>
                            <a href="http://www.google.com/search?q=citas+celebres+musica" class="more">Lee mas</a>
					</div>
					<img src="cssimages/bot_bg.gif" alt="" width="218" height="10" /><br />
                    </div>
				</div>
            </div>
	</div>
	
	<div id="footer">
            <a href="/TiendaWeb">Home</a>  |  <a href="/TiendaOnline/go?to=new">Novedades</a>  |  <a href="/TiendaOnline/go?to=featured">Destacados</a>  |  <a href="/TiendaOnline/go?to=user">Mi Cuenta</a>  |  <a href="/TiendaOnline/go?to=shoppingcart">Carrito de Compra</a>  |  <a href="/TiendaOnline/go?to=admin" class="terms">Admin</a>
            <p>Ejemplo Strusts 2 : FPP  </p>																																																																																																																																									<div class="inner_copy"><a href="http://www.beautifullife.info/">beautiful</a><a href="http://www.grungemagazine.com/">grunge</a></div>
	</div>



</body>
</html>