# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Order
	- shpping_total: 100
	- address_id

Address
	- name
	- address_line_1
	- address_line_2
	- city
	- state
	- zipcode
	- country
	- mobile_number


ShippingMethod	
	id
	name
	price
	
	1. 1 Day delivery () ---> Rs. 100
	2. Standard delivery (7-8 days) Rs. 0


ShippingRate
	id
	order_id
	shipping_method_id
	rate



Payment









