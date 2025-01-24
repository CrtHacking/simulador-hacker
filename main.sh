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

# Imágenes
skull="
 💀💀💀
  💀💀💀
   💀💀💀
"
hacker="
  .-----.
 /     \
| () () |
 \  ^  /
  `-----'
"
loading="
  [-------]
  [##-----]
  [####---]
  [######-]
  [########]
"


# Variables globales
usuario_actual=""

# Función para mostrar el menú de inicio de sesión
mostrar_login() {
  clear
  echo -e "${green}
  .-----.
 /     \
| () () |
 \  ^  /
  `-----'
  Simulador de Hacking para WSL${reset}"
  echo "----------------------------------"
  echo ""
  read -p "Nombre de usuario: " usuario
  read -sp "Contraseña: " contrasena
  echo ""

  # Simulación de verificación de credenciales (siempre será exitoso)
  sleep 1
  echo -ne "${yellow}Verificando...${reset}\r"
  sleep 1
  echo -ne "${yellow}Verificando..${reset}\r"
  sleep 1
  echo -ne "${yellow}Verificando.${reset}\r"
  sleep 1
  echo -e "${green}Inicio de sesión exitoso.${reset}"
  usuario_actual=$usuario
  sleep 1
}

# Función para mostrar el menú principal
mostrar_menu() {
  clear
  echo -e "${green}
  .-----.
 /     \
| () () |
 \  ^  /
  `-----'
  Simulador de Hacking para WSL${reset}"
  echo "----------------------------------"
  echo "Usuario actual: ${cyan}<span class="math-inline">usuario\_actual</span>{reset}"
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
  echo "15. ${skull} Crackear contraseña (Simulado)" 
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
15\) crackear\_contrasena ;;
0\)  echo \-e "</span>{red}Saliendo del simulador...<span class="math-inline">\{reset\}" ;;
\*\)  echo \-e "</span>{red}Opción inválida.<span class="math-inline">\{reset\}" ;;
esac 
\}
\# Funciones para simular las acciones de hacking
escanear\_puertos\(\) \{
echo \-e "</span>{green} <span class="math-inline">\{escaner\} Escaneando puertos\.\.\.</span>{reset}"
  echo ""
  # Simulación de escaneo de puertos con detalles y barra de progreso
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
    echo -ne "  Progreso: $((<span class="math-inline">i \* 5\)\)%\\r"
done
echo ""
echo \-e "</span>{green} <span class="math-inline">\{escaner\} Escaneo completado\.</span>{reset}"
}

ataque_diccionario() {
  echo -e "${yellow} <span class="math-inline">\{diccionario\} Realizando ataque de diccionario\.\.\.</span>{reset}"
  echo ""
  # Simulación de ataque de diccionario con progreso y animación
  for i in {1..100}; do
    echo -ne "  Probando contraseñas... $((<span class="math-inline">i % 4\)\)  \\r"
sleep 0\.01
done
echo ""
resultado\=</span>((RANDOM % 3))
  case <span class="math-inline">resultado in
0\) echo \-e "</span>{red} <span class="math-inline">\{diccionario\} Ataque fallido\.</span>{reset}" ;;
    1) echo -e "${green} ${diccionario} Contraseña encontrada: <span class="math-inline">\{cyan\}P@</span><span class="math-inline">wOrd\!</span>{reset}" ;;
    2) echo -e "${green} ${diccionario} Contraseña encontrada: <span class="math-inline">\{cyan\}123456</span>{reset}" ;;
  esac
}

explotar_vulnerabilidad() {
  echo -e "${red} <span class="math-inline">\{exploit\} Explotando vulnerabilidad\.\.\.</span>{reset}"
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
  echo -e "${red} <span class="math-inline">\{exploit\} Vulnerabilidad explotada con éxito\.</span>{reset}"
}

escalar_privilegios() {
  echo -e "${purple} <span class="math-inline">\{privilegios\} Escalando privilegios\.\.\.</span>{reset}"
  echo ""
  # Simulación de escalada de privilegios con diferentes métodos
  metodo=$((RANDOM % 3))
  case <span class="math-inline">metodo in
0\) echo "  Usando exploit de kernel\.\.\." ;;
1\) echo "  Aprovechando vulnerabilidad de configuración\.\.\." ;;
2\) echo "  Inyectando código en proceso privilegiado\.\.\." ;;
esac
sleep 2
echo "  Obteniendo acceso root\.\.\."
sleep 1
echo \-e "</span>{purple} <span class="math-inline">\{privilegios\} Privilegios escalados con éxito\.</span>{reset}"
}

ocultar_rastro() {
  echo -e "${blue} <span class="math-inline">\{ocultar\} Ocultando rastro\.\.\.</span>{reset}"
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
  echo -e "${blue} <span class="math-inline">\{ocultar\} Rastro ocultado con éxito\.</span>{reset}"
}

obtener_info_sistema() {
  echo -e "${cyan} <span class="math-inline">\{info\} Obteniendo información del sistema\.\.\.</span>{reset}"
  echo ""
  # Mostrar información detallada del sistema
  echo "  Nombre de host: $(hostname)"
  echo "  Dirección IP: $(hostname -I)"
  echo "  Sistema operativo: $(uname -o)"
  echo "  Versión del kernel: $(uname -r)"
  echo "  Número de CPUs: $(nproc)"
  echo "  Memoria RAM total: $(free -h | awk '/^Mem/ {print $2}')"
  echo "  Espacio en disco: $(df -h | awk '$NF=="/"{printf "Disco: %d/%d GB (%s)\n", $3,$2,<span class="math-inline">5\}'\)"'"
echo ""
\}
ataque\_ddos\(\) \{
echo \-e "</span>{red} <span class="math-inline">\{ddos\} Simulando ataque DDoS\.\.\.</span>{reset}"
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
  if [[ <span class="math-inline">intensidad \-gt 70 \]\]; then
echo \-e "</span>{red} <span class="math-inline">\{ddos\} Ataque DDoS exitoso\. Objetivo fuera de línea\.</span>{reset}"
  else
    echo -e "${yellow} <span class="math-inline">\{ddos\} Ataque DDoS mitigado por el objetivo\.</span>{reset}"
  fi
}

instalar_keylogger() {
  echo -e "${yellow} <span class="math-inline">\{keylogger\} Simulando instalación de keylogger\.\.\.</span>{reset}"
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
  echo -e "${yellow} <span class="math-inline">\{keylogger\} Keylogger instalado \(simulado\)\.</span>{reset}"
}

crear_pagina_phishing() {
  echo -e "${red} <span class="math-inline">\{phishing\} Simulando creación de página de phishing\.\.\.</span>{reset}"
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
  echo -e "${red} <span class="math-inline">\{phishing\} Página de phishing creada \(simulada\)\.</span>{reset}"
}

hackear_wifi() {
  echo -e "${yellow} <span class="math-inline">\{wifi\} Simulando hackeo de red WiFi\.\.\.</span>{reset}"
  echo ""
  # Simulación de hackeo de WiFi con diferentes métodos
  metodo=$((RANDOM % 3))
  case <span class="math-inline">metodo in
0\) echo "  Usando ataque de diccionario contra WPS\.\.\." ;;
1\) echo "  Explotando vulnerabilidad en el router\.\.\." ;;
2\) echo "  Realizando ataque Man\-in\-the\-Middle\.\.\." ;;
esac
sleep 2
echo \-ne "</span>{yellow} ${loading} <span class="math-inline">\{reset\}\\r"
sleep 1
echo \-ne "</span>{yellow} ${loading} <span class="math-inline">\{reset\}\\r"
sleep 1
echo \-ne "</span>{yellow} ${loading} <span class="math-inline">\{reset\}\\r"
sleep 1
echo "  Obteniendo contraseña de la red\.\.\."
sleep 1
echo \-e "</span>{green} ${wifi} Contraseña de la red: <span class="math-inline">\{cyan\}W1f1S3gur@</span>{reset}"
}

crear_malware() {
  echo -e "${red} <span class="math-inline">\{malware\} Simulando creación de malware\.\.\.</span>{reset}"
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
  echo -e "${red} <span class="math-inline">\{malware\} Malware creado \(simulado\)\.</span>{reset}"
}

inyeccion_sql() {
  echo -e "${blue} <span class="math-inline">\{sql\} Simulando inyección SQL\.\.\.</span>{reset}"
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
  echo -e "${blue} <span class="math-inline">\{sql\} Inyección SQL exitosa \(simulada\)\.</span>{reset}"
}

ingenieria_social() {
  echo -e "${yellow} <span class="math-inline">\{social\} Simulando ingeniería social\.\.\.</span>{reset}"
  echo ""
  # Simulación de ingeniería social con diferentes técnicas
  tecnica=$((RANDOM % 3))
  case <span class="math-inline">tecnica in
0\) echo "  Enviando correo electrónico con enlace malicioso\.\.\." ;;
1\) echo "  Creando perfil falso en redes sociales\.\.\." ;;
2\) echo "  Haciéndose pasar por personal de soporte técnico\.\.\." ;;
esac
sleep 2
echo "  Obteniendo información confidencial\.\.\."
sleep 1
echo \-e "</span>{yellow} <span class="math-inline">\{social\} Ingeniería social exitosa \(simulada\)\.</span>{reset}"
}

cifrar_archivos() {
  echo -e "${purple} <span class="math-inline">\{cifrado\} Simulando cifrado de archivos\.\.\.</span>{reset}"
  echo ""
  # Simulación de cifrado de archivos
  echo "  Seleccionando archivos a cifrar..."
  sleep 1
  echo "  Generando clave de cifrado..."
  sleep 1
  echo "  Cifrando archivos..."
  sleep 2
  echo -e "${purple} <span class="math-inline">\{cifrado\} Archivos cifrados \(simulado\)\.</span>{reset}"
}

crackear_contrasena() { 
  echo -e "${red} ${skull} Crackear contraseña (Simulado) <span class="math-inline">\{reset\}"
echo ""
\# Simulación de crackeo de contraseña con fuerza bruta
echo "  Iniciando ataque de fuerza bruta\.\.\."
sleep 1
echo "  Probando combinaciones de caracteres\.\.\."
sleep 2
echo \-ne "</span>{red} ${loading} <span class="math-inline">\{reset\}\\r"
sleep 1
echo \-ne "</span>{red} ${loading} <span class="math-inline">\{reset\}\\r"
sleep 1
echo \-ne "</span>{red} ${loading} <span class="math-inline">\{reset\}\\r"
sleep 1
echo ""
resultado\=</span>((RANDOM % 2))
  if [[ <span class="math-inline">resultado \=\= 0 \]\]; then
echo \-e "</span>{green} ${skull} Contraseña crackeada: <span class="math-inline">\{cyan\}S3cr3t0\!</span>{reset}"
  else
    echo -e "${red} <span class="math-inline">\{skull\} No se pudo crackear la contraseña\.</span>{reset}"
  fi
}

# Bucle principal

mostrar_login

while true;
