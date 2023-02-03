# ProductStore Smart Contract

A smart contract that allows you to store product information and perform basic operations such as adding, retrieving, listing, and updating products.

# Prerequisites

Solidity v0.8.0 or later
A development environment for deploying and testing smart contracts, such as Truffle or Ganache

# Contract Details

The Product struct holds the following information for each product:

- id: a unique identifier for the product
- name: the name of the product
- price: the price of the product
- The products array holds all the products in the store.
- The addProduct function allows you to add a new product to the store by providing the product name and price.
- The getProduct function allows you to retrieve a product by its id.
- The getProducts function allows you to retrieve all the products in the store.
- The updateProduct function allows you to update the product information (name and price) by providing the product id, but it is only available to the contract owner.

# Deployment

You can deploy the contract using a development environment such as Truffle or Ganache. Once deployed, you can interact with the contract using a client such as MetaMask.

# Note

This is a basic smart contract and should not be used in a production environment without proper testing and security measures in place.
