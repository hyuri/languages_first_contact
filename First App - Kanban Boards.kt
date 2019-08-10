// Kanban boards app
// 
// Author: Hyuri Pimentel
//------------------------------------------------
// ** TODO ** (Getting into project management)
/*
class Project() {
    //

    team = []
}

// User
class Person(user_name: String, , user_tasks: mutableListOf)

//prototype_house = Project()
//hyuri = Person()
//prototype_house.team.project_manager = hyuri
*/

// ** TODO **
// Refactor to use sqlite3

//------------------------------------------------

//------------------------------------------------
// Crude aliasing of the "println" function to "print"
fun print(printable: String) {
    println(printable)
}

//------------------------------------------------
// Classes

// Enums
enum class Priority {
    LOW,
    NORMAL,
    HIGH,
    CRITICAL
}

enum class Sorting {
    DUE_DATE,
    PRIORITY,
    DATE_ADDED,
    FREE,
    NAME,
    RESPONSIBLE
}

// Tasks Manager
class TasksManager() {
    var id_counter = 0
    var tasks = mutableListOf<Task>()

    fun add_task(name: String, description: String, priority: Priority = Priority.NORMAL, list: ) {
        var new_task = Task(name, description, priority, list)
        if list
        {
            list.tasks.add(new_task)
        }
}

var tasks_manager = TasksManager()

// Task
// Note: "ID" and "responsible" are not currently being used anywhere.
// I'm just laying the ground for a more robust design to be developed
class Task(name: String, description: String, list_name: List, priority: Priority = Priority.NORMAL) {
    val ID = tasks_manager.id_counter++
    var name = name
    var description = description
    var priority = priority
    var due_date = due_date
    
    // R.A.(C.)I. | Alt. naming idea (Hyuri): E.S.F(Executor; Supervisor; Follower) | (Empty by default)
    //var responsible = responsible
    //var accountable = accountable //Same as responsible if not given
    //var following = following //aka "informed" -- List of people to be informed of changes

    // Boards and Lists
    // TODO: change to lists_IDs and attach IDs instead.
    // Should be able to add/associate tasks to multiple lists, in multiple boards
    var list_name = list_name
}

// Lists Manager
class ListsManager() {
    var id_counter = 0
    var lists = mutableListOf<List>()
}

var lists_manager = ListsManager()

// Lists
class List(name: String) {
    var ID = lists_manager.id_counter++
    var name = name
    var tasks = mutableListOf<Task>()
    
    //
    fun add_task(name: String, description: String, priority: Priority = Priority.NORMAL) {
        var new_task = Task(name, description, this, priority)
        this.tasks.add(new_task)
    }
}

// Board | Accepts an arbitrary number of lists
class Board(vararg lists_names: String) {
    var lists = mutableMapOf<String, List>()
    init {
        for (name in lists_names) {
            this.lists[name] = List(name)
        }
    }
    
    fun add_list(list: List) {
        this.lists[list.name] = list
    }
    
    //fun create_list(name: String) {
    //
    //}

    fun draw(sorting: Sorting = Sorting.PRIORITY) {
        // Running through all the lists
        for (item in this.lists) {
            print(item.key)
        
            // Running through the tasks in each list
            for (task in item.value.tasks.sortedByDescending{it.priority}) {
                print("- ${task.name} | ${task.description} | Priority: [${task.priority}]")
            }
        }
    }
}

//------------------------------------------------
// Main
fun main() {
    // Creating a Board with three lists
    var board = Board("TODO", "DOING", "DONE")
    
    // Assigning the Board's lists to individual variables, for easier access
    var todo = board.lists["TODO"]
    var doing = board.lists["DOING"]
    var done = board.lists["DONE"]
    
    // Adding a bunch of tasks
    val priorities = listOf(Priority.LOW, Priority.NORMAL, Priority.HIGH)
    for (i in 1..3) {
        todo!!.add_task(name = "Test " + i, description = "Blank task, for testing.", priority = priorities[i - 1])
    }
    
    board.draw()
}