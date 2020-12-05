import subprocess


def select_install(prompt):
    return False if input(f'{prompt} [Y/n]: ') == 'n' else True


def init():
    browser = select_install('Install Google Chrome Dev?')
    kitty = select_install('Install Kitty Terminal Emulator?')
    conda = select_install('Install Anaconda Python Distribution?')
    return (browser, kitty, conda)


def run_commands(file):
    commands = open(file, 'r').read()
    for command in commands.split('\n\n'):
        subprocess.run(command.split())

    
def default_install():
    run_commands('./install.sh')


def chrome_install():
    run_commands('./scripts/chrome_install.sh')


def kitty_config():
    run_commands('./scripts/kitty_config.sh')


def anaconda_conda_install():
    run_commands('./scripts/anaconda_install.sh')


if __name__ == '__main__':
    browser, kitty, conda = init()
    # default_install()
    chrome_install() if browser else False
    kitty_config() if kitty else False 
    anaconda_conda_install() if conda else False    

