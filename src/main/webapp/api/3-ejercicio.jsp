<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Ejercicio POST</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; line-height: 1.5; color: #222; }
    .box { max-width: 1100px; margin: 0 auto; }
    .card { background: #f7f7f7; border: 1px solid #ddd; border-radius: 12px; padding: 16px; margin: 16px 0; }
    pre { background: #fff; border: 1px solid #ddd; border-radius: 8px; padding: 12px; overflow-x: auto; }
    code { background: #fff; border: 1px solid #ddd; border-radius: 6px; padding: 1px 6px; }
    .fill { color: #b00020; font-weight: bold; }
    a { color: #0b63ce; text-decoration: none; }
  </style>
</head>
<body>
<div class="box">
  <h1>Paso 3: Ejercicio para crear un POST real</h1>
  <p>
    En este ejercicio el estudiante no solo completa el código, sino que usa el mismo
    tema de la clase anterior para que todo le resulte familiar.
  </p>

  <div class="card">
    <h2>Objetivo del ejercicio</h2>
    <ul>
      <li>Recibir un estudiante por POST.</li>
      <li>Crear el objeto <code>Estudiante</code>.</li>
      <li>Responder con JSON sencillo.</li>
      <li>Reutilizar el estado académico.</li>
    </ul>
  </div>

  <div class="card">
    <h2>Tu tarea</h2>
    <p>Completa este servlet con los datos que faltan:</p>
    <pre><code>package com.mycompany.mavenproject3.api;

import com.mycompany.mavenproject3.model.Estudiante;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "<span class="fill">____________</span>", urlPatterns = {"<span class="fill">/api/____________</span>"})
public class <span class="fill">____________</span> extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        String nombre = request.getParameter("<span class="fill">____________</span>");
        int edad = Integer.parseInt(request.getParameter("<span class="fill">____________</span>"));
        double nota = Double.parseDouble(request.getParameter("<span class="fill">____________</span>"));

        Estudiante estudiante = new Estudiante(nombre, edad, nota);

        try (PrintWriter out = response.getWriter()) {
            out.print("{");
            out.print("\"mensaje\":\"<span class="fill">____________</span>\",");
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
    <h2>Preguntas guía</h2>
    <ol>
      <li>¿Qué cambia cuando el método es POST?</li>
      <li>¿Qué hace <code>getParameter</code>?</li>
      <li>¿Qué parte del JSON no cambió respecto a la clase pasada?</li>
    </ol>
  </div>

  <div class="card">
    <h2>Extensión opcional</h2>
    <p>
      Si terminas rápido, agrega un campo <code>correo</code> y devuélvelo también en el JSON.
      Así el estudiante practica leer más parámetros sin cambiar la estructura principal.
    </p>
  </div>

  <p><a href="index.jsp">Volver al menú de la unidad</a></p>
</div>
</body>
</html>
