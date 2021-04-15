import os
import json
from typing import List, Dict


def list_files(dir_path: str) -> List[str]:
    os.chdir(dir_path)
    return os.listdir()


def get_extensions():
    with open("./extensions.json") as f:
        return json.load(f)


# Evaluates File Types
def categorize(file: str, extensions: Dict[str, str]) -> Dict[str, str]:
    if os.path.isfile(file):
        file_lang = "".join(file.split(".")[1:])
        return {file: "file", "lang": extensions[file_lang]}
    elif os.path.isdir(file):
        return {file: "dir"}


# Creates File Register
def reg_types(files: List[str]):
    extensions = get_extensions()
    types = [categorize(file, extensions) for file in files]
    print(types)


def main(dev_dir_path: str):
    dir_path = os.path.expanduser(dev_dir_path)
    files = list_files(dir_path)
    reg_types(files)


if __name__ == "__main__":
    main("~/Code")
