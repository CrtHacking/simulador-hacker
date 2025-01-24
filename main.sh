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
    echo -ne "  <span class="math-inline">\{cargando\[</span>((i % 4))]} Escaneando...\r"
    sleep 0.1
  done
}

# Función para generar una contraseña aleatoria
generar_contrasena() {
  echo <span class="math-inline">\(cat /dev/urandom \| tr \-dc 'a\-zA\-Z0\-9\-\_\!@\#</span>%^&*()_+~`|}{[]\:;?><,./-=' | fold -w 16 | head -n 1)
}

# Función para mostrar el menú de inicio de sesión
mostrar_login() {
  clear
  echo -e "<span class="math-inline">\{green\}Simulador de Hacking para WSL</span>{reset}"
  echo "----------------------------------"
  echo ""
  read -p "Nombre de usuario: " usuario
  read -sp "Contraseña: " contrasena
  echo ""

  # Simulación de verificación de credenciales (siempre será exitoso)
  sleep 1
  echo -e "<span class="math-inline">\{green\}Inicio de sesión exitoso\.</span>{reset}"
  usuario_actual=<span class="math-inline">usuario
sleep 1
\}
\# Función para mostrar el menú principal
mostrar\_menu\(\) \{
clear
echo \-e "</span>{green}Simulador de Hacking para WSL${reset}"
  echo "----------------------------------"
  echo "Usuario actual: ${cyan}<span class="math-inline">usuario\_actual</span>{reset}"
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

# Función para ejecutar la acción seleccionada
ejecutar_accion() {
  case <span class="math-inline">1 in
1\)  escanear\_puertos ;;
2\)  ataque\_diccionario ;;
3\)  explotar\_vulnerabilidad ;;
4\)  escalar\_privilegios ;;
5\)  ocultar\_rastro ;;
6\)  obtener\_info\_sistema ;;
7\)  ataque\_ddos ;;
8\)  instalar\_keylogger ;;
9\)  crear\_pagina\_phishing ;;
10\) hackear\_wifi ;;
11\) crear\_malware ;;
12\) inyeccion\_sql ;;
13\) ingenieria\_social ;;
14\) cifrar\_archivos ;;
0\)  echo \-e "</span>{red}Saliendo del simulador...<span class="math-inline">\{reset\}" ;;
\*\)  echo \-e "</span>{red}Opción inválida.<span class="math-inline">\{reset\}" ;;
esac
\}
\# Funciones para simular las acciones de hacking
escanear\_puertos\(\) \{
echo \-e "</span>{green} <span class="math-inline">\{escaner\} Escaneando puertos\.\.\.</span>{reset}"
  echo ""
  mostrar_animacion_escaneo
  echo ""
  # Simulación de escaneo de puertos con detalles, barra de progreso y animación
  for i in {1..20}; do
    puerto=<span class="math-inline">\(\(RANDOM % 65535 \+ 1\)\)
estado\=</span>((RANDOM % 4))
    case $estado in
      0) echo -e "  ${yellow}Puerto <span class="math-inline">puerto\:</span>{reset} <span class="math-inline">\{red\}Cerrado</span>{reset}" ;;
      1) echo -e "  ${yellow}Puerto <span class="math-inline">puerto\:</span>{reset} <span class="math-inline">\{green\}Abierto</span>{reset} - Servicio: HTTP" ;;
      2) echo -e "  ${yellow}Puerto <span class="math-inline">puerto\:</span>{reset} <span class="math-inline">\{green\}Abierto</span>{reset} - Servicio: SSH" ;;
      3) echo -e "  ${yellow}Puerto <span class="math-inline">puerto\:</span>{reset} <span class="math-inline">\{green\}Abierto</span>{reset} - Servicio: FTP" ;;
    esac
    sleep 0.1
    echo -ne "  Progreso: $((<span class="math-inline">i \* 5\)\)%  \[</span>(printf '#%.0s' $(seq 1 $((<span class="math-inline">i / 5\)\)\)\)</span>(printf ' %.0s' $(seq 1 $((20 - (<span class="math-inline">i / 5\)\)\)\)\)\]\\r"
done
echo ""
echo \-e "</span>{green} <span class="math-inline">\{escaner\} Escaneo completado\.</span>{reset}"
}

ataque_diccionario() {
  echo -e "${yellow} <span class="math-inline">\{diccionario\} Realizando ataque de diccionario\.\.\.</span>{reset}"
  echo ""
  # Simulación de ataque de diccionario con progreso, animación y suspenso
  for i in {1..100}; do
    echo -ne "  Probando contraseñas... $((<span class="math-inline">i % 4\)\)  \\r"
sleep 0\.01
done
echo ""
resultado\=</span>((RANDOM % 5))
  case <span class="math-inline">resultado in
0\) echo \-e "</span>{red} <span class="math-inline">\{diccionario\} Ataque fallido\.</span>{reset}" ;;
    1) echo -e "${green} ${diccionario} Contraseña encontrada: <span class="math-inline">\{cyan\}P@</span><span class="math-inline">wOrd\!</span>{reset}" ;;
    2) echo -e "${green} ${diccionario} Contraseña encontrada: <span class="math-inline">\{cyan\}123456</span>{reset}" ;;
    3) 
       echo -e "${green} ${diccionario} Contraseña encontrada: <span class="math-inline">\{cyan\}admin</span>{reset}"
       mostrar_calavera 
       ;;
    4)  
       echo -e "${green} ${diccionario} Contraseña encontrada: <span class="math-inline">\{cyan\}secret</span>{reset}" 
       ;; 
  esac
}

explotar_vulnerabilidad() {
  echo -e "${red} <span class="math-inline">\{exploit\} Explotando vulnerabilidad\.\.\.</span>{reset}"
  echo ""
  # Simulación de explotación con mensajes de progreso, suspenso y detalles técnicos
  echo "  Analizando el sistema objetivo..."
  sleep 1
  echo "  Identificando vulnerabilidades..."
  sleep 2
  echo "  Encontrando exploit adecuado..."
  sleep 1
  echo "  [<span class="math-inline">\{green\}OK</span>{reset}]  Vulnerabilidad encontrada: CVE-2023-1234"
  sleep 1
  echo "  Construyendo payload..."
  sleep 2
  echo "  Inyectando payload..."
  sleep 3
  echo "  Escalando privilegios..."
  sleep 1
  echo "  [<span class="math-inline">\{green\}OK</span>{reset}]  Acceso al sistema obtenido."
  sleep 1
  echo -e "${red} <span class="math-inline">\{exploit\} Vulnerabilidad explotada con éxito\.</span>{reset}"
}

escalar_privilegios() {
  echo -e "${purple} <span class="math-inline">\{privilegios\} Escalando privilegios\.\.\.</span>{reset}"
  echo ""
  # Simulación de escalada de privilegios con diferentes métodos y detalles técnicos
  metodo=$((RANDOM % 3))
  case <span class="math-inline">metodo in
0\) echo "  Usando exploit de kernel\.\.\." 
sleep 1
echo "  \[</span>{green}OK${reset}]  Exploit ejecutado."
       sleep 1
       echo "  Elevando permisos..."
       ;;
    1) echo "  Aprovechando vulnerabilidad de configuración..."
       sleep 1
       echo "  [<span class="math-inline">\{green\}OK</span>{reset}]  Vulnerabilidad encontrada."
       sleep 1
       echo "  Modificando permisos..." 
       ;;
    2) echo "  Inyectando código en proceso privilegiado..." 
       sleep 1
       echo "  [<span class="math-inline">\{green\}OK</span>{reset}]  Código inyectado."
       sleep 1
       echo "  Tomando control del proceso..." 
       ;;
  esac
  sleep 2
  echo "  [<span class="math-inline">\{green\}OK</span>{reset}]  Acceso root obtenido."
  sleep 1
  echo -e "${purple} <span class="math-inline">\{privilegios\} Privilegios escalados con éxito\.</span>{reset}"
}

ocultar_rastro() {
  echo -e "${blue} <span class="math-inline">\{ocultar\} Ocultando rastro\.\.\.</span>{reset}"
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
    echo -ne "  ${tareas[<span class="math-inline">i\]\} \[</span>(printf '#%.0s' $(seq 1 <span class="math-inline">\(\(</span>((i + 1)) * 20))))$(printf ' %.0s' $(seq 1 $((100 - ((<span class="math-inline">i \+ 1\)\) \* 20\)\)\)\)\]\\r"
sleep 1
done
echo ""
echo \-e "</span>{blue} <span class="math-inline">\{ocultar\} Rastro ocultado con éxito\.</span>{reset}"
}

obtener_info_sistema() {
  echo -e "${cyan} <span class="math-inline">\{info\} Obteniendo información del sistema\.\.\.</span>{reset}"
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
  echo "  Shell actual: <span class="math-inline">SHELL"
echo ""
\}
ataque\_ddos\(\) \{
echo \-e "</span>{red} <span class="math-inline">\{ddos\} Ataque DDoS\.\.\.</span>{reset}"
  echo ""
  # Simulación de ataque DDoS con intensidad variable y detalles
  intensidad=$((RANDOM % 100 + 1))
  echo "  Intensidad del ataque: <span class="math-inline">intensidad%"
echo "  Seleccionando objetivo\.\.\."
sleep 1
echo "  \[</span>{green}OK${reset}]  Objetivo adquirido: 192.168.1.100"
  sleep 1
  echo "  Enviando paquetes al objetivo..."
  sleep 1
  echo "  Incrementando tráfico de red..."
  sleep 1
  echo "  Sobrecargando el servidor..."
  sleep 2
  if [[ <span class="math-inline">intensidad \-gt 70 \]\]; then
echo \-e "</span>{red} <span class="math-inline">\{ddos\} Ataque DDoS exitoso\. Objetivo fuera de línea\.</span>{reset}"
  else
    echo -e "${yellow} <span class="math-inline">\{ddos\} Ataque DDoS mitigado por el objetivo\.</span>{reset}"
  fi
}

instalar_keylogger() {
  echo -e "${yellow} <span class="math-inline">\{keylogger\} Instalando keylogger\.\.\.</span>{reset}"
  echo ""
  # Simulación de instalación de keylogger con opciones y detalles
  echo "  Seleccionando tipo de keylogger:"
  echo "    1. Basado en kernel"
  echo "    2. Basado en API"
  echo "    3. Basado en hardware"
  read -p "  Elige una opción: " tipo_keylogger
  echo ""
  echo "  [<span class="math-inline">\{green\}OK</span>{reset}]  Keylogger seleccionado."
  sleep 1
  echo "  Copiando archivos..."
  sleep 1
  echo "  Instalando dependencias..."
  sleep 2
  echo "  Configurando keylogger..."
  sleep 1
  echo "  Ocultando keylogger..."
  sleep 1
  echo -e "${yellow} <span class="math-inline">\{keylogger\} Keylogger instalado\.</span>{reset}"
}

crear_pagina_phishing() {
  echo -e "${red} <span class="math-inline">\{phishing\} Creando página de phishing\.\.\.</span>{reset}"
  echo ""
  # Simulación de creación de página de phishing con selección de objetivo y detalles
  echo "  Selecciona un objetivo:"
  echo "    1. Banco"
  echo "    2. Red social"
  echo "    3. Correo electrónico"
  read -p "  Elige una opción: " objetivo_phishing
  echo ""
  echo "  [<span class="math-inline">\{green\}OK</span>{reset}]  Objetivo seleccionado."
  sleep 1
  echo "  Clonando página web..."
  sleep 1
  echo "  Configurando formulario de captura..."
  sleep 1
  echo "  Añadiendo elementos de ingeniería social..."
  sleep 1
  echo "  [<span class="math-inline">\{green\}OK</span>{reset}]  Página de phishing creada."
  sleep 1
  echo "  URL de la página: <span class="math-inline">\{cyan\}http\://mi\-pagina\-falsa\.com</span>{reset}"
}

hackear_wifi() {
  echo -e "${yellow} <span class="math-inline">\{wifi\} Hackeando red WiFi\.\.\.</span>{reset}"
  echo ""
  # Simulación de hackeo de WiFi con diferentes métodos, detalles y animación
  mostrar_animacion_escaneo
  echo ""
  metodo=$((RANDOM % 3))
  case <span class="math-inline">metodo in
0\) echo "  Usando ataque de diccionario contra WPS\.\.\." ;;
1\) echo "  Explotando vulnerabilidad en el router\.\.\." ;;
2\) echo "  Realizando ataque Man\-in\-the\-Middle\.\.\." ;;
esac
sleep 2
echo "  \[</span>{green}OK${reset}]  Contraseña de la red obtenida."
  sleep 1
  contrasena_wifi=<span class="math-inline">\(generar\_contrasena\)
echo \-e "</span>{green} ${wifi} Contraseña de la red: ${cyan}<span class="math-inline">contrasena\_wifi</span>{reset}"
}

crear_malware() {
  echo -e "${red} <span class="math-inline">\{malware\} Creando malware\.\.\.</span>{reset}"
  echo ""
  # Simulación de creación de malware con opciones, detalles y animación
  echo "  Selecciona un tipo de malware:"
  echo "    1. Virus"
  echo "    2. Gusano"
  echo "    3. Troyano"
  echo "    4. Ransomware"
  read -p "  Elige una opción: " tipo_malware
  echo ""
  echo "  [<span class="math-inline">\{green\}OK</span>{reset}]  Tipo de malware seleccionado."
  sleep 1
  echo "  Escribiendo código malicioso..."
  sleep 1
  echo "  Empaquetando malware..."
  sleep 1
  echo "  Ofuscando código..."
  sleep 1
  echo -e "${red} <span class="math-inline">\{malware\} Malware creado\.</span>{reset}"
}

inyeccion_sql() {
  echo -e "${blue} <span class="math-inline">\{sql\} Inyección SQL\.\.\.</span>{reset}"
  echo ""
  # Simulación de inyección SQL con ejemplos, detalles y animación
  echo "  Buscando vulnerabilidades SQL..."
  sleep 1
  echo "  [<span class="math-inline">\{green\}OK</span>{reset}]  Vulnerabilidad encontrada."
  sleep 1
  echo "  Inyectando código SQL malicioso..."
  sleep 1
  echo "  Extrayendo datos de la base de datos..."
  sleep 2
  echo "  [<span class="math-inline">\{green\}OK</span>{reset}]  Datos obtenidos:"
  echo "    - Nombres de usuario"
  echo "    - Contraseñas"
  echo "    - Información personal"
  echo -e "${blue} <span class="math-inline">\{sql\} Inyección SQL exitosa\.</span>{reset}"
}

ingenieria_social() {
  echo -e "${yellow} <span class="math-inline">\{social\} Ingeniería social\.\.\.</span>{reset}"
  echo ""
  # Simulación de ingeniería social con diferentes técnicas y detalles
  tecnica=$((RANDOM % 3))
  case $tecnica in
