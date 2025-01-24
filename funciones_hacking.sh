#!/bin/bash

# ... (Colores e iconos - igual que antes) ...

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

# Funciones para simular las acciones de hacking

escanear_puertos() {
  echo -e "${green} ${escaner} Escaneando puertos...${reset}"
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

# ... (Resto de las funciones - similar a ataque_diccionario, con más detalles y animaciones) ...
