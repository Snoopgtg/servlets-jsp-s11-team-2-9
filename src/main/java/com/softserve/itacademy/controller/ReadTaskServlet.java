package com.softserve.itacademy.controller;

import com.softserve.itacademy.model.Task;
import com.softserve.itacademy.repository.TaskRepository;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/read-task")
public class ReadTaskServlet extends HttpServlet {

    private TaskRepository repository;

    @Override
    public void init() {
        this.repository = TaskRepository.getTaskRepository();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Task task = repository.read(id);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/pages/read-task.jsp");
        request.setAttribute("task", task);
        requestDispatcher.forward(request, response);

    }
}
