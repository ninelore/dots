# Copies repo config files into the system

oh-my-posh init nu --config './nushell/robbyrussell.omp.json'

cp ./nushell/src/env.nu $nu.env-path
cp ./nushell/src/config.nu $nu.config-path
