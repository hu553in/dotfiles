# ...other values...

function clear_docker
  docker stop $(docker ps -aq)
  docker system prune -a
  docker network prune
  docker rm $(docker ps -aq)
  docker volume prune -a
end

function cdx
  npm i -g @openai/codex@latest
  codex $argv
end

# ...other values...
