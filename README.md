https://gist.github.com/remarkablemark/aacf14c29b3f01d6900d13137b21db3a

https://seanmcgary.com/posts/deploying-a-nodejs-application-using-docker

for git push automatic
https://stackoverflow.com/questions/8588768/git-push-username-password-how-to-avoid

delete all containers and images
#!/bin/bash
# Delete all containers
docker rm $(docker ps -a -q)
# Delete all images
docker rmi $(docker images -q)