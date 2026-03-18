#!/bin/bash
#mkdir myagent && cd myagent

# 1. Obtén la URL real desde la UI de Azure DevOps, será algo como:
#curl -O https://vstsagentpackage.blob.core.windows.net/agent/4.248.0/vsts-agent-linux-x64-4.248.0.tar.gz

# 2. Extrae (usa el nombre exacto del archivo que descargaste)
#tar zxvf vsts-agent-linux-x64-4.248.0.tar.gz

# 3. Configura
./config.sh

# 4. Corre el agente
#sudo ./run.sh

# Instala el servicio
./svc.sh install

# Inicia el servicio
./svc.sh start

# Verifica que está corriendo
./svc.sh status

#sudo ./svc.sh status    # ver si está corriendo
#sudo ./svc.sh stop      # detener
#sudo ./svc.sh start     # iniciar
#sudo ./svc.sh restart   # reiniciar
#sudo ./svc.sh uninstall # desinstalar el servicio