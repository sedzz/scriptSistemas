#!/bin/bash

# Configuración de la dirección de correo electrónico del remitente y del destinatario
FROM="pruebasgnulinux@gmail.com"
TO=$(cat correo)

# Configuración del asunto y el cuerpo del mensaje
SUBJECT="Infracción en el sistema"
BODY="Se ha producido una infracción en el sistema. Por favor, investigue el asunto lo antes posible."

# Detección de infracción en el sistema
if [ -f "/var/log/secure" ]; then
    if grep "authentication failure" /var/log/secure; then
        INFRINGEMENT_DETECTED=true
    fi
fi

# Envío del correo electrónico si se ha detectado una infracción
if [ "$INFRINGEMENT_DETECTED" = true ]; then
    echo "Subject: $SUBJECT" > /tmp/email.txt
    echo -e "To: $TO\nFrom: $FROM\n\n$BODY" >> /tmp/email.txt
    ssmtp $TO < /tmp/email.txt
    rm /tmp/email.txt
fi
