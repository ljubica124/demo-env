package Spotter
 
 
SpotterPolicy[result] {
    some i
    task := input.tasks[i]
    task.task_args["cisco.ios.ios_config"].lines
        
    result := {
        "correlation_id": task.task_id,
        "check_type": "TASK",
        "subcode": "OpenEndedTask",
        "message": "Open ended Ansible Task found in Play."
    }
}
 