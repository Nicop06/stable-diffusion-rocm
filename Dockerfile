FROM rocm/dev-ubuntu-22.04:6.0.2

ENV HOME /root

RUN apt-get update && apt-get install -y git && rm -rf /var/list/apt/lists/*
RUN --mount=type=cache,target=/root/.cache/pip pip install --force torch torchvision --index-url https://download.pytorch.org/whl/nightly/rocm6.0

WORKDIR $HOME
RUN git clone --branch v1.9.0 https://github.com/AUTOMATIC1111/stable-diffusion-webui

WORKDIR $HOME/stable-diffusion-webui
RUN python3 launch.py --skip-torch-cuda-test --exit

CMD python3 -u launch.py --no-half
