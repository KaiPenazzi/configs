# /bin/bash

docker run -d --device /dev/kfd --device /dev/dri -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama:rocm
docker exec -it ollama ollama pull pshohel/kimi-k2.5:latest

