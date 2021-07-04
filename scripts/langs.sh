# GCC
if ! gcc_loc="$(type -p "gcc")" || [[ -z "gcc_loc" ]]; then 
	echo " ➜ Installing GCC... ⚙️"
	sudo apt install build-essential -y
else
	echo " ➜ GCC is already installed"
fi

# Golang
if ! golang_loc="$(type -p "golang")" || [[ -z "golang_loc" ]]; then 
	echo " ➜ Installing Golang... 🐹"
	sudo add-apt-repository ppa:longsleep/golang-backports -y
	sudo apt update
	sudo apt install golang-go -y
else
	echo " ➜ Golang is already installed"
fi

# Rust
if ! rustc_loc="$(type -p "rustc")" || [[ -z "rustc_loc" ]]; then 
	echo " ➜ Installing Rust... 🦀"
	sudo apt install rustc -y
else
	echo " ➜ Rust is already installed"
fi
