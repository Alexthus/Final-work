# Final-work

Проект по созданию операционной системы управления робота-пылесоса с установленными дачтиками и исполнитеьными устройствами на базе OC Linux. 
- LIDAR Velodyne VLP-16
- контроллеры двигателей колёс ODrive
- IMU-датчик XSens MTI-1

Для установки необходимо выполнить следущие шаги:

1. Заугрузить дистрибутив на компьютер с помощью SSH: git clone git@github.com:Alexthus/Final-work.git
2. Скрипт, устанавливающий драйверы датчиков и котроллеров - driver_install.bash понадобится для сборки образа.
3. Соберите Docker-образ (custom_image_01) из Dockerfile.
        	docker build -t custom_image_01 .
4. Загруите и запустите образ на роботе:
        	docker run -it custom_image_01

5. Запустите узлы контролеров двигателей колёс roslaunch roslaunch.launch
