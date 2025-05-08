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
            
            5)
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



bash Proyecto_Primer_Parcial1.sh -a  # Para metodologías ágiles usar -a
