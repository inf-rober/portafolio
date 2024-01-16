import datetime as dt
import time as tm
import random as rd
import os 
import platform

# Menú
print(
    """
        +-------------------------------------------------+ 
        | Bienvenido al analizador de módulos de Python 3 | 
        +-------------------------------------------------+ 
        | Estos son los módulos que puedes revisar:       | 
        |                                                 | 
        |   1. Datetime     ┌───────────────────────┐     | 
        |   2. Time         |  Para ver un módulo   |     | 
        |   3. Random       |  introduce su número  |     | 
        |   4. OS           |  correspondiente.     |     |                    
        |   5. Platform     └───────────────────────┘     | 
        |                                                 |                                                                        
        +-------------------------------------------------+ 
    """
)

try: 
    menu_option = int(input("\tIngresa el módulo (número) que quieres ver: "))
    if menu_option == 1:
        # Implementación sencilla de interpolación de cadena (fines ilustrativos) con secuencia de escape \t (tabulación)
        print(
            """
                \t+-----------------+
                \t| Módulo datetime |
                \t+-----------------+
            """
        )
        counter     = 0
        chain       = '<--------- Entidad N°'
        for entity in dir(dt):
            print(entity, "\r\t %s %d" % (chain, counter))
            counter += 1
        print('\nEl módulo datetime tiene %d entidades.\n' % counter)
    elif menu_option == 2:
        print(
            """
                \t+-------------+
                \t| Módulo time |
                \t+-------------+
            """
        )
        counter     = 0
        chain       = '<--------- Entidad N°'
        for entity in dir(tm):
            print(entity, '\r\t %s %d' % (chain, counter)) 
            counter += 1
        print('\nEl módulo time tiene %d entidades.\n' % counter)
    elif menu_option == 3:
        print(
        """
            \t+---------------+
            \t| Módulo random |
            \t+---------------+
        """
        )
        counter     = 0
        chain       = '<--------- Entidad N°'
        for entity in dir(rd):
            print(entity, '\r\t %s %d' % (chain, counter)) 
            counter += 1
        print('\nEl módulo random tiene %d entidades.\n' % counter)
    elif menu_option == 4:
        print(
            """
                \t+-----------+
                \t| Módulo OS |
                \t+-----------+
            """
        )
        counter     = 0
        chain       = '<--------- Entidad N°'
        for entity in dir(os):
            print(entity, '\r\t %s %d' % (chain, counter)) 
            counter += 1
        print('\nEl módulo os tiene %d entidades.\n' % counter)
    elif menu_option == 5:
        print(
            """
                \t+-----------------+
                \t| Módulo platform |
                \t+-----------------+
            """
        )
        counter     = 0
        chain       = '<--------- Entidad N°'
        for entity in dir(os):
            print(entity, '\r\t %s %d' % (chain, counter)) 
            counter += 1
        print('\nEl módulo platform tiene %d entidades.\n' % counter)
except ValueError as e:
    print("\tHa ocurrido un error ---> ", e)








