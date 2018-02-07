for f in tracker-extract.desktop tracker-miner-apps.desktop tracker-miner-fs.desktop tracker-miner-user-guides.desktop tracker-store.desktop; do
    fn=/etc/xdg/autostart/$f
    __line ${fn}-remove --file $fn --regex 'X-GNOME-Autostart-enabled=true'  --state absent
    require="__line/${fn}-remove" __line ${fn}-add --file $fn --line 'X-GNOME-Autostart-enabled=false'
done
