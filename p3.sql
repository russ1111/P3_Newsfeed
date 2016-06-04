#p3.SQL


drop table if exists Categories;
create table Categories (
        CategoryID int signed not null auto_increment primary key,
        Category varchar (120),
        Description text
);

/* Science links - Technology, Climate, Space */
insert into Categories values (NULL,'Science','science links');
insert into Categories values (NULL,'World','world links');
insert into Categories values (NULL,'Health','health links');


drop table if exists Feed;
create table Feed (
        LinkID int signed not null auto_increment primary key,
        URL varchar (255),
        CategoryID int DEFAULT 0,
        Category varchar (120),
        Description text
);


/* Technology */
insert into Feed values (NULL,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=technology&oq=technology&gs_l=news-cc.3..43j0l9j43i53.1990.3257.0.3466.10.8.0.2.2.0.81.552.8.8.0...0.0...1ac.1.ubnm42YaefQ', 1,'Technology','technology links');

/* Climate */
insert into Feed values (NULL,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=climate&oq=climate&gs_l=news-cc.3..43j0l9j43i53.10972.11530.0.11655.7.5.0.1.1.0.150.500.3j2.5.0...0.0...1ac.1.hwQZtEdj4tQ', 1,'Climate','climate links');

/* Space */
insert into Feed values (NULL,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=space&oq=space&gs_l=news-cc.3..43j0l9j43i53.1868.2364.0.2833.5.5.0.0.0.0.116.407.4j1.5.0...0.0...1ac.1.A40QRxiw9ZQ', 1,'Space','space links');

/* US */
insert into Feed values (NULL,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=united+states&oq=united+states&gs_l=news-cc.3..43j0l9j43i53.1403.2746.0.3218.13.6.0.7.7.0.72.369.6.6.0...0.0...1ac.1.F4kzjSrmyw8', 2,'US','US links');

/* EU */
insert into Feed values (NULL,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=european+union&oq=european+union&gs_l=news-cc.3..43j0l9j43i53.1270.3310.0.6228.14.9.0.5.5.0.119.741.7j2.9.0...0.0...1ac.1.Sr80fN2hnPk', 2,'EU','EU links');

/* Asia */
insert into Feed values (NULL,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=asia&oq=asia&gs_l=news-cc.3..43j0l9j43i53.1411.1651.0.1828.4.4.0.0.0.0.142.389.3j1.4.0...0.0...1ac.1.KUBNTwh2Eqw', 2,'Asia','Asia links');

/* Sleep */
insert into Feed values (NULL,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=sleep&oq=sleep&gs_l=news-cc.3..43j0l9j43i53.3314.3941.0.4233.5.4.0.1.1.0.97.294.4.4.0...0.0...1ac.1.vSsYLJkpIEI', 3,'Sleep','sleep links');

/* Disease */
insert into Feed values (NULL,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=disease&oq=disease&gs_l=news-cc.3..43j0l9j43i53.1472.2100.0.2569.7.5.0.2.2.0.73.350.5.5.0...0.0...1ac.1.tW7ZgLKZVeo', 3,'Disease','disease links');

/* Medicine */
insert into Feed values (NULL,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=medicine&oq=medicine&gs_l=news-cc.3..43j0l9j43i53.1399.2636.0.2823.8.7.0.1.1.0.82.504.7.7.0...0.0...1ac.1.jb5PmHbe9eY', 3,'Medicine','medicine links');













