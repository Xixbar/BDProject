-- Database: mande_db

--DROP DATABASE mande_db;

CREATE DATABASE mande_db
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

\c mande_db

CREATE TABLE usuario (
    id_usuario SERIAL not null,
    nombre_usuario VARCHAR(64) not null,
    fecha_nacimiento_usuario DATE not null,
    sexo_usuario VARCHAR(1) not null,
    direccion_usuario VARCHAR(64) not null,
    foto_recibo TEXT null,
    email VARCHAR(64) not null,
    celular bigint not null,
    medio_de_pago bigint not null,
    PRIMARY KEY (email,celular)
);

-- CREATE TABLE direccion_Usuario (
--     FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
--     nombre_direccion_usuario VARCHAR(64) not null,
--     longitud_usuario DECIMAL(24) not null,
--     latitud_usuario DECIMAL(24) not null
-- );

-- CREATE TABLE servicio (
--     id_servicio SERIAL not null,
--     id_usuario int not null,
--     id_trabajador
--     estrellas_trabajador
--     precio_hora
--     id_pago
--     FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
--     FOREIGN KEY (id_trabajador) REFERENCES trabajador(id_trabajador),
--     FOREIGN KEY (estrellas_trabajador) REFERENCES trabajador(estrellas_trabajador),
--     distancia_trabajador DECIMAL(3) not null,
--     horas_servicio INTEGER not null,
--     FOREIGN KEY (precio_hora) REFERENCES labor(precio_hora),
--     FOREIGN KEY (id_pago) REFERENCES pago(id_pago),
--     PRIMARY KEY (id_servicio)
-- );

-- CREATE TABLE pago (
--     id_pago SERIAL not null,
--     FOREIGN KEY (id_servicio) REFERENCES servicio(id_servicio),
--     valor_pago INTEGER(10) not null,
--     estado_pago BOOLEAN not null,
--     PRIMARY KEY (id_pago)
-- );

CREATE TABLE trabajador (
    id_trabajador SERIAL not null,
    contraseña_trabajador VARCHAR(64) not null,
    nombre_trabajador VARCHAR(64) not null,
    fecha_nacimiento_trabajador DATE not null,
    sexo_trabajador VARCHAR(1) not null,
    foto_perfil BYTEA not null,
    foto_cedula BYTEA not null,
   -- direccion_trabajador ,
  --  labores_trabajador ,
    estrellas_trabajador INTEGER not null,
    PRIMARY KEY (id_trabajador)
);

-- CREATE TABLE direccion_Trabajador (
--     FOREIGN KEY (id_trabajador) REFERENCES trabajador(id_trabajador),
--     nombre_direccion_trabajador VARCHAR(64) not null,
--     longitud_trabajador DECIMAL(24) not null,
--     latitud_trabajador DECIMAL(24) not null
-- );

-- CREATE TABLE labores_Trabajador (
--     FOREIGN KEY (id_trabajador) REFERENCES trabajador(id_trabajador),
--     FOREIGN KEY (id_labor) REFERENCES labor(id_labor),
--     PRIMARY KEY (id_trabajador, id_labor)
-- );

CREATE TABLE labor (
    id_labor SERIAL not null,
    nombre_labor VARCHAR(64) not null,
    precio_hora INTEGER not null,
    PRIMARY KEY (id_labor)
);