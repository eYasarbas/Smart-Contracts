// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ProductStore {
    // Ürün veri yapısı
    struct Product {
        uint256 id;
        string name;
        uint256 price;
    }

    // Ürün listesi
    Product[] public products;

    // Ürün ekleme fonksiyonu
    function addProduct(string memory _name, uint256 _price) public {
        uint256 id = products.length + 1;
        products.push(Product(id, _name, _price));
    }

    // Ürün arama fonksiyonu
    function getProduct(uint256 _id) public view returns (Product memory) {
        return products[_id - 1];
    }

    // Ürünleri listeleme fonksiyonu
    function getProducts() public view returns (Product[] memory) {
        return products;
    }

    // Ürün güncelleme fonksiyonu
    function updateProduct(
        uint256 _id,
        string memory _name,
        uint256 _price
    ) public {
        require(msg.sender == address(this));
        products[_id - 1].name = _name;
        products[_id - 1].price = _price;
    }
}

// Sadece sahibi tarafından çağrılmasına izin verilen modifier
/* modifier onlyOwner() {
        require(msg.sender == address(this), "Sadece sahibi tarafından çağrılabilir");
        _;
    }*/
