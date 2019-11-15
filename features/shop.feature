Feature: Keep track of inventory
	As a employee
	I want to keep track of inventory

Background:
	Given a product pen with quantity 900 in stock
	Given a product notebook with quantity 500 in stock

Scenario: Customer buy one product
	When customer buy pens with quantity 12
	Then pens quantity in stock should be 888

Scenario: Customer buy multiple products
	When customer buy pens with quantity 5
	And customer buy notebooks with quantity 3
	Then pens quantity in stock should be 895
	And notebooks quantity in stock should be 497

Scenario: Re-order one product
	When I order pens with quantity 100
	Then pens quantity in stock should be 1000

Scenario: Re-order multiple product
	When I order pens with quantity 120
	And I order notebooks with quantity 80
	Then pens quantity in stock should be 1020
	Then notebooks quantity in stock should be 580
