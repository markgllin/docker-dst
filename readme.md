# Don't Starve Together Docker Image
Docker image for starting a DST server. Dockerfile is created based on instructions outlined in https://forums.kleientertainment.com/forums/topic/64441-dedicated-server-quick-setup-guide-linux/

## Usage
1. Generate server config (step 3 from [here](https://forums.kleientertainment.com/forums/topic/64441-dedicated-server-quick-setup-guide-linux/))
2. Build image or pull from docker hub
    - `docker build . -t <image_name>` or
    - `docker pull markgllin/dst`
3. start the server
    - `docker run -p 10999:10999/udp -v </path/to/my/server/>:/root/.klei/DoNotStarveTogether/MyDediServer <image_name>`


## To Do
- allow for game configuration. Image is currently built using default server settings.
- automatic update of game and mods