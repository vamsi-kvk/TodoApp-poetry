from todo_app.todo import ToDoList


def main():
    todo_list = ToDoList()
    print(todo_list.add_task("Buy groceries"))
    print(todo_list.add_task("Read a book"))
    print(f"Current tasks: {todo_list.get_tasks()}")
    print(todo_list.remove_task("Buy groceries"))
    print(f"Current tasks: {todo_list.get_tasks()}")


if __name__ == "__main__":
    main()
