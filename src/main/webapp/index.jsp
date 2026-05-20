<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Curso Java Web</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; line-height: 1.5; color: #222; }
    .box { max-width: 980px; margin: 0 auto; }
    .card { background: #f7f7f7; border: 1px solid #ddd; border-radius: 12px; padding: 16px; margin: 16px 0; }
    .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); gap: 12px; }
    a { color: #0b63ce; text-decoration: none; }
    a:hover { text-decoration: underline; }
    code, pre { background: #fff; border: 1px solid #ddd; border-radius: 8px; }
    pre { padding: 12px; overflow-x: auto; }
  </style>
</head>
<body>
<div class="box">
  <h1>Curso Java Web</h1>
  <p>Entorno listo. Para arrancar <strong>Apache Tomcat 9</strong> (embebido vía Cargo) en el Codespace:</p>
  <pre>mvn cargo:run</pre>
  <p>Luego abre el puerto <strong>8080</strong>.</p>
  <p><strong>Desde el editor:</strong> menú <em>Terminal → Ejecutar tarea…</em> y elige <code>Tomcat: iniciar (mvn cargo:run)</code>.</p>
  <p>Hora del servidor: <%= new java.util.Date() %></p>

  <div class="card">
    <h2>Unidades disponibles</h2>
    <div class="grid">
      <div class="card">
        <h3>Fundamentos</h3>
        <p>Variables, condicionales y ciclos.</p>
        <p><a href="fundamentos/index.jsp">Abrir unidad</a></p>
      </div>
      <div class="card">
        <h3>Objetos</h3>
        <p>Clase, constructor, listas y JSP.</p>
        <p><a href="objetos/index.jsp">Abrir unidad</a></p>
      </div>
      <div class="card">
        <h3>API con Servlets</h3>
        <p>GET, POST y JSON simple para estudiantes.</p>
        <p><a href="api/index.jsp">Abrir unidad</a></p>
      </div>
    </div>
  </div>
</div>
</body>
</html>
