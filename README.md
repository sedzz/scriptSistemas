## Esto es un script de Administracion para sistemas Linux

# Tiene 3 Apartados:
1. Gestionar la Red
  -Aqui puedes configurar tu adaptador de red y gestionar los equipos conectados a la red
2. Servicios y Procesos
  -En este apartado obtienes informacion sobre los procesos y servicios del sistema asi como gestionarlos
3. Copias de seguridad
  -Por ultimo, aqui podras realizar copias de seguridad de los archivos que quieras, comprimiendolos y eligiendo el output

Para instalar el script:
!(Te pedira el correo electronico donde te llegaran avisos sobre infracciones del sistema)!
```
sudo apt update
sudo apt install git
git clone https://github.com/sedzz/scriptSistemas.git
cd scriptSistemas
chmod +x instalador
./instalador
```
Para ejecutar el menu de administracion
```
./main
```
