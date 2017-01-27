# chromium-pulseaudio

Chromium browser Docker image based on Debian Jessie with sound via the host's pulseaudio daemon. One could use the following parameters in order to get sound from the Chromium container. Tested with pulseaudio 8.0 on Ubuntu 16.04.1.
```
xhost +local:
docker run \
        --privileged \
        --rm \
        -it \
        --shm-size=256m \
        -e DISPLAY=unix$DISPLAY \
        -e TARGETUID=$UID \
        -e XDG_RUNTIME_DIR=/run/user/$UID \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v /run/user/$UID/pulse:/run/user/$UID/pulse \
        -v /etc/machine-id:/etc/machine-id \
        -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
        -v /var/lib/dbus:/var/lib/dbus \
        -v /tmp:/tmp \
        -v ~/.config/pulse:/home/chromium/.config/pulse \
        -v <your-persistent-data-dir>:/data \
        urgemerge/chromium-pulseaudio:latest
```
