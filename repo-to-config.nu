# Copies repo config files into the system

oh-my-posh init nu --config './nushell/robbyrussell.omp.json'

cp -u ./nushell/src/env.nu $nu.env-path
cp -u ./nushell/src/config.nu $nu.config-path
