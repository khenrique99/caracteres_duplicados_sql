create database arquivo;
use arquivo;

create table caixas (
id int auto_increment primary key,
numero_caixa int not null,
tipo_caixa varchar(10) not null,
data_guarda date
);

insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000100','PADRAO','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000101','PADRAO','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000102','PADRAO','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000103','PADRAO','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000103','BOX','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000101','PLASTICA','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000104','PLASTICA','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000106','BOX','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000102','PLASTICA','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000106','PADRAO','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000102','PLASTICA','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000130','PLASTICA','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000125','PLASTICA','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000110','PADRAO','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000110','PLASTICA','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000109','PLASTICA','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000108','BOX','2021-05-25');
insert into caixas (numero_caixa, tipo_caixa, data_guarda) values ('143000108','PLASTICA','2021-05-25');

/* COMANDO PARA SABER AS CAIXAS DUPLICADAS NO SISTEMA (QUANDO HÁ MAIS DE UMA VEZ COM A MESMA NUMERAÇÃO) */
select numero_caixa as 'NUMERO DA CAIXA', count(*) as "VEZES QUE A CAIXA ESTÁ DUPLICADA NO SISTEMA" from caixas group by numero_caixa having count(*)>1 order by numero_caixa;