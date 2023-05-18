# entrypoint.sh

useradd -s /bin/bash -m ${USER_NAME}
export HOME=/home/${USER_NAME}
usermod -aG wheel ${USER_NAME}