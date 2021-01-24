package com.softserve.itacademy.controller;

import com.softserve.itacademy.model.Priority;
import com.softserve.itacademy.model.Task;
import com.softserve.itacademy.repository.TaskRepository;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/create-task", name = "CreateTaskServlet")
public class CreateTaskServlet extends HttpServlet {
    private TaskRepository taskRepository;

    @Override
    public void init() {
        taskRepository = TaskRepository.getTaskRepository();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("titleTask");
        Priority priority = Priority.valueOf(request.getParameter("priority"));
        Task task = new Task(title, priority);
        if (taskRepository.create(task)) {
            request.setAttribute("errorFlag", false);
            request.setAttribute("defTitle", "");

        }
        else {
            request.setAttribute("errorFlag", true);
            request.setAttribute("defTitle", title);
        }
        request.getRequestDispatcher("/WEB-INF/pages/create-task.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/pages/create-task.jsp");
        request.setAttribute("errorFlag", false);
        requestDispatcher.forward(request, response);
    }
}
