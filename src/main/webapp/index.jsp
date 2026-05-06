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
  <p>Entorno listo. Para arrancar <strong>Apache Tomcat 9</strong> (embebido vía Cargo) en el Codespace:</p>
  <pre>mvn cargo:run</pre>
  <p>Luego abre el puerto <strong>8080</strong> (pestaña &quot;Puertos&quot; en VS Code / Codespaces).</p>
  <p><strong>Desde el editor:</strong> menú <em>Terminal → Ejecutar tarea…</em> y elige <code>Tomcat: iniciar (mvn cargo:run)</code>. Compilar el WAR: <em>Terminal → Ejecutar tarea de compilación</em> (atajo habitual <kbd>Ctrl+Shift+B</kbd>) ejecuta <code>mvn package</code>.</p>
  <p>También puedes usar la vista <strong>Maven</strong> (icono en la barra lateral) → <em>Plugins</em> → <em>cargo-maven3-plugin</em> → doble clic en <em>cargo:run</em>.</p>
  <p>Hora del servidor: <%= new java.util.Date() %></p>
</body>
</html>
