# Copies repo config files into the system

oh-my-posh init nu --config './nushell/robbyrussell.omp.json'

cp ./nushell/src/env.nu $nu.env-path
cp ./nushell/src/config.nu $nu.config-path

match (sys | get host | get name) { 
    "Windows" => {cp ./hyper/.hyper.js ([$env.APPDATA, "/Hyper/.hyper.js"] | str join)}, 
    "macOS" => {cp ./hyper/.hyper.js ~/Library/Application Support/Hyper/.hyper.js}, 
    _ => {cp ./hyper/.hyper.js ~/.config/Hyper/.hyper.js}
}