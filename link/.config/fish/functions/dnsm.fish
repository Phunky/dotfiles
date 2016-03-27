function dnsm
  # Restart DNSmasq osx
  command sudo launchctl stop homebrew.mxcl.dnsmasq
  command sudo launchctl start homebrew.mxcl.dnsmasq
end
