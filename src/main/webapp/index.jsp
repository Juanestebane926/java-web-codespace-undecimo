<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Curso Java Web</title>
</head>
<body>
  <h1>Curso Java Web</h1>
  <p>Entorno listo. Para ejecutar la aplicación en el Codespace:</p>
  <pre>mvn jetty:run</pre>
  <p>Luego abre el puerto <strong>8080</strong> (pestaña &quot;Puertos&quot; en VS Code / Codespaces).</p>
  <p>Hora del servidor: <%= new java.util.Date() %></p>
</body>
</html>
