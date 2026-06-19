
# Vagrant 

**NOTA:** Es un orquestador de vms no es muy usado, actualmente docker es la mejor opción. pero funcionar muy bien para labs y simulaciones.

**NOTA:** Debes intalar [virtual box](https://www.virtualbox.org/wiki/Downloads) primero.

## Instalacion de plugins 

```bash
vagrant plugin install vagrant-disksize
```

### Comandos bases

```bash 
# apagar o reanudar vms
vagrant halt
vagrant resume 

# destruir vms
vagrant destroy -f 
# levantar vms
vagrant up

# para acceder a la vm
vagrant ssh
```

### SSH entry

```bash
# 1 ver clabe publica de tu maquina windows 
type $env:USERPROFILE\.ssh\id_rsa.pub   # 2. copiar clave (opcional)
# 1.1 ver en el wsl 
cat ~/.ssh/id_rsa.pub # 2. copiar clave (opcional)
 

# 3. pegar dentro del servidor vm
nano ~/.ssh/authorized_keys 
```


## Errors

## Error por cambio de ip 

```bash 
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

## realizar este comando a la ip que quieres ingresar
ssh-keygen -R xxx.xxx.xxx.xxx

## Validar configuracion
cat /etc/ssh/sshd_config 
```