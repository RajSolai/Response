#!/usr/bin/env python3

from os import path, environ
import subprocess

prefix = environ.get('MESON_INSTALL_PREFIX', '/usr/local')
datadir = path.join(prefix, 'share')
schemadir = path.join(datadir, 'share', 'glib-2.0', 'schemas')
desktop_database_dir = path.join(datadir, 'applications')

if not environ.get('DESTDIR'):
    print('Updating desktop database…')
    subprocess.call(['update-desktop-database', '-q', desktop_database_dir])
    print('Updating icon cache…')
    subprocess.call(['gtk-update-icon-cache', '-qtf', path.join(datadir, 'icons', 'hicolor')])
