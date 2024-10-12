import pytest
from todo_app.todo import ToDoList


def test_add_task():
    todo_list = ToDoList()
    result = todo_list.add_task("Test Task")
    assert result == "Task 'Test Task' added."
    assert "Test Task" in todo_list.get_tasks()


def test_remove_task():
    todo_list = ToDoList()
    todo_list.add_task("Test Task")
    result = todo_list.remove_task("Test Task")
    assert result == "Task 'Test Task' removed."
    assert "Test Task" not in todo_list.get_tasks()


def test_get_tasks():
    todo_list = ToDoList()
    todo_list.add_task("Task 1")
    todo_list.add_task("Task 2")
    tasks = todo_list.get_tasks()
    assert tasks == ["Task 1", "Task 2"]
