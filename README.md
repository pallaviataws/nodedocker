https://gist.github.com/remarkablemark/aacf14c29b3f01d6900d13137b21db3a

https://seanmcgary.com/posts/deploying-a-nodejs-application-using-docker

for git push automatic
https://stackoverflow.com/questions/8588768/git-push-username-password-how-to-avoid

delete all containers and images
#!/bin/bash
# Delete all containers
docker rm $(docker ps -a -q)  
or sudo docker rm $(sudo docker ps -a -q)
# Delete all images
docker rmi $(docker images -q)
or
sudo docker rmi $(sudo docker images -q)

to see all containers
sudo docker ps -a
sudo docker stop container_id

https://stackoverflow.com/questions/8588768/git-push-username-password-how-to-avoid

https://nodejs.org/en/docs/guides/nodejs-docker-webapp/