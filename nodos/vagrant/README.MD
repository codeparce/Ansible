
# Vagrant 

    NOTA: Es un orquestador de vms no muy usado actualmente por docker

NOta: si se genera este error

```bash 
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

## realizar este comando a la ip que quieres ingresar
ssh-keygen -R 192.168.100.183

## Validar configuracion
cat /etc/ssh/sshd_config 
```


### Comandos bases

```bash 
# apagar vms
vagrant halt
# destruir vms
vagrant destroy -f 
# levantar vms
vagrant up
# para acceder a la vm
vagrant ssh


# ver key en power
type $env:USERPROFILE\.ssh\id_rsa.pub  

cp /home/jdorado/.ssh/id_rsa.pub  .

nano .ssh/authorized_keys 
```

