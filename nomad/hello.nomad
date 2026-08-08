job "hello-devops" {
  datacenters = ["dc1"]
  type        = "service" 

  group "hello-group" {
    task "hello-task" {
      driver = "docker" 

      config {
        image   = "hello-devops:latest" 
      }
      
      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}