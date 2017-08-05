export CDIST_ORDER_DEPENDENCY=on

__package ceph
__directory /etc/ceph
__file /etc/ceph/ceph.conf --source $__files/ceph/ceph.conf
__file /etc/ceph/rbdmap --source $__files/ceph/rbdmap
__encrypted_file /etc/ceph/ceph.keyring --source $__files/ceph/ceph.keyring.gpg --cksum '3327662192 152'

unset CDIST_ORDER_DEPENDENCY
