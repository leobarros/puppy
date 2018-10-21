$packages = ['vim', 'strace', 'curl', 'lynx', 'epel-relase']

package { $packages:
  ensure => installed,
}
