__line etc-resolv-remove-search --file /etc/resolv.conf --regex '^search'  --state absent
require="__line/etc-resolv-remove-search" __line etc-resolv-add-search --file /etc/resolv.conf --line 'search bath.ac.uk test.bath.ac.uk campus.bath.ac.uk mesarhameed.info'
