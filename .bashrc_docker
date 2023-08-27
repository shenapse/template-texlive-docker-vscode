if [ -z "$IMAGE_NAME" ]; then
  IMAGE_NAME="Docker_image"
fi

if [ -z "$IMAGE_TAG" ]; then
  IMAGE_TAG="?"
fi

# Enable color support in shell
export TERM=xterm-256color
export LS_COLORS="di=1;34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=1;34:ow=1;34"
PS1="\[\e[1;32m\]\u@${IMAGE_NAME}:${IMAGE_TAG}:\[\e[34m\]\w\[\e[0m\]\$ "