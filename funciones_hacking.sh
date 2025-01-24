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

# Función para mostrar una calavera con símbolos
mostrar_calavera() {
  echo -e "${red}"
  echo "       _.--""--._"
  echo "     .'          `."
  echo "    /   O      O   \"
  echo "   |    \  ||  /    |"
  echo "   \     `--'     /"
  echo "    `._______.'"
  echo -e "${reset}"
}

# Función para mostrar una animación de escaneo
mostrar_animacion_escaneo() {
  local cargando=("-" "\\" "|" "/")
  for i in {1..20}; do
    echo -ne "  ${cargando[$((i % 4))]} Escaneando...\r"
    sleep 0.1
  done
}

# Función para generar una contraseña aleatoria
generar_contrasena() {
  echo $(cat /dev/urandom | tr -dc 'a-zA-Z0-9-_!@#$%^&*()_+~`|}{[]\:;?><,./-=' | fold -w 16 | head -n 1)
}

# Funciones para simular las acciones de hacking

escanear_puertos() {
  echo -e "${green} ${escaner} Escaneando puertos...${reset}"
  echo ""
  mostrar_animacion_escaneo
  echo ""
  # Simulación de escaneo de puertos con detalles, barra de progreso y animación
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
    echo -ne "  Progreso: $(($i * 5))%  [$(printf '#%.0s' $(seq 1 $(($i / 5))))$(printf ' %.0s' $(seq 1 $((20 - ($i / 5)))))]\r"
  done
  echo ""
  echo -e "${green} ${escaner} Escaneo completado.${reset}"
}

ataque_diccionario() {
  echo -e "${yellow} ${diccionario} Realizando ataque de diccionario...${reset}"
  echo ""
  # Simulación de ataque de diccionario con progreso, animación y suspenso
  for i in {1..100}; do
    echo -ne "  Probando contraseñas... $(($i % 4))  \r"
    sleep 0.01
  done
  echo ""
  resultado=$((RANDOM % 5))
  case $resultado in
    0) echo -e "${red} ${diccionario} Ataque fallido.${reset}" ;;
    1) echo -e "${green} ${diccionario} Contraseña encontrada: ${cyan}P@$$wOrd!${reset}" ;;
    2) echo -e "${green} ${diccionario} Contraseña encontrada: ${cyan}123456${reset}" ;;
    3) 
       echo -e "${green} ${diccionario} Contraseña encontrada: ${cyan}admin${reset}"
       mostrar_calavera 
       ;;
    4)  
       echo -e "${green} ${diccionario} Contraseña encontrada: ${cyan}secret${reset}" 
       ;; 
  esac
}

explotar_vulnerabilidad() {
  echo -e "${red} ${exploit} Explotando vulnerabilidad...${reset}"
  echo ""
  # Simulación de explotación con mensajes de progreso, suspenso y detalles técnicos
  echo "  Analizando el sistema objetivo..."
  sleep 1
  echo "  Identificando vulnerabilidades..."
  sleep 2
  echo "  Encontrando exploit adecuado..."
  sleep 1
  echo "  [${green}OK${reset}]  Vulnerabilidad encontrada: CVE-2023-1234"
  sleep 1
  echo "  Construyendo payload..."
  sleep 2
  echo "  Inyectando payload..."
  sleep 3
  echo "  Escalando privilegios..."
  sleep 1
  echo "  [${green}OK${reset}]  Acceso al sistema obtenido."
  sleep 1
  echo -e "${red} ${exploit} Vulnerabilidad explotada con éxito.${reset}"
}

escalar_privilegios() {
  echo -e "${purple} ${privilegios} Escalando privilegios...${reset}"
  echo ""
  # Simulación de escalada de privilegios con diferentes métodos y detalles técnicos
  metodo=$((RANDOM % 3))
  case $metodo in
    0) echo "  Usando exploit de kernel..." 
       sleep 1
       echo "  [${green}OK${reset}]  Exploit ejecutado."
       sleep 1
       echo "  Elevando permisos..."
       ;;
    1) echo "  Aprovechando vulnerabilidad de configuración..."
       sleep 1
       echo "  [${green}OK${reset}]  Vulnerabilidad encontrada."
       sleep 1
       echo "  Modificando permisos..." 
       ;;
    2) echo "  Inyectando código en proceso privilegiado..." 
       sleep 1
       echo "  [${green}OK${reset}]  Código inyectado."
       sleep 1
       echo "  Tomando control del proceso..." 
       ;;
  esac
  sleep 2
  echo "  [${green}OK${reset}]  Acceso root obtenido."
  sleep 1
  echo -e "${purple} ${privilegios} Privilegios escalados con éxito.${reset}"
}

ocultar_rastro() {
  echo -e "${blue} ${ocultar} Ocultando rastro...${reset}"
  echo ""
  # Simulación de ocultación de rastro con detalles y barra de progreso
  local tareas=("Borrando logs del sistema..." 
                "Eliminando archivos temporales..." 
                "Limpiando historial de comandos..." 
                "Desactivando registro de actividad..." 
                "Sobrescribiendo espacio libre en disco...")
  for i in {0..4}; do
    echo -ne "  ${tareas[$i]}\r"
    sleep 1
    echo -ne "  ${tareas[$i]} [$(printf '#%.0s' $(seq 1 $(($((i + 1)) * 20))))$(printf ' %.0s' $(seq 1 $((100 - (($i + 1)) * 20))))]\r"
    sleep 1
  done
  echo ""
  echo -e "${blue} ${ocultar} Rastro ocultado con éxito.${reset}"
}

obtener_info_sistema() {
  echo -e "${cyan} ${info} Obteniendo información del sistema...${reset}"
  echo ""
  # Mostrar información detallada del sistema con formato
  echo "  Nombre de host: $(hostname)"
  echo "  Dirección IP: $(hostname -I)"
  echo "  Sistema operativo: $(uname -o)"
  echo "  Versión del kernel: $(uname -r)"
  echo "  Número de CPUs: $(nproc)"
  echo "  Memoria RAM total: $(free -h | awk '/^Mem/ {print $2}')"
  echo "  Espacio en disco: $(df -h | awk '$NF=="/"{printf "Disco: %d/%d GB (%s)\n", $3,$2,$5}')"
  echo "  Usuario actual: $USER"
  echo "  Shell actual: $SHELL"
  echo ""
}

ataque_ddos() {
  echo -e "${red} ${ddos} Ataque DDoS...${reset}"
  echo ""
  # Simulación de ataque DDoS con intensidad variable y detalles
  intensidad=$((RANDOM % 100 + 1))
  echo "  Intensidad del ataque: $intensidad%"
  echo "  Seleccionando objetivo..."
  sleep 1
  echo "  [${green}OK${reset}]  Objetivo adquirido: 192.168.1.100"
  sleep 1
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
  echo -e "${yellow} ${keylogger} Instalando keylogger...${reset}"
  echo ""
  # Simulación de instalación de keylogger con opciones y detalles
  echo "  Seleccionando tipo de keylogger:"
  echo "    1. Basado en kernel"
  echo "    2. Basado en API"
  echo "    3. Basado en hardware"
  read -p "  Elige una opción: " tipo_keylogger
  echo ""
  echo "  [${green}OK${reset}]  Keylogger seleccionado."
  sleep 1
  echo "  Copiando archivos..."
  sleep 1
  echo "  Instalando dependencias..."
  sleep 2
  echo "  Configurando keylogger..."
  sleep 1
  echo "  Ocultando keylogger..."
  sleep 1
  echo -e "${yellow} ${keylogger} Keylogger instalado.${reset}"
}

crear_pagina_phishing() {
  echo -e "${red} ${phishing} Creando página de phishing...${reset}"
  echo ""
  # Simulación de creación de página de phishing con selección de objetivo y detalles
  echo "  Selecciona un objetivo:"
  echo "    1. Banco"
  echo "    2. Red social"
  echo "    3. Correo electrónico"
  read -p "  Elige una opción: " objetivo_phishing
  echo ""
  echo "  [${green}OK${reset}]  Objetivo seleccionado."
  sleep 1
  echo "  Clonando página web..."
  sleep 1
  echo "  Configurando formulario de captura..."
  sleep 1
  echo "  Añadiendo elementos de ingeniería social..."
  sleep 1
  echo "  [${green}OK${reset}]  Página de phishing creada."
  sleep 1
  echo "  URL de la página: ${cyan}http://mi-pagina-falsa.com${reset}"
}

hackear_wifi() {
  echo -e "${yellow} ${wifi} Hackeando red WiFi...${reset}"
  echo ""
  # Simulación de hackeo de WiFi con diferentes métodos, detalles y animación
  mostrar_animacion_escaneo
  echo ""
  metodo=$((RANDOM % 3))
  case $metodo in
    0) echo "  Usando ataque de diccionario contra WPS..." ;;
    1) echo "  Explotando vulnerabilidad en el router..." ;;
    2) echo "  Realizando ataque Man-in-the-Middle..." ;;
  esac
  sleep 2
  echo "  [${green}OK${reset}]  Contraseña de la red obtenida."
  sleep 1
  contrasena_wifi=$(generar_contrasena)
  echo -e "${green} ${wifi} Contraseña de la red: ${cyan}$contrasena_wifi${reset}"
}

crear_malware() {
  echo -e "${red} ${malware} Creando malware...${reset}"
  echo ""
  # Simulación de creación de malware con opciones, detalles y animación
  echo "  Selecciona un tipo de malware:"
  echo "    1. Virus"
  echo "    2. Gusano"
  echo "    3. Troyano"
  echo "    4. Ransomware"
  read -p "  Elige una opción: " tipo_malware
  echo ""
  echo "  [${green}OK${reset}]  Tipo de malware seleccionado."
  sleep 1
  echo "  Escribiendo código malicioso..."
  sleep 1
  echo "  Empaquetando malware..."
  sleep 1
  echo "  Ofuscando código..."
  sleep 1
  echo -e "${red} ${malware} Malware creado.${reset}"
}

inyeccion_sql() {
  echo -e "${blue} ${sql} Inyección SQL...${reset}"
  echo ""
  # Simulación de inyección SQL con ejemplos, detalles y animación
  echo "  Buscando vulnerabilidades SQL..."
  sleep 1
  echo "  [${green}OK${reset}]  Vulnerabilidad encontrada."
  sleep 1
  echo "  Inyectando código SQL malicioso..."
  sleep 1
  echo "  Extrayendo datos de la base de datos..."
  sleep 2
  echo "  [${green}OK${reset}]  Datos obtenidos:"
  echo "    - Nombres de usuario"
  echo "    - Contraseñas"
  echo "    - Información personal"
  echo -e "${blue} ${sql} Inyección SQL exitosa.${reset}"
}

ingenieria_social() {
  echo -e "${yellow} ${social} Ingeniería social...${reset}"
  echo ""
  # Simulación de ingeniería social con diferentes técnicas y detalles
  tecnica=$((RANDOM % 3))
  case $tecnica in
    0) echo "  Enviando correo electrónico con enlace malicioso..." 
       sleep 1
       echo "  [${green}OK${reset}]  Correo electrónico enviado."
       sleep 1
       echo "  Esperando que la víctima haga clic en el enlace..." 
       ;;
    1) echo "  Creando perfil falso en redes sociales..." 
       sleep 1
       echo "  [${green}OK${reset}]  Perfil falso creado."
       sleep 1
       echo "  Agregando amigos y publicando contenido..."
       ;;
    2) echo "  Haciéndose pasar por personal de soporte técnico..." 
       sleep 1
       echo "  [${green}OK${reset}]  Llamada telefónica realizada."
       sleep 1
       echo "  Solicitando información confidencial..." 
       ;;
  esac
  sleep 2
  echo "  [${green}OK${reset}]  Información confidencial obtenida."
  sleep 1
  echo -e "${yellow} ${social} Ingeniería social exitosa.${reset}"
}

cifrar_archivos() {
  echo -e "${purple} ${cifrado} Cifrando archivos...${reset}"
  echo ""
  # Simulación de cifrado de archivos con detalles y animación
  echo "  Seleccionando archivos a cifrar..."
  sleep 1
  echo "  [${green}OK${reset}]  Archivos seleccionados."
  sleep 1
  echo "  Generando clave de cifrado..."
  sleep 1
  echo "  Cifrando archivos..."
  local cargando=("." "..")
  for i in {1..50}; do
    echo -ne "  Cifrando archivos... ${cargando[$((i % 2))]}  \r"
    sleep 0.1
  done
  echo ""
  echo -e "${purple} ${cifrado} Archivos cifrados.${reset}"
}
