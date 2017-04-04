# docker-example
An example Docker image creation from scratch.

### Install Docker Machine

Follow the procedure [here](https://docs.docker.com/machine/install-machine/) to install docker-machine. Machine let's you start virtual hosts using virtual-box (in our case) and run docker on it.

Note: you can run the following natively too. I'm using a virtual host to keep the dev env isolated.

Get some help using :

```sh
$ docker-machine --help
```

### Create a VM (dev) running boot2docker

Let's create a machine (virtual host). Ensure virtual-box is installed and running on your local machine.

```sh
$ docker-machine create --driver virtualbox dev

$ docker-machine env dev (shows the new VM env configuration)

# Copy the project's Dockerfile | package.json | server.js files into the VM.

$ docker-machine scp -r . dev:/home/docker/

$ docker-machine ssh dev (to login into the new VM)

(optional)

$ docker-machine start dev (start the VM)

$ docker-machine stop dev (stop the VM)

$ docker-machine ls (show list of VMs)

$ docker-machine kill dev (kill the VM)

$ docker-machine rm dev (to remove the VM completely)
```

### Getting Started

Once you have ssh into `dev` VM which is a boot2docker image. You should see that `docker` is pre-installed on it. You are ready to start off.

```sh

$ docker build -t ksck23/node .

$ docker run -it --rm --name app ksck23/node
```
