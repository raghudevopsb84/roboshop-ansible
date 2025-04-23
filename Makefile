default:
	git pull
	ansible-playbook -i $(app_name)-dev.rdevopsb84.online, -e ansible_user=azuser -e ansible_password=DevOps@123456 -e app_name=$(app_name) roboshop.yml

all:
	git pull
	make frontend
	make mongodb
	make redis
	make mysql
	make rabbitmq
	make catalogue
	make user
	make cart
	make shipping
	make payment

