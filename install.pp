$packages = ['vim', 'strace', 'curl', 'lynx']

package { $packages:
  ensure => installed,
}
