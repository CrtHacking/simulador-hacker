#!/bin/bash

# Colores
green="\e[32m"
red="\e[31m"
yellow="\e[33m"
blue="\e[34m"
purple="\e[35m"
cyan="\e[36m"
reset="\e[0m"

# Iconos
escaner="🔎"
diccionario="📖"
exploit="💥"
privilegios="⬆️"
ocultar="🕵️"
info="ℹ️"
ddos="💣"
keylogger="🔑"
phishing="🎣"
wifi="📡"
malware="🦠"
sql="💉"
social="👤"
cifrado="🔐"

# Variables globales
usuario_actual=""

# Función para mostrar el menú de inicio de sesión
mostrar_login() {
  clear
  echo -e "${green}Simulador de Hacking para WSL${reset}"
  echo "----------------------------------"
  echo ""
  read -p "Nombre de usuario: " usuario
  read -sp "Contraseña: " contrasena
  echo ""

  # Simulación de verificación de credenciales (siempre será exitoso)
  sleep 1
  echo -e "${green}Inicio de sesión exitoso.${reset}"
  usuario_actual=$usuario
  sleep 1
}

# Función para mostrar el menú principal
mostrar_menu() {
  clear
  echo -e "${green}Simulador de Hacking para WSL${reset}"
  echo "----------------------------------"
  echo "Usuario actual: ${cyan}$usuario_actual${reset}"
  echo "-------------------"
  echo "1.  ${escaner} Escanear puertos"
  echo "2.  ${diccionario} Ataque de diccionario"
  echo "3.  ${exploit} Explotar vulnerabilidad"
  echo "4.  ${privilegios} Escalar privilegios"
  echo "5.  ${ocultar} Ocultar rastro"
  echo "6.  ${info} Obtener información del sistema"
  echo "7.  ${ddos} Ataque DDoS"
  echo "8.  ${keylogger} Instalar keylogger"
  echo "9.  ${phishing} Crear página de phishing"
  echo "10. ${wifi} Hackear red WiFi"
  echo "11. ${malware} Crear malware"
  echo "12. ${sql} Inyección SQL"
  echo "13. ${social} Ingeniería social"
  echo "14. ${cifrado} Cifrar archivos"
  echo "0.  Salir"
  echo "-------------------"
}

# Importa las funciones de simulación
source funciones_hacking.sh

# Función para ejecutar la acción seleccionada
ejecutar_accion() {
  case $1 in
    1)  escanear_puertos ;;
    2)  ataque_diccionario ;;
    3)  explotar_vulnerabilidad ;;
    4)  escalar_privilegios ;;
    5)  ocultar_rastro ;;
    6)  obtener_info_sistema ;;
    7)  ataque_ddos ;;
    8)  instalar_keylogger ;;
    9)  crear_pagina_phishing ;;
    10) hackear_wifi ;;
    11) crear_malware ;;
    12) inyeccion_sql ;;
    13) ingenieria_social ;;
    14) cifrar_archivos ;;
    0)  echo -e "${red}Saliendo del simulador...${reset}" ;;
    *)  echo -e "${red}Opción inválida.${reset}" ;;
  esac
}


# Bucle principal

mostrar_login

while true; do
  mostrar_menu
  read -p "Selecciona una opción: " opcion

  if [[ $opcion == 0 ]]; then
    break
  fi

  ejecutar_accion $opcion
  read -p "Presiona Enter para continuar..."
done
