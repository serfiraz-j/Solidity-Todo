// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TodoList{

    struct Todo {
        string text;        //create struct for tasks
        bool completed;
    }

    Todo[] public todos;    //keep all tasks in an array

    function create(string calldata _text) external{    
        todos.push(Todo({
            text: _text,         //update task to todos array
            completed: false
        }));
    }

    function updateText(uint _index,string calldata _text) external{
        todos[_index].text = _text;                     //update task
    }

    function get(uint _index) external view returns(string memory,bool){
        Todo memory todo = todos[_index];
        return (todo.text,todo.completed);               //get task       
    }

    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed; //mark as complete

    }
}
