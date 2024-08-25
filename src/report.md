1. [Готовый докер](#part-1-готовый-докер) 
2. [Операции с контейнером](#part-2-операции-с-контейнером) 


## Part 1. Готовый докер

Берем официальный докер образ с **nginx** и выкачиваем его при помощи `docker pull nginx`       
![pull](../misc/rep_img/1.png)      
Проверяем наличие докер образа через `docker images`        
![images](../misc/rep_img/2.png)      
Запускаем докер образ через `docker run -d nginx`       
![run](../misc/rep_img/3.png)      
Проверяем, что образ запустился через `docker ps`       
![ps](../misc/rep_img/4.png)      
Смотрим информацию о контейнере через `docker inspect`     
Размер контейнера           
![size](../misc/rep_img/5.png)        
Список замапленых портов        
![port's list](../misc/rep_img/6.png)          
ip контейнера       
![ip adresses](../misc/rep_img/7.png)              
Останавливаем докер образ через `docker stop`        
![stop](../misc/rep_img/8.png)      
Проверяем, что образ остановился через `docker ps`      
![ps](../misc/rep_img/9.png)          
Запускаем докер с портами 80 и 443 в контейнере, замапленными на такие же порты на локальной машине, через команду `docker run -d -p 80:80 -p 443:443 nginx`       
![run](../misc/rep_img/10.png)      
Проверяем, что в браузере по адресу *localhost:80* доступна стартовая страница **nginx**        
![start page](../misc/rep_img/11.png)       
![start page](../misc/rep_img/12.png)         
Перезапускаем докер контейнер через `docker restart`      
Проверяем, что контейнер запустился      
![ps](../misc/rep_img/13.png)          

## Part 2. Операции с контейнером

Конфигурационный файл *nginx.conf* внутри докер контейнера через команду *exec*

![config](../misc/rep_img/14.png)         

Создаем на локальной машине файл *nginx.conf*
Настраиваем в нем по пути */status* отдачу страницы статуса сервера nginx

![status](../misc/rep_img/15.png)         

Копируем созданный файл *nginx.conf* внутрь докер образа через команду `docker cp`

![docker cp](../misc/rep_img/16.png)              

Перезапускаем nginx внутри докер образа через команду *exec*

![reboot](../misc/rep_img/17.png)             

Проверяем, что по адресу *localhost:80/status* отдается страничка со статусом сервера nginx

![localhost page](../misc/rep_img/18.png)             
![localhost page](../misc/rep_img/19.png)        

Экспортируем контейнер в файл *container.tar* через команду *export*

![export](../misc/rep_img/20.png)            

Остановливаем контейнер

![stop](../misc/rep_img/21.png)             

Удаляем образ через `docker rmi [image_id|repository]`, не удаляя перед этим контейнеры

![delite image](../misc/rep_img/22.png)         

Удаляем остановленный контейнер

![delite ](../misc/rep_img/23.png)            

Импортируем контейнер обратно через команду *import*

![import](../misc/rep_img/24.png)             

Запускаем импортированный контейнер

![run](../misc/rep_img/25.png)            

Проверяем, что по адресу *localhost:80/status* отдается страничка со статусом сервера nginx

![check page](../misc/rep_img/26.png)               
![check page](../misc/rep_img/27.png)            





