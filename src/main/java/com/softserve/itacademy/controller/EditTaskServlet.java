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

@WebServlet(value = "/edit-task")
public class EditTaskServlet extends HttpServlet {

    private TaskRepository repository;
    private Task task;

    @Override
    public void init() throws ServletException {
        this.repository = TaskRepository.getTaskRepository();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        task = repository.read(id);
        //todo share priorities
        RequestDispatcher requestDispatcher;

        if (task == null) {
            requestDispatcher = request.getRequestDispatcher("/WEB-INF/pages/error.jsp");
            request.setAttribute("error", new ErrModel("Task not found",
                    "Task with id '" + id + "' not found in To-Do List!",
                    "/edit-task"
            ));
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            requestDispatcher.forward(request, response);
        }
        requestDispatcher = request.getRequestDispatcher("/WEB-INF/pages/edit-task.jsp");
        request.setAttribute("task", task);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //todo correct err with priority
        task.setPriority(Priority.valueOf(req.getParameter("priority")));
        task.setTitle(req.getParameter("title"));
        repository.update(task);
        resp.sendRedirect("/tasks-list");
    }
}