Feature: Keep track of inventory
	As a employee
	I want to keep track of inventory

Background:
	Given a product t-shirt with quantity 100 in stock
	Given a product short with quantity 50 in stock

Scenario: Customer buy one product
	When customer buy t-shirt with quantity 2
	Then t-shirt quantity in stock should be 98

Scenario: Customer buy multiple products
	When customer buy t-shirt with quantity 4
	And customer buy short with quantity 2
	Then t-shirt quantity in stock should be 96
	And short quantity in stock should be 48

Scenario: Re-order one product
	When I order short with quantity 15
	Then short quantity in stock should be 65

Scenario: Re-order multiple product
	When I order t-shirt with quantity 150
	And I order short with quantity 100
	Then t-shirt quantity in stock should be 250
	Then short quantity in stock should be 150