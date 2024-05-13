provider "jenkins" {
  server_url = "http://172.31.14.105:8080"
  username = data.aws_ssm_parameter.jenkins_user.value
  password =  data.aws_ssm_parameter.jenkins_password.value
}



data "aws_ssm_parameter" "jenkins_user" {
  name = "jenkins.user"
}

data "aws_ssm_parameter" "jenkins_password" {
  name = "jenkins.password"
}