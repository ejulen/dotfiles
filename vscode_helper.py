import argparse
import os
import subprocess

def freeze(_args):
    subprocess.check_call(['code', '--list-extensions'])

def unfreeze(args):
    extensions = args.file.read().split('\n')
    for extension in extensions:
        if not extension.strip():
            continue
        subprocess.check_call(['code', '--install-extension', extension])


def create_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser()
    subparsers = parser.add_subparsers(title='subcommands')

    freeze_parser = subparsers.add_parser('freeze', help='freezes installed'
        ' Code extensions')
    freeze_parser.set_defaults(func=freeze)

    unfreeze_parser = subparsers.add_parser('unfreeze', help='installs frozen'
        ' Code extensions')
    unfreeze_parser.add_argument('-f', '--file', type=argparse.FileType('r'),
        default=os.path.join(os.path.dirname(__file__), 'code-exts.txt'))
    unfreeze_parser.set_defaults(func=unfreeze)

    return parser

def main():
    parser = create_parser()
    args = parser.parse_args()
    args.func(args)

if __name__ == '__main__':
    main()
