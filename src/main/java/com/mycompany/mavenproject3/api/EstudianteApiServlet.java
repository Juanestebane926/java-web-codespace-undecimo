package com.mycompany.mavenproject3.api;

import com.mycompany.mavenproject3.model.Estudiante;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EstudianteApiServlet", urlPatterns = {"/api/estudiantes"})
public class EstudianteApiServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");

        ArrayList<Estudiante> estudiantes = new ArrayList<>();
        estudiantes.add(new Estudiante("Ana", 18, 4.6));
        estudiantes.add(new Estudiante("Pedro", 20, 3.1));
        estudiantes.add(new Estudiante("Luisa", 19, 2.8));

        try (PrintWriter out = response.getWriter()) {
            StringBuilder json = new StringBuilder();
            json.append("{");
            json.append("\"mensaje\":\"Listado basico de estudiantes\",");
            json.append("\"total\":").append(estudiantes.size()).append(",");
            json.append("\"estudiantes\":[");

            for (int i = 0; i < estudiantes.size(); i++) {
                json.append(estudianteToJson(estudiantes.get(i)));
                if (i < estudiantes.size() - 1) {
                    json.append(",");
                }
            }

            json.append("]");
            json.append("}");
            out.print(json.toString());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");

        String nombre = request.getParameter("nombre");
        String edadTexto = request.getParameter("edad");
        String notaTexto = request.getParameter("nota");

        try (PrintWriter out = response.getWriter()) {
            if (nombre == null || nombre.trim().isEmpty()) {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                out.print("{\"mensaje\":\"El nombre es obligatorio\"}");
                return;
            }

            int edad;
            double nota;

            try {
                edad = Integer.parseInt(edadTexto);
                nota = Double.parseDouble(notaTexto);
            } catch (NumberFormatException e) {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                out.print("{\"mensaje\":\"Edad y nota deben ser numericas\"}");
                return;
            }

            Estudiante estudiante = new Estudiante(nombre.trim(), edad, nota);
            out.print("{");
            out.print("\"mensaje\":\"Estudiante recibido correctamente\",");
            out.print("\"estudiante\":");
            out.print(estudianteToJson(estudiante));
            out.print("}");
        }
    }

    private String estudianteToJson(Estudiante estudiante) {
        return new StringBuilder()
                .append("{")
                .append("\"nombre\":\"").append(escapeJson(estudiante.getNombre())).append("\",")
                .append("\"edad\":").append(estudiante.getEdad()).append(",")
                .append("\"nota\":").append(estudiante.getNota()).append(",")
                .append("\"estado\":\"").append(estudiante.getEstadoAcademico()).append("\"")
                .append("}")
                .toString();
    }

    private String escapeJson(String texto) {
        if (texto == null) {
            return "";
        }
        return texto.replace("\\", "\\\\").replace("\"", "\\\"");
    }
}
