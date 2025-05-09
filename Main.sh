#!/bin/bash

# Función para mostrar el submenú
mostrar_submenu() {
    local archivo="$1"
    clear
    echo "=================================="
    echo " Bienvenido a la sección: Almacenamiento de Información"
    echo " Metodología seleccionada: ${archivo%.inf}"
    echo " Archivo: $archivo"
    echo "=================================="

    while true; do
        echo ""
        echo "Seleccione una opción:"
        echo "1. Agregar información"
        echo "2. Buscar"
        echo "3. Eliminar información"
        echo "4. Leer base de información"
        echo "5. Volver al menú anterior"
        echo "6. Salir"
        read -rp "Opción: " opcion

        case $opcion in
            1)
                read -rp "Ingrese el concepto (sin corchetes): " concepto
                read -rp "Ingrese la definición: " definicion
                echo "[$concepto] .- $definicion" >> "$archivo"
                echo "Información agregada correctamente."
                ;;
            4)
                echo "Mostrar contenido base de información:"
                if [ -s "$archivo" ]; then
                    cat "$archivo"
                else
                    echo "(Archivo vacío)"
                fi
                ;;
            5)  
                echo "Volviendo al menu....."
                break
                ;;
            6)
                echo "Saliendo del programa."
                exit 0
                ;;
            *)
                echo "Opción inválida. Intente de nuevo."
                ;;
        esac
    done
}

# Función para mostrar menú de metodologías ágiles
menu_agiles() {
    echo "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:"
    echo "1. SCRUM"
    echo "2. XP (Programación Extrema)"
    echo "3. Kanban"
    echo "4. Crystal"
    read -rp "Opción: " opcion

    case $opcion in
        1) metodologia="SCRUM" ;;
        2) metodologia="XP" ;;
        3) metodologia="Kanban" ;;
        4) metodologia="Crystal" ;;
        *) echo "Opción inválida." ; exit 1 ;;
    esac

    archivo="${metodologia}.inf"
    if [[ ! -f "$archivo" ]]; then
        touch "$archivo"
        echo "Archivo $archivo creado."
    fi
    mostrar_submenu "$archivo"
}

# Función para mostrar menú de metodologías tradicionales
menu_tradicionales () {
    echo "Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:"
    echo "1. Cascada"
    echo "2. Modelo en V"
    echo "3. Espiral"
    read -rp "Opción: " opcion

    case $opcion in
        1) metodologia="Cascada" ;;
        2) metodologia="Modelo en V" ;;
        3) metodologia="Espiral" "meto/espiral.inf" ;;
        *) echo "Opción no válida." ; exit 1 ;;
    esac

    archivo="${metodologia}.inf"
    if [[ ! -f "$archivo" ]]; then
        touch "$archivo"
        echo "Archivo $archivo creado."
    fi
    mostrar_submenu "$archivo"
}

main() {
    arg="$1"

    if [ -z "$arg" ]; then
        echo "Uso: $0 <-a|-t>"
        exit 1
    fi

    if [ "$arg" == "-a" ]; then
        menu_agiles

    elif [ "$arg" == "-t" ]; then
        menu_tradicionales
    
    else
        echo "Parámetro no válido. Usa: -a o -t"
        exit 1
    fi
}

# Programa principal: bucle para permitir volver al menú principal si se desea
while true; do
    main "$1"
    echo
    echo "¿Deseas realizar otra operación? (s/n)"
    read -p "Respuesta: " respuesta
    if [ "$respuesta" != "s" ]; then
        echo "Gracias por usar la aplicación. ¡Hasta luego!"
        break
    fi
done
