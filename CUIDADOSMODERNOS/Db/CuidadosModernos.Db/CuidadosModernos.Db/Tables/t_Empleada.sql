﻿CREATE TABLE [dbo].[t_Empleada]
(
	[ID_Empleada]           INT             NOT NULL, 
    [Nombre]                VARCHAR(50)     NOT NULL, 
    [Apellido]              VARCHAR(50)     NOT NULL, 
    [DNI]                   VARCHAR(8)      NOT NULL, 
    [Mail]                  VARCHAR(100)    NULL, 
    [Telefono]              VARCHAR(11)     NULL, 
    [ID_Encargada]          INT             NULL,
    CONSTRAINT [PK_t_Empleada] PRIMARY KEY ([ID_Empleada]),
    CONSTRAINT [FK_t_Empledad_t_Encargada] FOREIGN KEY ([ID_Encargada]) REFERENCES [dbo].[t_Encargada]([ID_Encargada])
)
