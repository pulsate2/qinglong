from ghcr.io/red3aaa/qld@sha256:d783f84cc41dc41e15c44d5a9e63384fcde3d3c1f74e73b40be9606f8ffa1cfc
user root
run pip install playwright
run apt-get install sudo
run sudo playwright install-deps
copy nginx.conf /etc/nginx/conf.d/hug.conf
copy sync_data.sh sync_data.sh
run chmod 777  sync_data.sh
USER user
run playwright install
