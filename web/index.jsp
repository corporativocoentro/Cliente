<%-- 
    Document   : index
    Created on : 27/10/2020, 04:20:32 PM
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Volumen de una esfera</title>
    </head>
    <body>
        <h1>Volumen de una esfera</h1>
         <form  action="index.jsp" method="POST">
            <input type="text" name="txtRadio" value="" />
            <input type="submit" value="Calcular" />
        </form>
               <%-- start web service invocation --%><hr/>
    <%
    try {
	esfera.VolumenEsfera_Service service = new esfera.VolumenEsfera_Service();
	esfera.VolumenEsfera port = service.getVolumenEsferaPort();
	 // TODO initialize WS operation arguments here
	java.lang.Double radio = Double.valueOf(request.getParameter("txtRadio"));
	// TODO process result here
	java.lang.Double result = port.volumen(radio);
        if(radio<=0)
            out.print("El radio no puede ser igual o menor que 0");
        else
            out.println("El volumen de la esfera es="+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>