package com.softserve.itacademy.controller;

import com.softserve.itacademy.model.ErrModel;
import com.softserve.itacademy.model.Priority;
import com.softserve.itacademy.model.Task;
import com.softserve.itacademy.repository.TaskRepository;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/tasks-list")
public class ShowAllServlet extends HttpServlet{

    private TaskRepository repository;

    @Override
    public void init() throws ServletException {
        this.repository = TaskRepository.getTaskRepository();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         RequestDispatcher requestDispatcher =  request.getRequestDispatcher("/WEB-INF/pages/tasks-list.jsp");
         request.setAttribute("tasks", repository.all());
         requestDispatcher.forward(request, response);
    }
}
