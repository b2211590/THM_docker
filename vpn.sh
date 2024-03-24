# configure TUN/TAP device for virtual handling of network communications
mkdir -p /dev/net && mknod /dev/net/tun c 10 200

# connect vpn
openvpn share/*.ovpn
