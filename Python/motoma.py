import datetime as dt
import time as tm
import random as rd
import os 
import platform

print(
    """
        +-----------------------------------+
        | Analizador de módulos de Python 3 |
        +-----------------------------------+
    """
)

# Implementación sencilla de interpolación de cadena (Fines ilustrativos) con secuencia de escape \t (tabulación)
print(
    """
        +-----------------+
        | Módulo datetime |
        +-----------------+
    """
)
counter = 0
chain = '<--------- Entity'
for entity in dir(dt):
    print(entity, '\t %s %d' % (chain, counter)) 
    counter += 1
print('\nEl módulo datetime tiene %d entidades.\n' % counter)

print(
    """
        +-------------+
        | Módulo time |
        +-------------+
    """
)
for entity in dir(tm):
    print(entity, '\t %s %d' % (chain, counter)) 
    counter += 1
print('\nEl módulo time tiene %d entidades.\n' % counter)

print(
    """
        +---------------+
        | Módulo random |
        +---------------+
    """
)
for entity in dir(rd):
    print(entity, '\t %s %d' % (chain, counter)) 
    counter += 1
print('\nEl módulo random tiene %d entidades.\n' % counter)

print(
    """
        +-----------+
        | Módulo os |
        +-----------+
    """
)
for entity in dir(os):
    print(entity, '\t %s %d' % (chain, counter)) 
    counter += 1
print('\nEl módulo os tiene %d entidades.\n' % counter)

print(
    """
        +-----------------+
        | Módulo platform |
        +-----------------+
    """
)
for entity in dir(os):
    print(entity, '\t %s %d' % (chain, counter)) 
    counter += 1
print('\nEl módulo platform tiene %d entidades.\n' % counter)