#p3.SQL


drop table if exists Categories;
create table Categories (
        CategoryID int signed not null auto_increment primary key,
        Category varchar (120),
        Description text
);

/* Science links - Technology, Climate, Space */
insert into Categories values (NULL,'Technology','technology links');
insert into Categories values (NULL,'Climate','climate links');
insert into Categories values (NULL,'Space','space links');

/* World links - US, EU, Asia */
insert into Categories values (NULL,'United States','US links');
insert into Categories values (NULL,'European Union','EU links');
insert into Categories values (NULL,'Asia','Asia links');

/* Health links - Sleep, Disease, Medicine */
insert into Categories values (NULL,'Sleep','sleep links');
insert into Categories values (NULL,'Disease','disease links');
insert into Categories values (NULL,'Medicine','medicine links');


drop table if exists Feed;
create table Feed (
        LinkID int signed not null auto_increment primary key,
        Description text,
        CategoryID int DEFAULT 0,
        URL varchar (255)
);


/* Technology */
insert into Feed values (1,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=technology&oq=technology&gs_l=news-cc.3..43j0l9j43i53.1990.3257.0.3466.10.8.0.2.2.0.81.552.8.8.0...0.0...1ac.1.ubnm42YaefQ', NULL,'technology links');

/* Climate */
insert into Feed values (2,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=climate&oq=climate&gs_l=news-cc.3..43j0l9j43i53.10972.11530.0.11655.7.5.0.1.1.0.150.500.3j2.5.0...0.0...1ac.1.hwQZtEdj4tQ', NULL,'climate links');

/* Space */
insert into Feed values (3,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=space&oq=space&gs_l=news-cc.3..43j0l9j43i53.1868.2364.0.2833.5.5.0.0.0.0.116.407.4j1.5.0...0.0...1ac.1.A40QRxiw9ZQ', NULL,'space links');

/* US */
insert into Feed values (4,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=united+states&oq=united+states&gs_l=news-cc.3..43j0l9j43i53.1403.2746.0.3218.13.6.0.7.7.0.72.369.6.6.0...0.0...1ac.1.F4kzjSrmyw8', NULL,'US links');

/* EU */
insert into Feed values (5,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=european+union&oq=european+union&gs_l=news-cc.3..43j0l9j43i53.1270.3310.0.6228.14.9.0.5.5.0.119.741.7j2.9.0...0.0...1ac.1.Sr80fN2hnPk', NULL,'EU links');

/* Asia */
insert into Feed values (6,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=asia&oq=asia&gs_l=news-cc.3..43j0l9j43i53.1411.1651.0.1828.4.4.0.0.0.0.142.389.3j1.4.0...0.0...1ac.1.KUBNTwh2Eqw', NULL,'Asia links');

/* Sleep */
insert into Feed values (7,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=sleep&oq=sleep&gs_l=news-cc.3..43j0l9j43i53.3314.3941.0.4233.5.4.0.1.1.0.97.294.4.4.0...0.0...1ac.1.vSsYLJkpIEI', NULL,'sleep links');

/* Disease */
insert into Feed values (8,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=disease&oq=disease&gs_l=news-cc.3..43j0l9j43i53.1472.2100.0.2569.7.5.0.2.2.0.73.350.5.5.0...0.0...1ac.1.tW7ZgLKZVeo', NULL,'disease links');

/* Medicine */
insert into Feed values (9,'https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=medicine&oq=medicine&gs_l=news-cc.3..43j0l9j43i53.1399.2636.0.2823.8.7.0.1.1.0.82.504.7.7.0...0.0...1ac.1.jb5PmHbe9eY', NULL,'medicine links');













