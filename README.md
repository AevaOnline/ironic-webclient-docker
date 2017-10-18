ironic-webclient-docker
===============

This is a Docker image which is nothing more than the basic ironic-webclient setup as described here:
https://github.com/openstack/ironic-webclient/tree/c938dc98170cce58fb153ef3f474f617e769d2a3

To download the image from the Docker index, run:

`docker pull devananda/ironic-webclient`

To run the webclient on port 8000, run:

`docker run -d -p 8000:8000 devananda/ironic-webclient`
