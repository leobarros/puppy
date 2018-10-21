$packages = ['vim', 'strace', 'curl', 'lynx', 'epel-release']

package { $packages:
  ensure => installed,
}
