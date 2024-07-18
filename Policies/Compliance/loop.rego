package Spotter
 
 
SpotterPolicy[result] {
    some i
    task := input.tasks[i]
    task.task_args["ansible.builtin.dnf"]
    task.task_args["loop"]
        
    result := {
        "correlation_id": task.task_id,
        "check_type": "TASK",
        "subcode": "PackageManagerInLoop",
        "message": "Updating multiple packages with loop statement instead listing all in packages."
    }
}
 