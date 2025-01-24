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

# Función para mostrar el menú
mostrar_menu() {
  echo -e "${cyan}Menú de opciones${reset}"
  echo "-------------------"
  echo "1. ${escaner} Escanear puertos"
  echo "2. ${diccionario} Ataque de diccionario"
  echo "3. ${exploit} Explotar vulnerabilidad"
  echo "4. ${privilegios} Escalar privilegios"
  echo "5. ${ocultar} Ocultar rastro"
  echo "0. Salir"
  echo "-------------------"
}

# Función para ejecutar la acción seleccionada
ejecutar_accion() {
  case $1 in
    1) escanear_puertos ;;
    2) ataque_diccionario ;;
    3) explotar_vulnerabilidad ;;
    4) escalar_privilegios ;;
    5) ocultar_rastro ;;
    0) echo -e "${red}Saliendo del simulador...${reset}" ;;
    *) echo -e "${red}Opción inválida.${reset}" ;;
  esac
}

# Funciones para simular las acciones de hacking
escanear_puertos() {
  echo -e "${green} ${escaner} Escaneando puertos...${reset}"
  echo ""
  # Simulación de escaneo de puertos
  for i in {1..10}; do
    puerto=$((RANDOM % 65535 + 1))
    estado=$((RANDOM % 2))
    if [[ $estado == 0 ]]; then
      echo -e "  ${yellow}Puerto $puerto:${reset} ${red}Cerrado${reset}"
    else
      echo -e "  ${yellow}Puerto $puerto:${reset} ${green}Abierto${reset}"
    fi
    sleep 0.1
  done
  echo ""
  echo -e "${green} ${escaner} Escaneo completado.${reset}"
}

ataque_diccionario() {
  echo -e "${yellow} ${diccionario} Realizando ataque de diccionario...${reset}"
  echo ""
  # Simulación de ataque de diccionario
  for i in {1..5}; do
    usuario=$(cat /usr/share/dict/words | shuf -n 1)
    contrasena=$(cat /usr/share/dict/words | shuf -n 1)
    echo -e "  Probando usuario: ${cyan}$usuario${reset} con contraseña: ${cyan}$contrasena${reset}"
    sleep 0.2
  done
  echo ""
  echo -e "${red} ${diccionario} Ataque fallido.${reset}"
}

explotar_vulnerabilidad() {
  echo -e "${red} ${exploit} Explotando vulnerabilidad...${reset}"
  echo ""
  sleep 1
  echo -e "${red} ${exploit} Vulnerabilidad explotada con éxito.${reset}"
}

escalar_privilegios() {
  echo -e "${purple} ${privilegios} Escalando privilegios...${reset}"
  echo ""
  sleep 1
  echo -e "${purple} ${privilegios} Privilegios escalados con éxito.${reset}"
}

ocultar_rastro() {
  echo -e "${blue} ${ocultar} Ocultando rastro...${reset}"
  echo ""
  sleep 1
  echo -e "${blue} ${ocultar} Rastro ocultado con éxito.${reset}"
}

# Bucle principal
while true; do
  clear
  echo -e "${green}Simulador de Hacking para WSL${reset}"
  echo "----------------------------------"
  mostrar_menu
  read -p "Selecciona una opción: " opcion

  if [[ $opcion == 0 ]]; then
    break
  fi

  ejecutar_accion $opcion
  read -p "Presiona Enter para continuar..."
done
