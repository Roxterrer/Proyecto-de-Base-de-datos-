
/*Nombre: Lizangel Matos Matricula: 17-EIIT-1-092 Seccion: 0541*/


USE [master]
GO
/****** Object:  Database [Proyecto Final]    Script Date: 28/8/2020 9:24:31 p. m. ******/
CREATE DATABASE [Proyecto Final]

USE [Proyecto Final]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 28/8/2020 9:24:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[DepartamentosId] [int] NOT NULL,
	[Nombres] [varchar](60) NULL,
	[CantidaddeEmpleados] [int] NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[DepartamentosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 28/8/2020 9:24:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadosId] [int] NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Posicion] [varchar](50) NULL,
	[Direccion] [varchar](250) NULL,
	[Departamento] [varchar](50) NULL,
	[Sexo] [char](1) NULL,
	[FechadeNacimiento] [datetime] NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 28/8/2020 9:24:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nomina](
	[NominaId] [int] NOT NULL,
	[Empleado] [varchar](60) NULL,
	[SalarioNeto] [float] NULL,
	[HorasdeTrabajo] [int] NULL,
	[HorasExtrasDisponibles] [nvarchar](50) NULL,
	[Descuentos] [float] NULL,
	[SalarioTotal] [float] NULL,
 CONSTRAINT [PK_Nomina] PRIMARY KEY CLUSTERED 
(
	[NominaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 28/8/2020 9:24:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductosId] [int] NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Tipo] [varchar](50) NULL,
	[CostodeProduccion] [float] NULL,
	[PrecioVenta] [float] NULL,
	[Inventario] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 28/8/2020 9:24:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[ServiciosId] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Relevancia] [varchar](25) NULL,
	[Encargado] [varchar](60) NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[ServiciosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Departamentos] ([DepartamentosId], [Nombres], [CantidaddeEmpleados]) VALUES (1, N'Gerencia Administrativa', 2)
INSERT [dbo].[Departamentos] ([DepartamentosId], [Nombres], [CantidaddeEmpleados]) VALUES (2, N'Ventas', 3)
INSERT [dbo].[Departamentos] ([DepartamentosId], [Nombres], [CantidaddeEmpleados]) VALUES (3, N'Ingenieria', 2)
INSERT [dbo].[Departamentos] ([DepartamentosId], [Nombres], [CantidaddeEmpleados]) VALUES (4, N'Contabilidad', 1)
INSERT [dbo].[Departamentos] ([DepartamentosId], [Nombres], [CantidaddeEmpleados]) VALUES (5, N'Soporte Tecnico', 2)
INSERT [dbo].[Departamentos] ([DepartamentosId], [Nombres], [CantidaddeEmpleados]) VALUES (6, N'Mantenimiento', 2)
INSERT [dbo].[Departamentos] ([DepartamentosId], [Nombres], [CantidaddeEmpleados]) VALUES (7, N'Cuentas por Cobrar', 1)
INSERT [dbo].[Departamentos] ([DepartamentosId], [Nombres], [CantidaddeEmpleados]) VALUES (8, N'Cuentas por Pagar', 1)
INSERT [dbo].[Departamentos] ([DepartamentosId], [Nombres], [CantidaddeEmpleados]) VALUES (9, N'Desarrollo de Software', 2)
INSERT [dbo].[Departamentos] ([DepartamentosId], [Nombres], [CantidaddeEmpleados]) VALUES (10, N'Almacen', 2)
GO
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (1, N'Lizangel Matos', N'Director Administrativo', N'C/Los Proceres #33', N'Gerencia Administrativa', N'M', CAST(N'1999-06-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (2, N'Santa Escanio', N'Encargada de Ventas', N'C/Diagonal Primera #12', N'Ventas', N'F', CAST(N'1999-09-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (3, N'Juan Mercedes', N'Técnico ', N'C/Progreso #04', N'Soporte Tecnico', N'M', CAST(N'1995-04-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (4, N'Pedro Sosa', N'Auxiliar de Almacen', N'C/Las Damas #105', N'Almacen', N'M', CAST(N'1998-11-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (5, N'Maria Castillo', N'Encargada de Contabilidad', N'C/San Francisco de Asis # 75', N'Contabilidad', N'F', CAST(N'1999-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (6, N'Alexis De los Santos', N'Auxiliar', N'C/Primera #44', N'Cuentas por Pagar', N'M', CAST(N'1988-05-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (7, N'Soldelina Montero ', N'Agente de Ventas ', N'C/San Miguel #15', N'Ventas', N'F', CAST(N'1980-05-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (8, N'Nelson Escanio', N'Asistente Administrativo ', N'C/ Julio Cesár Matias #23', N'Gerencia  Administrativa', N'M', CAST(N'1970-04-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (9, N'Teresa Ogando ', N'Agente de Ventas ', N'C/El Conde #14', N'Ventas ', N'F', CAST(N'1975-10-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (10, N'Nayali Escanio', N'Desarrollador Senior', N'C/Juan Pablo Duarte #16', N'Ingeniería', N'F', CAST(N'1990-12-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (11, N'Scott Taylor ', N'Técnico', N'C/ La Soledad #21', N'Soporte técnico', N'M', CAST(N'1995-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (12, N'Mayelin Montero ', N'Supervisor de Mantenimiento', N'C/ Abraham Mateo # 19', N'Mantenimiento ', N'F', CAST(N'1997-12-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (13, N'Ernesto Florez', N'Auxiliar', N'C/ Bienestar #15', N'Cuentas por cobrar', N'M', CAST(N'1980-06-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (14, N'Gabriel Gómez', N'Programador Senior', N'C/Andrés Julio Aybar #028 ', N'Desarrollo de Software', N'M', CAST(N'1985-08-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (15, N'Leoneris Baéz', N'Diseñador Gráfico', N'C/David Ben Gurión #25 ', N'Desarrollo de Software', N'F', CAST(N'1997-01-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (16, N'Gertrudis Marte', N'Encargado de Almacen', N'C/Dio Astacio #09', N'Almacen', N'F', CAST(N'1993-09-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (17, N'Cristian Peguero', N'Tecnico', N'C/ Buenaventura #204', N'Mantenimiento', N'M', CAST(N'1900-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Posicion], [Direccion], [Departamento], [Sexo], [FechadeNacimiento]) VALUES (18, N'Juana Peguero', N'Auxiliar', N'C/ Solucion # 08', N'Almacen', N'M', CAST(N'1993-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (1, N'Lizangel Matos', 50000, 9, N'              -', 6700, 43300)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (2, N'Santa Escanio', 45000, 9, N'              -', 6000, 39000)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (3, N'Juan Mercedes', 18000, 8, N'5', 760, 17240)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (4, N'Pedro Sosa', 15000, 8, N'5', 680, 14420)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (5, N'Maria Castillo', 60000, 9, N'               -', 6700, 53300)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (6, N'Alexis De los Santos', 18000, 8, N'5', 760, 17240)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (7, N'Soldelina Montero ', 18000, 8, N'5', 760, 17240)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (8, N'Nelson Escanio', 20000, 8, N'5', 810, 19190)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (9, N'Teresa Ogando ', 18000, 8, N'5', 760, 17240)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (10, N'Nayali Escanio', 30000, 8, N'               -', 1480, 28520)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (11, N'Scott Taylor ', 18000, 8, N'5', 760, 17240)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (12, N'Mayelin Montero ', 30000, 8, N'5', 1480, 28520)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (13, N'Ernesto Florez', 18000, 8, N'5', 760, 17240)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (14, N'Gabriel Gómez', 25000, 8, N'5', 1260, 23740)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (15, N'Leoneris Baéz', 25000, 8, N'5', 1260, 23740)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (16, N'Gertrudis Marte', 23000, 8, N'5', 960, 22040)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (17, N'Cristian Peguero', 18000, 8, N'5', 760, 17240)
INSERT [dbo].[Nomina] ([NominaId], [Empleado], [SalarioNeto], [HorasdeTrabajo], [HorasExtrasDisponibles], [Descuentos], [SalarioTotal]) VALUES (18, N'Juana Santana', 18000, 8, N'5', 760, 17240)
GO
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Tipo], [CostodeProduccion], [PrecioVenta], [Inventario]) VALUES (1, N'Ultimate Carrera GT', N'Videojuegos', 450, 1300, 80)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Tipo], [CostodeProduccion], [PrecioVenta], [Inventario]) VALUES (2, N'Fight Supreme 3 ', N'Videojuegos', 280, 1000, 95)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Tipo], [CostodeProduccion], [PrecioVenta], [Inventario]) VALUES (3, N'Adventure Under Sea', N'Videojuegos', 800, 2500, 50)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Tipo], [CostodeProduccion], [PrecioVenta], [Inventario]) VALUES (4, N'Synonyx', N'Reproductor multimedia', 150, 950, 140)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Tipo], [CostodeProduccion], [PrecioVenta], [Inventario]) VALUES (5, N'Pollybase', N'Gestor de archivos', 300, 1250, 60)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Tipo], [CostodeProduccion], [PrecioVenta], [Inventario]) VALUES (6, N'Homedex', N'Navegador Web', 250, 1000, 100)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Tipo], [CostodeProduccion], [PrecioVenta], [Inventario]) VALUES (7, N'Weekend Crazy', N'Videojuegos', 600, 1800, 70)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Tipo], [CostodeProduccion], [PrecioVenta], [Inventario]) VALUES (8, N'Unknown Identity', N'Videojuegos', 900, 3000, 75)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Tipo], [CostodeProduccion], [PrecioVenta], [Inventario]) VALUES (9, N'Bright Serve', N'Sistema Operativo', 500, 1550, 110)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Tipo], [CostodeProduccion], [PrecioVenta], [Inventario]) VALUES (10, N'Top Second', N'Videojuegos', 700, 1900, 65)
GO
INSERT [dbo].[Servicios] ([ServiciosId], [Nombre], [Relevancia], [Encargado]) VALUES (1, N'Desarrollo de software', N'Alta', N'Nayali Escanio')
INSERT [dbo].[Servicios] ([ServiciosId], [Nombre], [Relevancia], [Encargado]) VALUES (2, N'Protección de datos', N'Alta', N'Gabriel Gomez')
INSERT [dbo].[Servicios] ([ServiciosId], [Nombre], [Relevancia], [Encargado]) VALUES (3, N'Mantenimiento de sistemas informáticos', N'Alta', N'Mayelin Montero ')
INSERT [dbo].[Servicios] ([ServiciosId], [Nombre], [Relevancia], [Encargado]) VALUES (4, N'Gestionar y mantener los servidores', N'Alta', N'Scott Taylor ')
INSERT [dbo].[Servicios] ([ServiciosId], [Nombre], [Relevancia], [Encargado]) VALUES (5, N'Gestionar contraseñas', N'Media', N'Juan Mercedes')
INSERT [dbo].[Servicios] ([ServiciosId], [Nombre], [Relevancia], [Encargado]) VALUES (6, N'Creacion de paginas web', N'Baja', N'Leoneris Baéz')
INSERT [dbo].[Servicios] ([ServiciosId], [Nombre], [Relevancia], [Encargado]) VALUES (7, N'Backud en la nube', N'Media', N'Gabriel Gómez')
INSERT [dbo].[Servicios] ([ServiciosId], [Nombre], [Relevancia], [Encargado]) VALUES (8, N'Centrales telefonica IP', N'Media', N'Cristian Peguero')
INSERT [dbo].[Servicios] ([ServiciosId], [Nombre], [Relevancia], [Encargado]) VALUES (9, N'Reparacion de consolas de videojuegos', N'Baja', N'Scott Taylor ')
INSERT [dbo].[Servicios] ([ServiciosId], [Nombre], [Relevancia], [Encargado]) VALUES (10, N'Venta de videojuegos', N'Alta', N'Soldelina Montero ')
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Nomina] FOREIGN KEY([EmpleadosId])
REFERENCES [dbo].[Nomina] ([NominaId])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Nomina]
GO
USE [master]
GO
ALTER DATABASE [Proyecto Final] SET  READ_WRITE 
GO
