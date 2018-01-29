defaultgw1=$(ip r | egrep '^default via ' | head -n 1 | awk '{ print $3; }')
if ! echo "${defaultgw1}" | egrep '^[0-9\.]{7,}$' >/dev/null; then
	myprint "ERROR: Can't find default gateway."
	exit 1
fi

addroutetoserver()
{
	server1="$1"
	if ! ip route show | egrep "^${server1} via ${defaultgw1} dev" >/dev/null; then
		ip r a "${server1}/32" via "${defaultgw1}"
	fi
}
