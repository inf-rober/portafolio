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
    counter_mo = 0
    while True:
        if counter_mo == 0:
            menu_option = int(input("\tIngresa el módulo (número) que quieres ver: ")) # Con tabulación
            counter_mo += 1
        else:
            menu_option = int(input("\nIngresa el módulo (número) que quieres ver: ")) # Sin tabulación 
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
            """ Este fragmento de código condiciona la ejecución del programa según la entrada de usuario """ # Comentario de documentación
            keep = input("¿Quiéres seguir analizando otros módulos? ")
            if keep == "si" or keep == "Si" or keep == "s" or keep == "y":
                continue
            else:
                print(
                    """
                        +-------------------------------------------------+ 
                        |     Gracias por utilizar el ADM de Python 3     | 
                        +-------------------------------------------------+ 
                    """
                )
                break
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
            keep = input("¿Quiéres seguir analizando otros módulos? ")
            if keep == "si" or keep == "Si" or keep == "s" or keep == "y":
                continue
            else:
                print(
                    """
                        +-------------------------------------------------+ 
                        |     Gracias por utilizar el ADM de Python 3     | 
                        +-------------------------------------------------+ 
                    """
                )
                break
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
            keep = input("¿Quiéres seguir analizando otros módulos? ")
            if keep == "si" or keep == "Si" or keep == "s" or keep == "y":
                continue
            else:
                print(
                    """
                        +-------------------------------------------------+ 
                        |     Gracias por utilizar el ADM de Python 3     | 
                        +-------------------------------------------------+ 
                    """
                )
                break
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
            keep = input("¿Quiéres seguir analizando otros módulos? ")
            if keep == "si" or keep == "Si" or keep == "s" or keep == "y":
                continue
            else:
                break
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
            keep = input("¿Quiéres seguir analizando otros módulos? ")
            if keep == "si" or keep == "Si" or keep == "s" or keep == "y":
                continue
            else:
                print(
                    """
                        +-------------------------------------------------+ 
                        |     Gracias por utilizar el ADM de Python 3     | 
                        +-------------------------------------------------+ 
                    """
                )
                break
except ValueError as e:
    print("\tHa ocurrido un error ---> ", e)








