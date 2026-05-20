<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Clase API con Servlets</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; line-height: 1.5; color: #222; }
    .box { max-width: 980px; margin: 0 auto; }
    .card { background: #f7f7f7; border: 1px solid #ddd; border-radius: 12px; padding: 16px; margin: 16px 0; }
    code, pre { background: #fff; border: 1px solid #ddd; border-radius: 8px; }
    pre { padding: 12px; overflow-x: auto; }
    a { color: #0b63ce; text-decoration: none; }
    a:hover { text-decoration: underline; }
    .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); gap: 12px; }
  </style>
</head>
<body>
<div class="box">
  <h1>Clase 3: Servlets, GET, POST y JSON simple</h1>
  <p>
    Esta unidad mantiene el mismo dominio de la clase anterior: <strong>estudiantes</strong>.
    La idea es que el mismo concepto se vuelva familiar durante las próximas semanas.
  </p>

  <div class="card">
    <h2>Ruta de la clase</h2>
    <ol>
      <li>Revisar el endpoint GET que lista estudiantes.</li>
      <li>Simplificar el JSON con un método auxiliar.</li>
      <li>Agregar un POST que reciba un estudiante nuevo.</li>
      <li>Probar todo desde el navegador o Postman.</li>
    </ol>
  </div>

  <div class="grid">
    <div class="card">
      <h3>1. Endpoint completo</h3>
      <p>Primera explicación para la clase.</p>
      <a href="1-endpoint.jsp">Ver ejemplo guiado</a>
    </div>
    <div class="card">
      <h3>2. Plantilla para el estudiante</h3>
      <p>Ejemplo con espacios para completar en clase.</p>
      <a href="2-netbeans.jsp">Ver plantilla</a>
    </div>
    <div class="card">
      <h3>3. Ejercicio POST</h3>
      <p>Actividad para que creen el endpoint por su cuenta.</p>
      <a href="3-ejercicio.jsp">Ver ejercicio</a>
    </div>
  </div>

  <div class="card">
    <h2>Ideas clave</h2>
    <ul>
      <li><strong>GET</strong> para consultar datos.</li>
      <li><strong>POST</strong> para enviar datos.</li>
      <li><strong>Servlet</strong> para recibir y responder.</li>
      <li><strong>JSON</strong> como formato de salida.</li>
    </ul>
  </div>

  <div class="card">
    <h2>Endpoint real de la clase</h2>
    <p><code>/api/estudiantes</code></p>
    <p>El servlet está en:</p>
    <pre>src/main/java/com/mycompany/mavenproject3/api/EstudianteApiServlet.java</pre>
  </div>

  <p><a href="../index.jsp">Volver al inicio</a></p>
</div>
</body>
</html>
