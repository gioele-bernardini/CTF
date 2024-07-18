import subprocess

def get_file_version(hash, filename):
    try:
        version = subprocess.check_output(['git', 'show', f'{hash}:{filename}']).decode('utf-8')
        return version
    except subprocess.CalledProcessError:
        return None

def main():
    log = subprocess.check_output(['git', 'log', '--pretty=format:%H']).decode('utf-8').split('\n')
    filename = input("Inserisci il nome del file: ")

    for commit_hash in log:
        version = get_file_version(commit_hash, filename)
        if version:
            print(f'Commit: {commit_hash}')
            print(f'Versione del file {filename}:\n{version}\n')

if __name__ == "__main__":
    main()
