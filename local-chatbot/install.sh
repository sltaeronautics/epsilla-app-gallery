#!/usr/bin/env bash

pyenv local 3.11.4
python -m venv myenv
source myenv/bin/activate
pip install -r requirements.txt

pip install llm

llm install llm-gpt4all

llm -m llama-2-7b-chat "In one sentence, explain what is Large Language Model."

sudo docker pull epsilla/vectordb
sudo docker run --pull=always -d -p 8888:8888 epsilla/vectordb
