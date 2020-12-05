import os


def init():
    browser = input('Install Google Chrome Dev? (Y/n): ')
    conda = input('Install Anaconda Python Distribution? (Y/n): ')
    return (True if browser != 'n' else False, True if conda != 'n' else False)


if __name__ == '__main__':
    browser, conda = init() 
    print(browser, conda)
