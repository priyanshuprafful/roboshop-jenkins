variable "folders" {
  default = ["Infra" , "CI-Pipeline"]
}

variable "jobs" {
  default = [
    { name = "roboshop" , folder = "Infra" , repo_url = "https://github.com/priyanshuprafful/roboshop-infra"},
    { name = "frontend" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/frontend"},
    { name = "catalogue" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/catalogue"},
    { name = "payment" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/payment"},
    { name = "shipping" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/shipping"},
    { name = "user" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/user"},
    { name = "cart" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/cart"}
  ]

}