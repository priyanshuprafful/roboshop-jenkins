variable "folders" {
  default = ["Infra" , "CI-Pipeline"]
}

variable "m-jobs" {
  default = [

    { name = "frontend" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/frontend"},
    { name = "catalogue" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/catalogue"},
    { name = "payment" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/payment"},
    { name = "shipping" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/shipping"},
    { name = "user" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/user"},
    { name = "cart" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/cart"},
    { name = "aws-ssm-param-store" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/aws-ssm-param-store"},
    { name = "schema-loader" , folder = "CI-Pipeline" , repo_url = "https://github.com/priyanshuprafful/schema-loader"}



  ]

}

variable "s-jobs" {
  default = [
    { name = "roboshop" , folder = "Infra" , repo_url = "https://github.com/priyanshuprafful/roboshop-infra" , filename = "Jenkinsfile"},
    { name = "App-Deployment" , folder = "Infra" , repo_url = "https://github.com/priyanshuprafful/roboshop-ansible" , filename = "Jenkinsfile-deployment"},
    { name = "Helm-Deployment" , folder = "Infra" , repo_url = "https://github.com/priyanshuprafful/roboshop-helm-chart" , filename = "Jenkinsfile"}]

}