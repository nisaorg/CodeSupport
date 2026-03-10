/*Mostrar nombres con las cuentas que poseen*/
select nombre from cliente where id_cliente in (select id_cliente from cuenta group by id_cliente having count(*)>2);
/*Mostrar nombres con mas de dos cuentas*/
select cl.id_cliente, cl.nombre, cl.apellido, cl.apellido2, count(*) from cliente cl join cuenta cu on cl.id_cliente=cu.id_cliente group by cl.id_cliente, cl.nombre, cl.apellido, cl.apellido2 having count(*)>2;
