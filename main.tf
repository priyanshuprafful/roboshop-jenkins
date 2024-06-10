resource "jenkins_folder" "folders" {
  count = length(var.folders)
  name = element(var.folders, count.index)
}

resource "jenkins_job" "s-job" { // single branch pipeline
  depends_on = [jenkins_folder.folders]

  count = length(var.s-jobs)
  name     = lookup(element(var.s-jobs, count.index) , "name" , null )
  folder   = "/job/${lookup(element(var.s-jobs, count.index) , "folder" , null )}"
  template = templatefile("${path.module}/sb-job.xml", {
    repo_url = lookup(element(var.s-jobs, count.index) , "repo_url" , null )
    name = lookup(element(var.s-jobs, count.index) , "name" , null )
    filename = lookup(element(var.s-jobs, count.index) , "filename" , null )
  })

  lifecycle {
    ignore_changes = [template]
  }
}

resource "jenkins_job" "m-job" { // multi -branch pipeline
  depends_on = [jenkins_folder.folders]

  count = length(var.m-jobs)
  name     = lookup(element(var.m-jobs, count.index) , "name" , null )
  folder   = "/job/${lookup(element(var.m-jobs, count.index) , "folder" , null )}"
  template = templatefile("${path.module}/mb-job.xml", {
    repo_url = lookup(element(var.m-jobs, count.index) , "repo_url" , null )
    name = lookup(element(var.m-jobs, count.index) , "name" , null )
  })

  lifecycle {
    ignore_changes = [template]
  }
}

data "aws_instance" "jenkins" {
  instance_id = "i-010104c711bf4e8e5"
}

resource "aws_route53_record" "www" {
  zone_id = "Z07013421USQO5ED15QGP" //  "Z05260162XS3U1UPP64CC"
  name    = "jenkins.saraldevops.site"
  type    = "A"
  ttl     = 30
  records = [data.aws_instance.jenkins.public_ip]
}

