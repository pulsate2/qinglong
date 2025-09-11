from ghcr.io/red3aaa/qld@sha256:d783f84cc41dc41e15c44d5a9e63384fcde3d3c1f74e73b40be9606f8ffa1cfc
user root
run pip install playwright
run apt-get install sudo
run sudo playwright install-deps
run sudo apt install chromium -y
run sudo apt install -y \
    xvfb \
    x11-utils \
    x11-xserver-utils \
    libx11-dev \
    libxext6 \
    libxrender1 \
    libxtst6 \
    libxi6 \
    libxrandr2 \
    libasound2 \
    libpangocairo-1.0-0 \
    libatk1.0-0 \
    libcairo-gobject2 \
    libgtk-3-0 \
    libgdk-pixbuf2.0-0
copy nginx.conf /etc/nginx/conf.d/hug.conf
copy sync_data.sh sync_data.sh
run chmod 777  sync_data.sh

run mkdir /web
copy index.html /web/index.html
run chmod 777 /web/index.html

USER user
run playwright install

