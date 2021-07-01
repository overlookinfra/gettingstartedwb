plan boltshop::timesync(
  TargetSpec $nodes,
) {
  $result = run_task('boltshop::timesync', $nodes, restart => false)
  return($result)
  run_task('service::windows', $nodes, name => 'W32Time', action => 'restart')
}

