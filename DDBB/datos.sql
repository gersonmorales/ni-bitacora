INSERT INTO  especialidad (esp_id, esp_nombre)
VALUES (1,'Fonoaudiologo'), (2,'Terapeuta Ocupacional'), 
       (3,'Kinesiologo'), (4,'Administrativo');

INSERT INTO profesional 
(pro_nombre, pro_apellido1, pro_apellido2, pro_email, pro_password, esp_id)
VALUES 
('Manuel','Mora','Aguilez','mmora@ni.cl','mmora',1),
('Marcela','Miranda','Flores','mmiranda@ni.cl','mmiranda',2),
('Gerson','Morales','Fernández','gerson.morales@gmail.com','gmorales',4),
('Nelson','Nuñez','Jara','nnunez@ni.cl','nnunez',3);


INSERT INTO `paciente` 
(`pac_nombre`, `pac_apellido1`, `pac_apellido2`)
VALUES 
('Anibal','Aviles','Pérez'),
('Angela','Araya','Pereira'),
('Beatriz','Badilla','Gomez'),
('Bernardo','Barrera','Ortiz');

