<todo>

    <h1>todos</h1>

    <input id="new-task" type="text" keypress={addTask} placeholder="What needs to be done?" />
                            <!-- creates a foreach and goes through the tasks 
                                array -->
    <ul id="task-list" each={task in tasks}>
        <li>{task} <span click={deleteTask}>x</span></li>
    </ul>

    <style>

        #task-list {
            background-color: whitesmoke;
            border-bottom: 1px solid grey;
            /* list-style-type: none; */
            /* padding: 10px; */
        }
        #task-list span {
            color: red;
            /* border: 1px solid black;
            border-radius: 25%;
            width: 20px;
            height: 20px; */
        }
    
    </style>

    <script>
    
        // Create an empty array
        this.tasks = [];
        
        this.deleteTask = (clickEvent) => {

            // The item property attached to the event indicates
            // which element in the array was acted upon.
            const taskToRemove = clickEvent.item.task;

            // Determine its index in the array
            let position = this.tasks.indexOf(taskToRemove);

            // Remove 1 element using that index from the array
            this.tasks.splice(position,1);
        }

        this.addTask = (keyPressEvent) => {

            // Only add the task if the user presses enter
            if (keyPressEvent.key === "Enter") {

                // Find the textbox where they typed the task
                let textbox = document.querySelector('#new-task');

                // Add the value in the textbox to our "tasks" array via push
                this.tasks.push(textbox.value);

                // Set the value inside the textbox to empty string
                textbox.value = "";
            }
        }

    </script>

</todo>