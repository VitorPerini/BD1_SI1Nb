REM   Script: BD Biblioteca
REM   .

create table Venda ( 
    id_venda number not null constraint venda_pk primary key, 
    data date not null, 
    total number not null, 
    vendedor_funcionario_id number not null, 
    id1 number not null, 
    funcionario_id number 
);

alter table Venda add constraint venda_id_venda_uq unique (id_venda);

alter table Venda add constraint venda_vendedor_funcionario__uq unique (vendedor_funcionario_id);

alter table Venda add constraint venda_id1_uq unique (id1);

alter table Venda add constraint venda_funcionario_id_uq unique (funcionario_id);

create table Cliente ( 
    id number not null constraint cliente_pk primary key, 
    cpf varchar2(32) not null, 
    endereço varchar2(60), 
    Telefone varchar2(13));/ 
 
alter table Cliente add constraint cliente_id_uq unique (id);

alter table Cliente add constraint cliente_cpf_uq unique (cpf);

alter table Cliente add constraint cliente_telefone_uq unique (Telefone);

create table Venda ( 
    id number not null constraint venda_pk primary key, 
    data date not null, 
    total number not null);

alter table Venda add constraint venda_id_uq unique (id);

alter table Venda add constraint venda_total_uq unique (total);

create table Livro ( 
    id_livro number not null, 
    isbn number not null constraint livro_pk primary key, 
    quantidade number not null, 
    autor varchar2(32) not null, 
    venda_id number not null, 
    id1 number not null 
);

alter table Livro add constraint livro_id_livro_uq unique (id_livro);

alter table Livro add constraint livro_isbn_uq unique (isbn);

alter table Livro add constraint livro_venda_id_uq unique (venda_id);

alter table Livro add constraint livro_id1_uq unique (id1);

create table editora ( 
    id_editora number not null constraint editora_pk primary key, 
    endereco varchar2(60) not null, 
    telefone varchar2(4000) not null, 
    gerente varchar2(32) not null 
);

alter table editora add constraint editora_id_editora_uq unique (id_editora);

alter table editora add constraint editora_telefone_uq unique (telefone);

alter table editora add constraint editora_gerente_uq unique (gerente);

create table atendente ( 
    id_atendente number not null, 
    nota number not null, 
    funcionario_id number not null constraint atendente_pk primary key 
);

alter table atendente add constraint atendente_id_atendente_uq unique (id_atendente);

alter table atendente add constraint atendente_nota_uq unique (nota);

alter table atendente add constraint atendente_funcionario_id_uq unique (funcionario_id);

create table Vendedor ( 
    id_vendedor number, 
    comissao number not null, 
    funcionario_id number not null constraint vendedor_pk primary key 
);

alter table Vendedor add constraint vendedor_id_vendedor_uq unique (id_vendedor);

alter table Vendedor add constraint vendedor_funcionario_id_uq unique (funcionario_id);

create table atendimento ( 
    id_atendimento  number not null constraint atendimento_pk primary key, 
    descricao varchar2(4000) not null, 
    data date not null, 
    avaliacao varchar2(4000), 
    atendente_funcionario_id number not null, 
    funcionario_id number not null 
);

alter table atendimento add constraint atendimento_id_atendimento _uq unique (id_atendimento );

alter table atendimento add constraint atendimento_atendente_funci_uq unique (atendente_funcionario_id);

alter table atendimento add constraint atendimento_funcionario_id_uq unique (funcionario_id);

create table funcionario  ( 
    id_funcionario number not null constraint funcionario _pk primary key, 
    matricula number not null, 
    cpf varchar2(4000) not null, 
    nome varchar2(32) not null, 
    sobrenome varchar2(32) not null, 
    filial_id number not null, 
    id1 number not null 
);

alter table funcionario  add constraint funcionario _id_funcionario_uq unique (id_funcionario);

alter table funcionario  add constraint funcionario _matricula_uq unique (matricula);

alter table funcionario  add constraint funcionario _cpf_uq unique (cpf);

alter table funcionario  add constraint funcionario _filial_id_uq unique (filial_id);

alter table funcionario  add constraint funcionario _id1_uq unique (id1);

create table Filial ( 
    id_filial number not null constraint filial_pk primary key, 
    cnpj varchar2(4000) not null 
);

alter table Filial add constraint filial_id_filial_uq unique (id_filial);

alter table Filial add constraint filial_cnpj_uq unique (cnpj);

create table Venda (  
    id_venda number not null constraint venda_pk primary key,  
    data date not null,  
    total number not null,  
    vendedor_funcionario_id number not null,  
    id1 number not null,  
    funcionario_id number  
);

alter table Venda add constraint venda_id_venda_uq unique (id_venda) 
alter table Venda add constraint venda_vendedor_funcionario__uq unique (vendedor_funcionario_id) 
alter table Venda add constraint venda_id1_uq unique (id1) 
alter table Venda add constraint venda_funcionario_id_uq unique (funcionario_id);

