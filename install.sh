post_install() {
	DISCOVERY_HOST="yaci.yard.s:4441"
	HOST=`hostname`
	sed -i "s/%HOST%/$HOST/" /etc/conf.d/etcd-heaverd-ng{,-discovery}
	sed -i "s/%DISCOVERY_HOST%/$DISCOVERY_HOST/" /etc/conf.d/etcd-heaverd-ng
}


pre_remove() {
	echo "systemctl stop etcd-heaverd-ng-discovery"
	systemctl stop etcd-heaverd-ng-discovery
	echo "systemctl stop etcd-heaverd-ng"
	systemctl stop etcd-heaverd-ng
}

post_remove() {
	echo "rm -r /var/lib/etcd/heaverd-ng-discovery-service"
	rm -r /var/lib/etcd/heaverd-ng-discovery-service
	echo "rm -r /var/lib/etcd/heaverd-ng"
	rm -r /var/lib/etcd/heaverd-ng
}
