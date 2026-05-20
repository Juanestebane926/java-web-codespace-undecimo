<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Endpoint completo</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; line-height: 1.5; color: #222; }
    .box { max-width: 1100px; margin: 0 auto; }
    .card { background: #f7f7f7; border: 1px solid #ddd; border-radius: 12px; padding: 16px; margin: 16px 0; }
    pre { background: #fff; border: 1px solid #ddd; border-radius: 8px; padding: 12px; overflow-x: auto; }
    code { background: #fff; border: 1px solid #ddd; border-radius: 6px; padding: 1px 6px; }
    .hint { background: #fff8d6; border-left: 4px solid #f2c200; padding: 12px; }
    a { color: #0b63ce; text-decoration: none; }
  </style>
</head>
<body>
<div class="box">
  <h1>Paso 1: GET que devuelve JSON con estudiantes</h1>
  <p>
    Este es el ejemplo que usas para explicar la clase. Sigue usando estudiantes y ArrayList,
    pero el JSON se arma de una forma más limpia usando un método auxiliar.
  </p>

  <div class="card">
    <h2>Lo que debe notar el estudiante</h2>
    <ul>
      <li>El servlet responde en <strong>JSON</strong>.</li>
      <li>Se usa <strong>ArrayList</strong> para almacenar estudiantes.</li>
      <li>Un método convierte cada estudiante a JSON.</li>
      <li>El <code>for</code> solo recorre la lista, no arma todo a mano línea por línea.</li>
    </ul>
  </div>

  <div class="card">
    <h2>Servlet de ejemplo</h2>
    <pre><code>package com.mycompany.mavenproject3.api;

import com.mycompany.mavenproject3.model.Estudiante;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EstudianteApiServlet", urlPatterns = {"/api/estudiantes"})
public class EstudianteApiServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");

        ArrayList&lt;Estudiante&gt; estudiantes = new ArrayList&lt;&gt;();
        estudiantes.add(new Estudiante("Ana", 18, 4.6));
        estudiantes.add(new Estudiante("Pedro", 20, 3.1));
        estudiantes.add(new Estudiante("Luisa", 19, 2.8));

        try (PrintWriter out = response.getWriter()) {
            StringBuilder json = new StringBuilder();
            json.append("{");
            json.append("\"mensaje\":\"Listado basico de estudiantes\",");
            json.append("\"total\":").append(estudiantes.size()).append(",");
            json.append("\"estudiantes\":[");

            for (int i = 0; i &lt; estudiantes.size(); i++) {
                json.append(estudianteToJson(estudiantes.get(i)));
                if (i &lt; estudiantes.size() - 1) {
                    json.append(",");
                }
            }

            json.append("]");
            json.append("}");
            out.print(json.toString());
        }
    }

    private String estudianteToJson(Estudiante estudiante) {
        return new StringBuilder()
                .append("{")
                .append("\"nombre\":\"").append(estudiante.getNombre()).append("\",")
                .append("\"edad\":").append(estudiante.getEdad()).append(",")
                .append("\"nota\":").append(estudiante.getNota()).append(",")
                .append("\"estado\":\"").append(estudiante.getEstadoAcademico()).append("\"")
                .append("}")
                .toString();
    }
}</code></pre>
  </div>

  <div class="hint">
    <strong>Explicación oral sugerida:</strong> “Antes escribíamos todo el JSON línea por línea. Ahora hacemos una función pequeña que convierte un estudiante en JSON y el ciclo solo lo repite.”
  </div>

  <div class="card">
    <h2>Preguntas para hacer en clase</h2>
    <ul>
      <li>¿Qué hace <code>doGet</code>?</li>
      <li>¿Para qué sirve <code>ArrayList&lt;Estudiante&gt;</code>?</li>
      <li>¿Qué parte genera cada estudiante en JSON?</li>
    </ul>
  </div>

  <p><a href="index.jsp">Volver al menú de la unidad</a></p>
</div>
</body>
</html>
