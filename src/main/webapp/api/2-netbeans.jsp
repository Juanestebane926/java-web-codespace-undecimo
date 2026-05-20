<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Plantilla para completar</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; line-height: 1.5; color: #222; }
    .box { max-width: 1100px; margin: 0 auto; }
    .card { background: #f7f7f7; border: 1px solid #ddd; border-radius: 12px; padding: 16px; margin: 16px 0; }
    pre { background: #fff; border: 1px solid #ddd; border-radius: 8px; padding: 12px; overflow-x: auto; }
    .fill { color: #b00020; font-weight: bold; }
    a { color: #0b63ce; text-decoration: none; }
  </style>
</head>
<body>
<div class="box">
  <h1>Paso 2: Plantilla para que el estudiante complete</h1>
  <p>
    Aquí dejas el esqueleto. La idea es que el estudiante rellene los nombres del método,
    la ruta del endpoint y la lógica del POST.
  </p>

  <div class="card">
    <h2>Instrucciones para el estudiante</h2>
    <ol>
      <li>Completa los espacios en rojo.</li>
      <li>Agrega el método <code>doPost</code>.</li>
      <li>Lee parámetros con <code>request.getParameter()</code>.</li>
      <li>Devuelve un JSON sencillo como respuesta.</li>
    </ol>
  </div>

  <div class="card">
    <h2>Plantilla incompleta</h2>
    <pre><code>package com.mycompany.mavenproject3.api;

import com.mycompany.mavenproject3.model.Estudiante;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = <span class="fill">"____________"</span>, urlPatterns = {<span class="fill">"/api/____________"</span>})
public class <span class="fill">____________</span> extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        response.setContentType("application/json;charset=UTF-8");

        String nombre = request.getParameter(<span class="fill">"____________"</span>);
        String edadTexto = request.getParameter(<span class="fill">"____________"</span>);
        String notaTexto = request.getParameter(<span class="fill">"____________"</span>);

        int edad = Integer.parseInt(edadTexto);
        double nota = Double.parseDouble(notaTexto);

        Estudiante estudiante = new Estudiante(nombre, edad, nota);

        try (PrintWriter out = response.getWriter()) {
            out.print("{");
            out.print("\"mensaje\":\"____________\",");
            out.print("\"estudiante\":{");
            out.print("\"nombre\":\"" + estudiante.getNombre() + "\",");
            out.print("\"edad\":" + estudiante.getEdad() + ",");
            out.print("\"nota\":" + estudiante.getNota() + ",");
            out.print("\"estado\":\"" + estudiante.getEstadoAcademico() + "\"");
            out.print("}");
            out.print("}");
        }
    }
}</code></pre>
  </div>

  <div class="card">
    <h2>Lo que puedes decir mientras lo completan</h2>
    <p>
      “Fíjense que seguimos usando la misma clase Estudiante. Lo nuevo no es el objeto,
      lo nuevo es que ahora el servidor recibe datos con POST y responde en JSON.”
    </p>
  </div>

  <p><a href="index.jsp">Volver al menú de la unidad</a></p>
</div>
</body>
</html>
