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
  echo "7.  ${ddos} Ataque DDoS (Simulado)"
  echo "8.  ${keylogger} Instalar keylogger (Simulado)"
  echo "9.  ${phishing} Crear página de phishing (Simulado)"
  echo "10. ${wifi} Hackear red WiFi (Simulado)"
  echo "11. ${malware} Crear malware (Simulado)"
  echo "12. ${sql} Inyección SQL (Simulado)"
  echo "13. ${social} Ingeniería social (Simulado)"
  echo "14. ${cifrado} Cifrar archivos (Simulado)"
  echo "0.  Salir"
  echo "-------------------"
}

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

# Funciones para simular las acciones de hacking

escanear_puertos() {
  echo -e "${green} ${escaner} Escaneando puertos...${reset}"
  echo ""
  # Simulación de escaneo de puertos con detalles y barra de progreso
  for i in {1..20}; do
    puerto=$((RANDOM % 65535 + 1))
    estado=$((RANDOM % 4))
    case $estado in
      0) echo -e "  ${yellow}Puerto $puerto:${reset} ${red}Cerrado${reset}" ;;
      1) echo -e "  ${yellow}Puerto $puerto:${reset} ${green}Abierto${reset} - Servicio: HTTP" ;;
      2) echo -e "  ${yellow}Puerto $puerto:${reset} ${green}Abierto${reset} - Servicio: SSH" ;;
      3) echo -e "  ${yellow}Puerto $puerto:${reset} ${green}Abierto${reset} - Servicio: FTP" ;;
    esac
    sleep 0.1
    echo -ne "  Progreso: $(($i * 5))%\r"
  done
  echo ""
  echo -e "${green} ${escaner} Escaneo completado.${reset}"
}

ataque_diccionario() {
  echo -e "${yellow} ${diccionario} Realizando ataque de diccionario...${reset}"
  echo ""
  # Simulación de ataque de diccionario con progreso y animación
  for i in {1..100}; do
    echo -ne "  Probando contraseñas... $(($i % 4))  \r"
    sleep 0.01
  done
  echo ""
  resultado=$((RANDOM % 3))
  case $resultado in
    0) echo -e "${red} ${diccionario} Ataque fallido.${reset}" ;;
    1) echo -e "${green} ${diccionario} Contraseña encontrada: ${cyan}P@$$wOrd!${reset}" ;;
    2) echo -e "${green} ${diccionario} Contraseña encontrada: ${cyan}123456${reset}" ;;
  esac
}

explotar_vulnerabilidad() {
  echo -e "${red} ${exploit} Explotando vulnerabilidad...${reset}"
  echo ""
  # Simulación de explotación con mensajes de progreso y suspenso
  echo "  Analizando vulnerabilidades..."
  sleep 1
  echo "  Encontrando exploit adecuado..."
  sleep 1
  echo "  Inyectando payload..."
  sleep 2
  echo "  Escalando privilegios..."
  sleep 1
  echo "  Tomando control del sistema..."
  sleep 1
  echo -e "${red} ${exploit} Vulnerabilidad explotada con éxito.${reset}"
}

escalar_privilegios() {
  echo -e "${purple} ${privilegios} Escalando privilegios...${reset}"
  echo ""
  # Simulación de escalada de privilegios con diferentes métodos
  metodo=$((RANDOM % 3))
  case $metodo in
    0) echo "  Usando exploit de kernel..." ;;
    1) echo "  Aprovechando vulnerabilidad de configuración..." ;;
    2) echo "  Inyectando código en proceso privilegiado..." ;;
  esac
  sleep 2
  echo "  Obteniendo acceso root..."
  sleep 1
  echo -e "${purple} ${privilegios} Privilegios escalados con éxito.${reset}"
}

ocultar_rastro() {
  echo -e "${blue} ${ocultar} Ocultando rastro...${reset}"
  echo ""
  # Simulación de ocultación de rastro con detalles
  echo "  Borrando logs del sistema..."
  sleep 0.5
  echo "  Eliminando archivos temporales..."
  sleep 0.5
  echo "  Limpiando historial de comandos..."
  sleep 0.5
  echo "  Desactivando registro de actividad..."
  sleep 0.5
  echo "  Sobrescribiendo espacio libre en disco..."
  sleep 1
  echo -e "${blue} ${ocultar} Rastro ocultado con éxito.${reset}"
}

obtener_info_sistema() {
  echo -e "${cyan} ${info} Obteniendo información del sistema...${reset}"
  echo ""
  # Mostrar información detallada del sistema
  echo "  Nombre de host: $(hostname)"
  echo "  Dirección IP: $(hostname -I)"
  echo "  Sistema operativo: $(uname -o)"
  echo "  Versión del kernel: $(uname -r)"
  echo "  Número de CPUs: $(nproc)"
  echo "  Memoria RAM total: $(free -h | awk '/^Mem/ {print $2}')"
  echo "  Espacio en disco: $(df -h | awk '$NF=="/"{printf "Disco: %d/%d GB (%s)\n", $3,$2,$5}')"
  echo ""
}

ataque_ddos() {
  echo -e "${red} ${ddos} Simulando ataque DDoS...${reset}"
  echo ""
  # Simulación de ataque DDoS con intensidad variable
  intensidad=$((RANDOM % 100 + 1))
  echo "  Intensidad del ataque: $intensidad%"
  echo "  Enviando paquetes al objetivo..."
  sleep 1
  echo "  Incrementando tráfico de red..."
  sleep 1
  echo "  Sobrecargando el servidor..."
  sleep 2
  if [[ $intensidad -gt 70 ]]; then
    echo -e "${red} ${ddos} Ataque DDoS exitoso. Objetivo fuera de línea.${reset}"
  else
    echo -e "${yellow} ${ddos} Ataque DDoS mitigado por el objetivo.${reset}"
  fi
}

instalar_keylogger() {
  echo -e "${yellow} ${keylogger} Simulando instalación de keylogger...${reset}"
  echo ""
  # Simulación de instalación de keylogger con opciones
  echo "  Seleccionando tipo de keylogger:"
  echo "    1. Basado en kernel"
  echo "    2. Basado en API"
  echo "    3. Basado en hardware"
  read -p "  Elige una opción: " tipo_keylogger
  echo ""
  echo "  Instalando keylogger..."
  sleep 2
  echo "  Configurando keylogger..."
  sleep 1
  echo "  Ocultando keylogger..."
  sleep 1
  echo -e "${yellow} ${keylogger} Keylogger instalado (simulado).${reset}"
}

crear_pagina_phishing() {
  echo -e "${red} ${phishing} Simulando creación de página de phishing...${reset}"
  echo ""
  # Simulación de creación de página de phishing con selección de objetivo
  echo "  Selecciona un objetivo:"
  echo "    1. Banco"
  echo "    2. Red social"
  echo "    3. Correo electrónico"
  read -p "  Elige una opción: " objetivo_phishing
  echo ""
  echo "  Clonando página web..."
  sleep 1
  echo "  Configurando formulario de captura..."
  sleep 1
  echo "  Añadiendo elementos de ingeniería social..."
  sleep 1
  echo -e "${red} ${phishing} Página de phishing creada (simulada).${reset}"
}

hackear_wifi() {
  echo -e "${yellow} ${wifi} Simulando hackeo de red WiFi...${reset}"
  echo ""
  # Simulación de hackeo de WiFi con diferentes métodos
  metodo=$((RANDOM % 3))
  case $metodo in
    0) echo "  Usando ataque de diccionario contra WPS..." ;;
    1) echo "  Explotando vulnerabilidad en el router..." ;;
    2) echo "  Realizando ataque Man-in-the-Middle..." ;;
  esac
  sleep 2
  echo "  Obteniendo contraseña de la red..."
  sleep 1
  echo -e "${green} ${wifi} Contraseña de la red: ${cyan}W1f1S3gur@${reset}"
}

crear_malware() {
  echo -e "${red} ${malware} Simulando creación de malware...${reset}"
  echo ""
  # Simulación de creación de malware con opciones
  echo "  Selecciona un tipo de malware:"
  echo "    1. Virus"
  echo "    2. Gusano"
  echo "    3. Troyano"
  echo "    4. Ransomware"
  read -p "  Elige una opción: " tipo_malware
  echo ""
  echo "  Escribiendo código malicioso..."
  sleep 1
  echo "  Empaquetando malware..."
  sleep 1
  echo "  Ofuscando código..."
  sleep 1
  echo -e "${red} ${malware} Malware creado (simulado).${reset}"
}

inyeccion_sql() {
  echo -e "${blue} ${sql} Simulando inyección SQL...${reset}"
  echo ""
  # Simulación de inyección SQL con ejemplos
  echo "  Inyectando código SQL malicioso..."
  sleep 1
  echo "  Extrayendo datos de la base de datos..."
  sleep 1
  echo "  Datos obtenidos:"
  echo "    - Nombres de usuario"
  echo "    - Contraseñas"
  echo "    - Información personal"
  echo -e "${blue} ${sql} Inyección SQL exitosa (simulada).${reset}"
}

ingenieria_social() {
  echo -e "${yellow} ${social} Simulando ingeniería social...${reset}"
  echo ""
  # Simulación de ingeniería social con diferentes técnicas
  tecnica=$((RANDOM % 3))
  case $tecnica in
    0) echo "  Enviando correo electrónico con enlace malicioso..." ;;
    1) echo "  Creando perfil falso en redes sociales..." ;;
    2) echo "  Haciéndose pasar por personal de soporte técnico..." ;;
  esac
  sleep 2
  echo "  Obteniendo información confidencial..."
  sleep 1
  echo -e "${yellow} ${social} Ingeniería social exitosa (simulada).${reset}"
}

cifrar_archivos() {
  echo -e "${purple} ${cifrado} Simulando cifrado de archivos...${reset}"
  echo ""
  # Simulación de cifrado de archivos
  echo "  Seleccionando archivos a cifrar..."
  sleep 1
  echo "  Generando clave de cifrado..."
  sleep 1
  echo "  Cifrando archivos..."
  sleep 2
  echo -e "${purple} ${cifrado} Archivos cifrados (simulado).${reset}"
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
