function validate() {
    let input = document.getElementById("taskInput").value;

    if (input.trim() === "") {
        alert("Task cannot be empty!");
        return false;
    }
    return true;
}
