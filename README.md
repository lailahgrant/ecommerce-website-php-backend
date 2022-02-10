# ecommerce-website-php-backend
E-commerce website in PHP - backend

E-commerce Website in `OOP Php`, `Bootstrap`, `Owl carousel`, `PHP partial Template`, `SASS`, `Google Fonts`, `font-awesome` and `JQuery`.

> Used technologies :-
>- HTML & CSS
>- jQuery
>- Isotope Library for sorting or filtering
>- PHP & MySQLi
>- Git - version control
>- cdnjs.com

#### About Project
- Shopping website with products.
- Shopping cart where you can `add`, `reduce`, `delete`, `save to Wishlist`.
- Sort items by product names (filter items by brand names)

> Installs and links
>- added cdn links of `fontawesome`, `owl carousel`, `bootstrap` from [cdnjs](https://cdnjs.com/)
>- install SASS 
>- - npm init
>- - npm i -g sass
>- - Add `start` to compile sass on save 
    "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "start":"sass ./sass/style.scss style.css --watch"
  },
> - - `npm start` in terminal

#### PHP Partial Templates 
> - Turn .html files into .php files
- Separate sections into different PHP files
- - They're in `Template` folder.
- Partial Template files start with an `_` e.g. `_banner-area.php`


### Connect MySQL database
- go to `phpMyAdmin` and create new `database`.
- connect to the `database` using `OOP`.