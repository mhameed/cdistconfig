export CDIST_ORDER_DEPENDENCY=on

__git /home/cs3mmh/vr/chatLogs --source git@git.mesarhameed.info:mhameed/chatLogs.git --owner cs3mmh --group cs3mmh
__cron chatlogs --user cs3mmh --minute 0 --command "/home/cs3mmh/vr/chatLogs/sync.sh >/dev/null 2>&1"

unset CDIST_ORDER_DEPENDENCY
