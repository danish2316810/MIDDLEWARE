namespace ODataDemo;

entity Products {
    key ID             : Integer;
    Name               : String;
    Description        : String;
    Price              : Decimal(10, 2);
    Rating             : Integer;
  
    Supplier           : Association to Supplier;
}

entity Supplier {
    key ID             : Integer;
    Name               : String;
    Address            : Association to Address;
    Concurrency        : Integer;
    Products           : Association to Products;
}

entity Address {
    key ID             : Integer;
    Street             : LargeString;
    City               : LargeString;
    State              : LargeString;
    ZipCode            : LargeString;
    Country            : LargeString;
}

// Define additional entities as needed
