drop table if exists project_user;
drop table if exists project_cart;

create table project_user (
      username varchar (50) PRIMARY KEY,
      creation_date timestamp not null default CURRENT_TIMESTAMP,
      last_login timestamp not null,
      email varchar (200) not null,
      salt char (21) not null,
      password char (60) not null,
      unique key (email)
      );
      
      
create table project_cart(
        username varchar(50) not null,
        foreign key(username) references project_user(username),
        cart_index int(40) not null,
        foreign key(cart_index) references project_index(this_index),
        quantity int(40) not null # CHECK > TRIGGER
        );

