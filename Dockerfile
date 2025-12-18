# Используем лёгкий образ с Nginx
FROM nginx:alpine

# Копируем весь проект в папку для статических файлов Nginx
COPY . /usr/share/nginx/html

# Контейнер слушает порт 80
EXPOSE 80

# Запускаем Nginx в фоновом режиме
CMD ["nginx", "-g", "daemon off;"]