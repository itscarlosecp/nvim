wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh

bash ./Anaconda3-2020.11-Linux-x86_64.sh

git clone https://github.com/chdoig/conda-auto-env.git

mv conda-auto-env ~/.conda/

echo -e '\n\nsource ~/.conda/conda-auto-env/conda_auto_env.sh' >> ~/.zshrc
