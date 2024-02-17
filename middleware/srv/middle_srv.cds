using { NorthWind as External } from './external/NorthWind';

service catalog {

entity Products as projection on External.Products {
key ID,
Name,
Description,
Price,
Rating
}
    

}