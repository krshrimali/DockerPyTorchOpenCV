# Docker-PyTorch-OpenCV

Dockerfile for an Image installed with OpenCV and Pytorch for a hassle-free development environment.

Steps to Build the Image from the *Dockerfile* :

* Clone or download the repository on your local machine: `git clone https://github.com/BuffetCodes/DockerPyTorchOpenCV.git`
* Navigate to the cloned repo using: `cd DockerPyTorchOpenCV`
* Build the image using: `sudo docker build . `(*do not forget the period after build !*)
* Once the image has been created, run it using: `sudo docker run -it --rm <image_ID> `
* The command line interface of the container can then be used for working on OpenCV and Pytorch related projects.

*__Note:__* The image can directly be downloaded from dockerhub using ` sudo docker pull himanshus16100/cv_pytorch `. The final image size is **2.78 GB**.
