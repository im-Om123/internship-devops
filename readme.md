step 1 .install docker or setup docker
	sudo apt-get update( for update)
	sudo apt install docker.io ( install the docker latest version)
	sudo systemctl enable docker ( to enable the docker service)
	sudo systemctl status docker ( to see the satus )sud
step2. build an docker images 
	docker ps ( shows the running images)
	docker run -d images name(run images in background)
	docker images (show the no.of images installed)
	docker rmi image-name (remove images)
	docker rmi -f images-name(remove images forcefully)
	docker run images name (run the images )
	docker pull images name( pull the imges from the docker hub)
	docker logs ( show the log of the images)
	docker ps -a (show all the contianer )

	PORT binding
	docker run -b -p portnumber:port(9000:80) images  name
	give specefic name for container
	docker run --name give name 
step 3: build an dockerfile without any extention
	and include this code into that docker files
	:
        # Use an official PHP image with Nginx
	FROM php:8.1-fpm

	# Install Nginx
	RUN apt-get update && apt-get install -y nginx

	# Copy application code into the container
	COPY . /var/www/html

	# Set correct permissions for the web server
	RUN chown -R www-data:www-data /var/www/html

	# Expose the default Nginx port
	EXPOSE 80

	# Start PHP-FPM and Nginx
	CMD ["sh", "-c", "php-fpm & nginx -g 'daemon off;'"]
step 4: compose
	compose the docker file
	nano docker-compose.yml
	# Build and start all services
	docker-compose up -d

	# Build without using cache
	docker-compose build --no-cache

	# Stop services
	docker-compose down

	# View running containers
	docker-compose ps

	# View logs
	docker-compose logs
step 5 : push in to git
 
