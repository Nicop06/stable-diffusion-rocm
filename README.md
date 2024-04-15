# Docker image for ROCm stable diffusion WebUI

This docker image contains all the dependencies needed to run the [stable diffusion WebUI](https://github.com/AUTOMATIC1111/stable-diffusion-webui) on AMD GPU.

This includes the ROCm libraries, the pytorch version as well as a docker compose file to build and start the image.

Make sure that you have docker compose installed. You can then run the UI with:

```
docker compose up
```

Then, navigate to <http://127.0.0.1:7860> to use the UI.
