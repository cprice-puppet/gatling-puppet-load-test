step "Configure epel" do
  tmp_module_dir = master.tmpdir('configure_epel')
  on(master, puppet('module', 'install', 'stahnma-epel', '--codedir', tmp_module_dir))
  on(master, puppet('apply', '-e', "'include epel'"))
end

step "Install jq" do
  install_package master, 'jq'
end