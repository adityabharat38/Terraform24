# for maintaining all resources 

resource "docker_image" "my-nginx-image" {
	#name = "nginx:latest"
# if want to use node app we can use this and then directly use trraform apply and new container will be created .expose port 8000 on ec2 and app is depeloyd
	name = "aditya807/node-app-test-new"
	keep_locally = false
	}

# 
resource "docker_container" "my-nginx-container" {
	name = "nginx-automated"
	image = docker_image.my-nginx-image.name
	ports {
		internal = 8000
		external = 8000
		}
	}
