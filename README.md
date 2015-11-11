# docker-browsermob
BrowserMob Proxy 2.1 in Docker
==========================

This is a simple docker image with browsermob-proxy-2.1 version.

By default, it will load BrowserMob-Proxy on port 8080, and start a proxy listener on port 8019.

Usage
-----

    $ docker run -p 8080:8080 -p 8019:8019 sahajamit/docker-browsermob
