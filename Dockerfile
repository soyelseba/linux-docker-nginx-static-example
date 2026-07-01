FROM nginx:alpine

# Reemplaza la configuración por una más amigable para sitios estáticos
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia el código del estudiante
COPY site/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
