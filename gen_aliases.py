import os
"""
gen.py
Script to generate bash aliases for all mac applications in /Applications
"""
apps = [p for p in os.listdir('/Applications') if p.endswith('.app')]

def get_aliases(apps=apps):
    name = lambda app: app.split('.', 1)[0].lower().replace(' ', '')
    return {name(app) : app for app in apps}

def main():
    print '{0} # generated by gen_aliases.py{0} '.format('\n'+'#'+'-'*5+'\n')

    for alias, app in get_aliases().items():
        print "alias {}='open /Applications/{}'".format(alias, app.replace(' ','\ '))

if __name__ == '__main__':
    main()
