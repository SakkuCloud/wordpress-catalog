# Wordpress-Catalog - A custom Wordpress image from the [official Wordpress](https://github.com/docker-library/wordpress)

This is a custom wordpress Docker image from original wordpress [repository](https://github.com/docker-library/wordpress)
The following `php.ini` parameters can be set as extra environment variables than the original ones at docker container instantiation or even using a docker-compose file:

        short_open_tag
		output_buffering
        open_basedir            
		disable_functions        
		expose_php               
		max_execution_time       
		max_input_time           
		memory_limit             
		display_errors           
		display_startup_errors   
		log_errors               
		log_errors_max_len       
		ignore_repeated_errors   
		ignore_repeated_source   
		post_max_size             
		file_uploads              
		upload_tmp_dir           
		upload_max_filesize       
		max_file_uploads          
		allow_url_fopen            
		allow_url_include          
		SMTP                        
		smtp_port  


## Contents

* [Motivations](https://github.com/SakkuCloud/wordpress-catalog#motivations)
* [Prerequisities](https://github.com/SakkuCloud/wordpress-catalog#Prerequisities)
* [How to build](https://github.com/SakkuCloud/wordpress-catalog#how-to-build)
* [How to use](https://github.com/SakkuCloud/wordpress-catalog#how-to-use)

## Motivations

To work properly Wordpress needs PHP parameters to be configured manually at run time. So, we have created a custom wordpress docker images to easily configure the most important php.ini parameters at container instantiation.

## Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

## How to build

First clone the Dockerfile:
```shell
$ git clone https://github.com/SakkuCloud/wordpress-catalog.git
```
then build the image:

```shell
$ docker build -t catalog-wordpress:latest .
```
Note: you can use catalog-wordpress or any preferred name to build the image.

## How to use

docker run:
 You can run the image as a normal docker image.
 ### e.g
 ```shell
 $ docker run --rm --env memory_limit=512M --env allow_url_include=On --name mywordpress wordpress-catalog:latest
  ```
### Note: if you want to use the default values, simply run:
````shell
$ docker run --rm --name mywordpress wordpress-catalog:latest
````
