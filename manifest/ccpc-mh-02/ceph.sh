export CDIST_ORDER_DEPENDENCY=on

__package ceph
__directory /etc/ceph --mode 0600 --owner root
__file /etc/ceph/ceph.conf --source $__files/ceph/ceph.conf --owner root --mode 0600
__file /etc/ceph/rbdmap --source $__files/ceph/rbdmap --owner root --mode 0600
__encrypted_file /etc/ceph/ceph.keyring --source $__files/ceph/ceph.keyring.gpg --owner root --mode 0600 --cksum '3327662192 152'

unset CDIST_ORDER_DEPENDENCY
