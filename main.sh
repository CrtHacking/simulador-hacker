#!/bin/bash

# Colores
green="\e[32m"
red="\e[31m"
yellow="\e[33m"
blue="\e[34m"
purple="\e[35m"
cyan="\e[36m"
reset="\e[0m"

# Función para mostrar el menú
mostrar_menu() {
  echo -e "${cyan}Menú de opciones${reset}"
  echo "-------------------"
  echo "1. Escanear puertos"
  echo "2. Ataque de diccionario"
  echo "3. Explotar vulnerabilidad"
  echo "4. Escalar privilegios"
  echo "5. Ocultar rastro"
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
  echo -e "${green}Escaneando puertos...${reset}"
  # Aquí puedes usar comandos como nmap para simular el escaneo
  # o generar resultados aleatorios
}

ataque_diccionario() {
  echo -e "${yellow}Realizando ataque de diccionario...${reset}"
  # Aquí puedes simular un ataque de diccionario con herramientas como hydra
  # o generar resultados aleatorios
}

explotar_vulnerabilidad() {
  echo -e "${red}Explotando vulnerabilidad...${reset}"
  # Aquí puedes simular la explotación de una vulnerabilidad
  # o generar resultados aleatorios
}

escalar_privilegios() {
  echo -e "${purple}Escalando privilegios...${reset}"
  # Aquí puedes simular la escalada de privilegios
  # o generar resultados aleatorios
}

ocultar_rastro() {
  echo -e "${blue}Ocultando rastro...${reset}"
  # Aquí puedes simular la ocultación de rastro
  # o generar resultados aleatorios
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