variable "folders" {
  default = ["Infra"]
}

variable "jobs" {
  default = [
    { name = "roboshop" , folder = "Infra" , repo_url = "https://github.com/priyanshuprafful/roboshop-infra"}
  ]

}