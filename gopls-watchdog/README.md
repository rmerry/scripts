# gopls Systemd Watchdog

When working on a large Go monorepo (~40GB), `gopls` would slowly consume all my system memory leading to my remote machine
freezing up and my SSH connection being lost. To remedy this I created a very primitive Systemd watchdog to 
kill `gopls` whenever its memory usage exceeded 50%.

This was using `gopls` version `0.4.4`.
