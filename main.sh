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
  echo "1. ${escaner} Escanear puertos"
  echo "2. ${diccionario} Ataque de diccionario"
  echo "3. ${exploit} Explotar vulnerabilidad"
  echo "4. ${privilegios} Escalar privilegios"
  echo "5. ${ocultar} Ocultar rastro"
  echo "6. ${info} Obtener información del sistema"
  echo "7. ${ddos} Ataque DDoS (Simulado)"
  echo "8. ${keylogger} Instalar keylogger (Simulado)"
  echo "9. ${phishing} Crear página de phishing (Simulado)"
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
    6) obtener_info_sistema ;;
    7) ataque_ddos ;;
    8) instalar_keylogger ;;
    9) crear_pagina_phishing ;;
    0) echo -e "${red}Saliendo del simulador...${reset}" ;;
    *) echo -e "${red}Opción inválida.${reset}" ;;
  esac
}

# Funciones para simular las acciones de hacking

escanear_puertos() {
  echo -e "${green} ${escaner} Escaneando puertos...${reset}"
  echo ""
  # Simulación de escaneo de puertos con más detalles
  for i in {1..15}; do
    puerto=$((RANDOM % 65535 + 1))
    estado=$((RANDOM % 3))
    case $estado in
      0) echo -e "  ${yellow}Puerto $puerto:${reset} ${red}Cerrado${reset}" ;;
      1) echo -e "  ${yellow}Puerto $puerto:${reset} ${green}Abierto${reset} - Servicio: HTTP" ;;
      2) echo -e "  ${yellow}Puerto $puerto:${reset} ${green}Abierto${reset} - Servicio: SSH" ;;
    esac
    sleep 0.1
  done
  echo ""
  echo -e "${green} ${escaner} Escaneo completado.${reset}"
}

ataque_diccionario() {
  echo -e "${yellow} ${diccionario} Realizando ataque de diccionario...${reset}"
  echo ""
  # Simulación de ataque de diccionario con progreso
  for i in {1..100}; do
    echo -ne "  Progreso: $i%\r"
    sleep 0.01
  done
  echo ""
  resultado=$((RANDOM % 2))
  if [[ $resultado == 0 ]]; then
    echo -e "${red} ${diccionario} Ataque fallido.${reset}"
  else
    echo -e "${green} ${diccionario} Contraseña encontrada: ${cyan}P@$$wOrd!${reset}"
  fi
}

explotar_vulnerabilidad() {
  echo -e "${red} ${exploit} Explotando vulnerabilidad...${reset}"
  echo ""
  # Simulación de explotación con mensajes de progreso
  echo "  Inyectando código malicioso..."
  sleep 1
  echo "  Escalando privilegios..."
  sleep 1
  echo "  Obteniendo acceso al sistema..."
  sleep 1
  echo -e "${red} ${exploit} Vulnerabilidad explotada con éxito.${reset}"
}

escalar_privilegios() {
  echo -e "${purple} ${privilegios} Escalando privilegios...${reset}"
  echo ""
  # Simulación de escalada de privilegios
  echo "  Buscando exploits..."
  sleep 1
  echo "  Ejecutando exploit..."
  sleep 1
  echo "  Obteniendo acceso root..."
  sleep 1
  echo -e "${purple} ${privilegios} Privilegios escalados con éxito.${reset}"
}

ocultar_rastro() {
  echo -e "${blue} ${ocultar} Ocultando rastro...${reset}"
  echo ""
  # Simulación de ocultación de rastro
  echo "  Borrando logs..."
  sleep 1
  echo "  Limpiando archivos temporales..."
  sleep 1
  echo "  Desactivando historial..."
  sleep 1
  echo -e "${blue} ${ocultar} Rastro ocultado con éxito.${reset}"
}

obtener_info_sistema() {
  echo -e "${cyan} ${info} Obteniendo información del sistema...${reset}"
  echo ""
  # Mostrar información básica del sistema
  echo "  Nombre de host: $(hostname)"
  echo "  Sistema operativo: $(uname -o)"
  echo "  Versión del kernel: $(uname -r)"
  echo "  Número de CPUs: $(nproc)"
  echo "  Memoria RAM total: $(free -h | awk '/^Mem/ {print $2}')"
  echo ""
}

ataque_ddos() {
  echo -e "${red} ${ddos} Simulando ataque DDoS...${reset}"
  echo ""
  # Simulación de ataque DDoS
  echo "  Enviando paquetes al objetivo..."
  sleep 1
  echo "  Incrementando tráfico..."
  sleep 1
  echo "  Sobrecargando el servidor..."
  sleep 1
  echo -e "${red} ${ddos} Ataque DDoS simulado completado.${reset}"
}

instalar_keylogger() {
  echo -e "${yellow} ${keylogger} Simulando instalación de keylogger...${reset}"
  echo ""
  # Simulación de instalación de keylogger
  echo "  Copiando archivos..."
  sleep 1
  echo "  Configurando keylogger..."
  sleep 1
  echo "  Ocultando keylogger..."
  sleep 1
  echo -e "${yellow} ${keylogger} Keylogger instalado (simulado).${reset}"
}

crear_pagina_phishing() {
  echo -e "${red} ${phishing} Simulando creación de página de phishing...${reset}"
  echo ""
  # Simulación de creación de página de phishing
  echo "  Seleccionando plantilla..."
  sleep 1
  echo "  Clonando página web..."
  sleep 1
  echo "  Configurando formulario de captura..."
  sleep 1
  echo -e "${red} ${phishing} Página de phishing creada (simulada).${reset}"
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
