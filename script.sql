USE [DBTIMESOFTNET]
GO
/****** Object:  Table [dbo].[EMPLEADOS]    Script Date: 6/09/2025 11:39:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADOS](
	[CEDULA] [float] NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[APELLIDO1] [nvarchar](255) NULL,
	[APELLIDO2] [nvarchar](255) NULL,
	[HORARIO] [nvarchar](255) NULL,
	[CODIGOHORARIO] [nvarchar](255) NULL,
	[ESTADOEMPLEADO] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoja1]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoja1](
	[Cedula] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
	[P#Apellido] [nvarchar](255) NULL,
	[S#Apellido] [nvarchar](255) NULL,
	[Empresa] [nvarchar](255) NULL,
	[Maquina] [nvarchar](255) NULL,
	[Seccion] [nvarchar](255) NULL,
	[DiaEntrada] [varchar](10) NULL,
	[MesEntrada] [varchar](10) NULL,
	[AñoEntrada] [varchar](10) NULL,
	[HoraEntrada] [varchar](10) NULL,
	[MinutosEntrada] [varchar](10) NULL,
	[DiaSalida] [varchar](10) NULL,
	[MesSalida] [varchar](10) NULL,
	[AñoSalida] [varchar](10) NULL,
	[HoraSalida] [varchar](10) NULL,
	[MinutosSalida] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invent_DB_Cadena]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invent_DB_Cadena](
	[Nombre_Instancia] [varchar](50) NULL,
	[Nombre_Servidor] [varchar](50) NULL,
	[IP] [varchar](50) NULL,
	[Nombre_Base_Datos] [varchar](70) NULL,
	[Ambiente] [varchar](50) NULL,
	[Version_SqlServer] [varchar](50) NULL,
	[Lider_Funcional] [varchar](60) NULL,
	[Lider_Tecnico] [varchar](60) NULL,
	[Telefono_Tecnico] [varchar](50) NULL,
	[Email_Tecnico] [varchar](50) NULL,
	[Proyecto] [varchar](60) NULL,
	[Administrador] [varchar](50) NULL,
	[Retencion_Backup] [varchar](50) NULL,
	[Tipo_Backup] [varchar](50) NULL,
	[Puerto_Instancia] [varchar](10) NULL,
	[Tipo_Administracion] [varchar](50) NULL,
	[linea_Critica] [varchar](60) NULL,
	[Uso] [varchar](50) NULL,
	[Ubicacion_Infraestructura] [varchar](50) NULL,
	[Proceso_Critico] [varchar](50) NULL,
	[Finalizacion_Prueba] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAusentismos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAusentismos](
	[intpkIdAusencia] [int] IDENTITY(1,1) NOT NULL,
	[strIdentificacionAusencia] [varchar](15) NOT NULL,
	[dtmFechaDesdeAusencia] [datetime] NOT NULL,
	[dtmFechaHastaAusencia] [datetime] NOT NULL,
	[intfkMotivo] [int] NOT NULL,
	[intTipoAusentismo] [int] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
	[strPersonaAutoriza] [varchar](80) NULL,
	[bitAnuladoAusentismo] [bit] NOT NULL,
	[strLoginAnulado] [varchar](80) NULL,
	[dtmFechaPagara] [datetime] NULL,
	[strCodigoIncapacidad] [varchar](15) NOT NULL,
	[bitProrroga] [bit] NOT NULL,
	[strObservacionesAusentismo] [varchar](40) NOT NULL,
 CONSTRAINT [PK_tblAusentismos] PRIMARY KEY CLUSTERED 
(
	[intpkIdAusencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAutorizarHorasExtras]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAutorizarHorasExtras](
	[intpkIdHoraAutorizada] [int] IDENTITY(1,1) NOT NULL,
	[strfkIdentificacion] [varchar](15) NOT NULL,
	[dtmFechaAutorizacion] [datetime] NOT NULL,
	[fltCantidadAutorizada] [float] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
	[dtmFechaModificada] [datetime] NOT NULL,
 CONSTRAINT [PK_tblAutorizarHorasExtras] PRIMARY KEY CLUSTERED 
(
	[intpkIdHoraAutorizada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCambioCentroCostos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCambioCentroCostos](
	[intpkIdCambioCentroCostos] [int] IDENTITY(1,1) NOT NULL,
	[strfkIdentificacionEmpleado] [varchar](15) NOT NULL,
	[strCodigoCCAnterio] [varchar](20) NOT NULL,
	[strCodigoCCNuevo] [varchar](20) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strUsuarioModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblCambioCentroCostos] PRIMARY KEY CLUSTERED 
(
	[intpkIdCambioCentroCostos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCentrosCostos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCentrosCostos](
	[intpkIdCentroCostos] [varchar](20) NOT NULL,
	[strCentroCostos] [varchar](80) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblGruposCentroCostos] PRIMARY KEY CLUSTERED 
(
	[intpkIdCentroCostos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCiudad]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCiudad](
	[intpkIdCiudad] [varchar](10) NOT NULL,
	[strDescripcionCiudad] [varchar](50) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblCiudad] PRIMARY KEY CLUSTERED 
(
	[intpkIdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComandosActualesBioStar]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComandosActualesBioStar](
	[intpkIdComandoActual] [int] IDENTITY(1,1) NOT NULL,
	[strDescripcionComando] [varchar](50) NOT NULL,
	[dtmFechaHoraGeneracion] [datetime] NOT NULL,
	[strIpTerminal] [varchar](30) NOT NULL,
	[bitRespuestaActualizada] [bit] NOT NULL,
 CONSTRAINT [PK_tblComandosActualesBioStar] PRIMARY KEY CLUSTERED 
(
	[intpkIdComandoActual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComandosActualesServicio]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComandosActualesServicio](
	[intpkIdComandoActual] [int] IDENTITY(1,1) NOT NULL,
	[strDescripcionComando] [varchar](50) NOT NULL,
	[dtmFechaHoraGeneracion] [datetime] NOT NULL,
	[strIpTerminal] [varchar](30) NOT NULL,
	[bitRespuestaActualizada] [bit] NOT NULL,
	[bitComandoProcesado] [bit] NOT NULL,
	[strUsuarioModifica] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblComandosActualesServicio] PRIMARY KEY CLUSTERED 
(
	[intpkIdComandoActual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComandosRespuestaBiostar]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComandosRespuestaBiostar](
	[intpkIdComandoRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdComandoInicial] [int] NOT NULL,
	[dtmFechaHoraRespuesta] [datetime] NOT NULL,
 CONSTRAINT [PK_tblComandosRespuestaBiostar] PRIMARY KEY CLUSTERED 
(
	[intpkIdComandoRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComandosRespuestaServicio]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComandosRespuestaServicio](
	[intpkIdComandoRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdComandoInicial] [int] NOT NULL,
	[dtmFechaHoraRespuesta] [datetime] NOT NULL,
 CONSTRAINT [PK_tblComandosRespuestaServicio] PRIMARY KEY CLUSTERED 
(
	[intpkIdComandoRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblConceptoCentrosCostos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConceptoCentrosCostos](
	[intpkfkConceptoHoras] [int] NOT NULL,
	[intpkfkIdCentroCostos] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblConceptoCentrosCostos] PRIMARY KEY CLUSTERED 
(
	[intpkfkConceptoHoras] ASC,
	[intpkfkIdCentroCostos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblConceptosHorasLaboradas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConceptosHorasLaboradas](
	[intpkIdConceptoHoras] [int] IDENTITY(1,1) NOT NULL,
	[strDescripcion] [varchar](50) NOT NULL,
	[strAbreviacion] [varchar](3) NOT NULL,
	[strCodigoNomina] [varchar](8) NOT NULL,
	[intPorRecargo] [int] NOT NULL,
	[bitAutorizacion] [bit] NOT NULL,
	[bitAutorizarHoras] [bit] NOT NULL,
	[bitAcumularHoras] [bit] NOT NULL,
	[bitSignoNegativo] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strUsuarioModificado] [varchar](80) NOT NULL,
	[int16a30] [int] NULL,
	[int31a45] [int] NULL,
	[int46a59] [int] NULL,
	[bitNoredondear] [bit] NULL,
	[strCodigoNominaResta] [varchar](8) NULL,
	[intHorasFijas] [int] NOT NULL,
	[intfkIdMotivo] [int] NULL,
	[bitIncluirArranqueDomFes] [bit] NOT NULL,
	[bitIncluirConceptosPagados] [bit] NOT NULL,
	[bitMostrarEnDias] [bit] NOT NULL,
	[bitOcultarConceptoInforme] [bit] NOT NULL,
	[bitOrdinarias] [bit] NOT NULL,
	[bitRecargoNocturno] [bit] NOT NULL,
	[bitExtraDiurna] [bit] NOT NULL,
	[bitExtraNocturna] [bit] NOT NULL,
	[bitDominicalDiurna] [bit] NOT NULL,
	[bitDominicalNocturna] [bit] NOT NULL,
	[bitExtraDominicalDiurna] [bit] NOT NULL,
	[bitExtraDominicalNocturna] [bit] NOT NULL,
	[bitFestivaDiurna] [bit] NOT NULL,
	[bitFestivaNocturna] [bit] NOT NULL,
	[bitExtraFestivaDiurna] [bit] NOT NULL,
	[bitExtraFestivaNocturna] [bit] NOT NULL,
	[bitPermisoRemunerado] [bit] NOT NULL,
	[bitPermisoNoRemunerado] [bit] NOT NULL,
	[bitFaltasSinExcusa] [bit] NOT NULL,
	[bitSuspencion] [bit] NOT NULL,
	[bitVacaciones] [bit] NOT NULL,
	[bitIncapacidades] [bit] NOT NULL,
	[bitHorasFaltantes] [bit] NOT NULL,
	[bitCasinos] [bit] NOT NULL,
	[bitNinguno] [bit] NOT NULL,
	[bitJornadaEspecial] [bit] NULL,
	[bitAuxilioDeTransporte] [bit] NOT NULL,
	[bitSobreSueldo] [bit] NOT NULL,
	[bitIncentivoCumplimientoDiurno] [bit] NOT NULL,
	[bitIncentivoCumplimientoNocturno] [bit] NOT NULL,
 CONSTRAINT [PK_tblConceptosHorasLaboradas] PRIMARY KEY CLUSTERED 
(
	[intpkIdConceptoHoras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblConfiguracion]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConfiguracion](
	[intMinutosTarde] [int] NOT NULL,
	[bitExtrasAntesTurno] [bit] NOT NULL,
	[intMinutosGracia] [int] NOT NULL,
	[intTiempoIngresoAntes] [int] NOT NULL,
	[intTiempoIngresoDespues] [int] NOT NULL,
	[dtmHoraDesdeDiurna] [datetime] NOT NULL,
	[dtmHoraHastaDiurna] [datetime] NOT NULL,
	[dtmHoraDesdeNocturna] [datetime] NOT NULL,
	[dtmHoraHastaNocturna] [datetime] NOT NULL,
	[bitAproximarMarcacion] [bit] NOT NULL,
	[intCodigoFestivoCompensado] [int] NOT NULL,
	[bitIncluirDescansoRemunerado] [bit] NOT NULL,
	[bitAproximarTurnoMarcacion] [bit] NOT NULL,
	[bitRedondiarAntesLiquidacion] [bit] NOT NULL,
	[bitTurnoConFechaDeSalida] [bit] NOT NULL,
	[bitSepararDiurnasNocturnas] [bit] NOT NULL,
	[bitRestarDescansoNocturnas] [bit] NOT NULL,
	[bitAgruparMarcacionesDiariasEnUna] [bit] NOT NULL,
	[bitNoTocarExtrasNocturnas] [bit] NOT NULL,
	[bitIncluirArranques] [bit] NOT NULL,
	[bitEmularMarcacionesFaltantes] [bit] NOT NULL,
	[bitRestarDescansoEnFestivas] [bit] NOT NULL,
	[bitPermitirConfigurarDescansoParaExtras] [bit] NOT NULL,
	[bitValidarInformeLlegadasTardeConTurno] [bit] NOT NULL,
	[bitIncluirCasinos] [bit] NOT NULL,
	[bitSoloDiaNormalAmanecerFestivo] [bit] NOT NULL,
	[bitDuplicarMarcacionesEnDia] [bit] NOT NULL,
	[bitMostraHorasEnminutos] [bit] NOT NULL,
	[bitMostrarFechaLiquidacionNomina] [bit] NOT NULL,
	[bitModificarTipoAusentismo] [bit] NOT NULL,
	[bitInsertarMinutosFaltantes] [bit] NOT NULL,
	[bitRedondearExtraEn30Minutos] [bit] NOT NULL,
	[bitIncluirDominicalesEnOrdinarias] [bit] NOT NULL,
	[bitIncluirFestivasEnOrdinarias] [bit] NOT NULL,
	[bitIngresoSalidaPorTerminal] [bit] NOT NULL,
	[bitColumnas0] [bit] NOT NULL,
	[bitAusentismosHorasReales] [bit] NOT NULL,
	[TEA] [int] NULL,
	[bitJornadaEspecial] [bit] NULL,
	[intHorasMaximasAjustes] [int] NOT NULL,
	[bitIncluirJustificacionAjustes] [bit] NOT NULL,
	[bitTomarSolounIngresoAntesDeSalida] [bit] NOT NULL,
	[intCantidadMinutosTurno] [int] NOT NULL,
	[bitIncluirPermisoRemunerado] [bit] NOT NULL,
	[bitIncluirPermisoNoRemunerado] [bit] NOT NULL,
	[bitLiquidarSolo120HorasEn31] [bit] NOT NULL,
	[fltValorMaximoSalarioAuxilio] [float] NOT NULL,
	[bitFiltrarHorasConFechaSalida] [bit] NOT NULL,
	[strObservacionSinMarcacion] [varchar](15) NOT NULL,
	[bitBancodeHorasFaltantes] [bit] NOT NULL,
	[intTipoConfiguracion] [int] NOT NULL,
	[strCodigoConfiguracion] [varchar](15) NOT NULL,
	[intConsConfiguracion] [int] IDENTITY(1,1) NOT NULL,
	[intPrioridadConf] [int] NOT NULL,
	[bitIncluirPermisosNoRemBancoHoras] [bit] NOT NULL,
	[bitReiniarDeudaSemanalmente] [bit] NOT NULL,
	[bitNoReiniciarPermisosNoRemunerados] [bit] NOT NULL,
	[intHorasIncentivoDiurno] [int] NOT NULL,
	[intHorasIncentivoNocturno] [int] NOT NULL,
	[strObservacionSinMarcacionDia] [varchar](15) NOT NULL,
	[bitNoExigirJustificacion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[intConsConfiguracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblConfiguracionInterfaz]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConfiguracionInterfaz](
	[intpkIdInterfaz] [int] IDENTITY(1,1) NOT NULL,
	[strDescripcionInterfaz] [varchar](30) NOT NULL,
	[strTipoSeparador] [varchar](2) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
	[strRutaArchivo] [varchar](80) NULL,
	[strNombreLeyendaHoras] [varchar](100) NOT NULL,
	[strNombreLeyendaAusentismos] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblConfiguracionInterfax] PRIMARY KEY CLUSTERED 
(
	[intpkIdInterfaz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCorreosEnviar]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCorreosEnviar](
	[intPkidentificador] [int] IDENTITY(1,1) NOT NULL,
	[stremail] [varchar](200) NOT NULL,
	[strReferencia] [varchar](50) NULL,
	[intfkIdSucursal] [int] NULL,
 CONSTRAINT [PK_tblCorreosEnviar] PRIMARY KEY CLUSTERED 
(
	[intPkidentificador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCorreoServidor]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCorreoServidor](
	[intPkidentificador] [int] NOT NULL,
	[stremailremitente] [varchar](100) NOT NULL,
	[strcontrasenaremitente] [varchar](100) NOT NULL,
	[strservidorsmtp] [varchar](50) NOT NULL,
	[intminsincnntcam] [int] NOT NULL,
	[intpuertosmtp] [int] NULL,
 CONSTRAINT [PK_tblCorreoServidor] PRIMARY KEY CLUSTERED 
(
	[intPkidentificador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDatosReplicados]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDatosReplicados](
	[intCodigoDato] [int] IDENTITY(1,1) NOT NULL,
	[intCodigoLocal] [int] NOT NULL,
	[intCodigoRemoto] [int] NOT NULL,
	[strNombreTabla] [varchar](50) NOT NULL,
	[dtmFechaReplicado] [datetime] NOT NULL,
	[strSitio] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tblDatosReplicados] PRIMARY KEY CLUSTERED 
(
	[intCodigoDato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDatosRespuestaBiostar]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDatosRespuestaBiostar](
	[intpkIdDatoRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdComandoRespuesta] [int] NOT NULL,
	[strValorParametro] [varchar](500) NOT NULL,
 CONSTRAINT [PK_tblDatosRespuestaBiostar] PRIMARY KEY CLUSTERED 
(
	[intpkIdDatoRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDependencias]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDependencias](
	[intpkIdDependencias] [varchar](10) NOT NULL,
	[strDependencias] [varchar](80) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblDependencias] PRIMARY KEY CLUSTERED 
(
	[intpkIdDependencias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDetalleConfiguracionInterfaz]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDetalleConfiguracionInterfaz](
	[intpkIdDetalleInterfaz] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdConfiguracionInterfaz] [int] NOT NULL,
	[strNombreCampo] [varchar](50) NOT NULL,
	[bitAnchoFijo] [bit] NOT NULL,
	[intTamanoCampo] [int] NOT NULL,
	[strCeros] [varchar](15) NOT NULL,
	[bitEntreComillas] [bit] NOT NULL,
	[strSeparadorDecimal] [varchar](1) NOT NULL,
	[strFormato] [varchar](15) NOT NULL,
	[strNombreCampoInterfaz] [varchar](80) NULL,
 CONSTRAINT [PK_tblDetalleConfiguracionInterfax] PRIMARY KEY CLUSTERED 
(
	[intpkIdDetalleInterfaz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDetalleEventoAlarma]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDetalleEventoAlarma](
	[intpkIdDetalleEventoAlarma] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdEventoAlarma] [int] NOT NULL,
	[dtmHoraEjecucion] [datetime] NOT NULL,
	[bitDomingo] [bit] NOT NULL,
	[bitLunes] [bit] NOT NULL,
	[bitMartes] [bit] NOT NULL,
	[bitMiercoles] [bit] NOT NULL,
	[bitJueves] [bit] NOT NULL,
	[bitViernes] [bit] NOT NULL,
	[bitSabado] [bit] NOT NULL,
 CONSTRAINT [PK_tblDetalleEventoAlarma] PRIMARY KEY CLUSTERED 
(
	[intpkIdDetalleEventoAlarma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDetalleFranjaHorasExtras]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDetalleFranjaHorasExtras](
	[intpkIdDetalleFranja] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdFranja] [int] NOT NULL,
	[dtmHoraDesde] [datetime] NOT NULL,
	[dtmHoraHasta] [datetime] NOT NULL,
	[bitDomingo] [bit] NOT NULL,
	[bitLunes] [bit] NOT NULL,
	[bitMartes] [bit] NOT NULL,
	[bitMiercoles] [bit] NOT NULL,
	[bitJueves] [bit] NOT NULL,
	[bitViernes] [bit] NOT NULL,
	[bitSabado] [bit] NOT NULL,
	[bitFestivo] [bit] NOT NULL,
	[bitSinHorario] [bit] NOT NULL,
 CONSTRAINT [PK_tblDetalleFranja] PRIMARY KEY CLUSTERED 
(
	[intpkIdDetalleFranja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDetalleHoraRecoleccionTerminalesAv100]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDetalleHoraRecoleccionTerminalesAv100](
	[intpkIdHorarioReplicacionMar] [int] IDENTITY(1,1) NOT NULL,
	[strfkIdTerminalMarcacion] [varchar](20) NOT NULL,
	[bitLunes] [bit] NOT NULL,
	[bitMartes] [bit] NOT NULL,
	[bitMiercoles] [bit] NOT NULL,
	[bitJueves] [bit] NOT NULL,
	[bitViernes] [bit] NOT NULL,
	[bitSabado] [bit] NOT NULL,
	[bitDomingo] [bit] NOT NULL,
	[bitFestivo] [bit] NOT NULL,
	[dtmHoraEjecucion] [datetime] NOT NULL,
 CONSTRAINT [PK_tblDetalleHoraRecoleccionTerminalesAv100] PRIMARY KEY CLUSTERED 
(
	[intpkIdHorarioReplicacionMar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDetalleHorarioCentroCostos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDetalleHorarioCentroCostos](
	[intpkIdHorarioCC] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdCentroCostos] [varchar](20) NOT NULL,
	[dtmHoraDesdeCC] [datetime] NOT NULL,
	[dtmHoraHastaCC] [datetime] NOT NULL,
	[bitDomingoCC] [bit] NOT NULL,
	[bitLunesCC] [bit] NOT NULL,
	[bitMartesCC] [bit] NOT NULL,
	[bitMiercolesCC] [bit] NOT NULL,
	[bitJuevesCC] [bit] NOT NULL,
	[bitViernesCC] [bit] NOT NULL,
	[bitSabadoCC] [bit] NOT NULL,
	[bitFestivoCC] [bit] NOT NULL,
 CONSTRAINT [PK_tblDetalleHorarioCentroCostos] PRIMARY KEY CLUSTERED 
(
	[intpkIdHorarioCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDetalleHorarioDependencias]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDetalleHorarioDependencias](
	[intpkIdHorario] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdDependencia] [varchar](10) NOT NULL,
	[dtmHoraDesde] [datetime] NOT NULL,
	[dtmHoraHasta] [datetime] NOT NULL,
	[bitDomingo] [bit] NOT NULL,
	[bitLunes] [bit] NOT NULL,
	[bitMartes] [bit] NOT NULL,
	[bitMiercoles] [bit] NOT NULL,
	[bitJueves] [bit] NOT NULL,
	[bitViernes] [bit] NOT NULL,
	[bitSabado] [bit] NOT NULL,
	[bitFestivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblDetalleHorarioDependencias] PRIMARY KEY CLUSTERED 
(
	[intpkIdHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDetalleHorasLaboradas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDetalleHorasLaboradas](
	[intpkfkIdHoraslaboradas] [int] NOT NULL,
	[intpkfkConceptoHorasLaboradas] [int] NOT NULL,
	[fltCantidadMinutos] [float] NOT NULL,
	[bitAutorizar] [bit] NULL,
	[bitAcumular] [bit] NULL,
	[bitSuma] [bit] NOT NULL,
 CONSTRAINT [PK_tblDetalleHorasLaboradas] PRIMARY KEY CLUSTERED 
(
	[intpkfkIdHoraslaboradas] ASC,
	[intpkfkConceptoHorasLaboradas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDetalleHoraTurnos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDetalleHoraTurnos](
	[intpkIdHorario] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdTurno] [int] NOT NULL,
	[dtmHoraDesde] [datetime] NOT NULL,
	[dtmHoraHasta] [datetime] NOT NULL,
	[bitDomingo] [bit] NOT NULL,
	[bitLunes] [bit] NOT NULL,
	[bitMartes] [bit] NOT NULL,
	[bitMiercoles] [bit] NOT NULL,
	[bitJueves] [bit] NOT NULL,
	[bitViernes] [bit] NOT NULL,
	[bitSabado] [bit] NOT NULL,
	[bitFestivo] [bit] NOT NULL,
	[intMinutosDescanso] [int] NOT NULL,
	[intMinutosDescontarTiempo] [int] NOT NULL,
	[intMinutosDescansoNocturno] [int] NOT NULL,
	[intMinutosDescontarNocturnoTiempo] [int] NOT NULL,
	[intMinutosDescansoExtraDiurna] [int] NOT NULL,
	[intMinutosDescontarExtraDiurna] [int] NOT NULL,
	[intMinutosDescansoExtraNocturna] [int] NOT NULL,
	[intMinutosDescontarExtraNocturna] [int] NOT NULL,
 CONSTRAINT [PK_tblDetalleHoraTurnos] PRIMARY KEY CLUSTERED 
(
	[intpkIdHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDiasAusencias]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiasAusencias](
	[intpkIdDiaAusencia] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdAusencia] [int] NOT NULL,
	[dtpFechaAusencia] [datetime] NOT NULL,
	[intCantidadHoras] [float] NOT NULL,
 CONSTRAINT [PK_tblDiasAusencias] PRIMARY KEY CLUSTERED 
(
	[intpkIdDiaAusencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDuplicasHorasLaboradas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDuplicasHorasLaboradas](
	[intpkIdHoraslaboradas] [int] NOT NULL,
	[strIdentificacionHoras] [varchar](15) NOT NULL,
	[dtmFechaHoraIngreso] [datetime] NOT NULL,
	[dtmFechaHoraSalida] [datetime] NOT NULL,
	[intfkIdIngresoSalida] [int] NOT NULL,
	[dtmFechaDupica] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmpleados]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpleados](
	[strpkIdentificacion] [varchar](15) NOT NULL,
	[intfkTipoIdentificacion] [int] NOT NULL,
	[strNombres] [varchar](80) NOT NULL,
	[strPrimerApellido] [varchar](60) NOT NULL,
	[strSegundoApellido] [varchar](60) NULL,
	[intfkSexo] [int] NOT NULL,
	[strCodigo] [varchar](20) NOT NULL,
	[intCodigoTerminal] [int] NOT NULL,
	[dtmFechaNacimiento] [datetime] NULL,
	[strDireccion] [varchar](120) NULL,
	[strTelefono] [varchar](40) NULL,
	[strCelular] [varchar](40) NULL,
	[strFax] [varchar](40) NULL,
	[strEmail] [varchar](80) NULL,
	[dtmFechaIngreso] [datetime] NOT NULL,
	[fltSueldo] [float] NULL,
	[intfkSucursalEmpresa] [int] NOT NULL,
	[intfkCentroCostos] [varchar](20) NOT NULL,
	[bitEstado] [bit] NOT NULL,
	[bitPermitiringresoSinhuella] [bit] NOT NULL,
	[bitSoloControlarIngresos] [bit] NOT NULL,
	[bitCentroCostosFijo] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strUsuarioModificado] [varchar](80) NOT NULL,
	[bitPagarSoloRecargos] [bit] NOT NULL,
	[intfkIdDependencias] [varchar](10) NULL,
	[strObservaciones] [varchar](150) NULL,
	[bitAdministrativo] [bit] NOT NULL,
	[intfkCiudad] [varchar](10) NULL,
	[bitLider] [bit] NOT NULL,
	[strIdLider] [varchar](15) NOT NULL,
	[strCodLider] [varchar](15) NOT NULL,
	[bitEmpleadoExterno] [bit] NOT NULL,
	[strfkIdTipoContrato] [varchar](15) NULL,
	[intUltimoCodigoAusentismo] [int] NOT NULL,
	[dtmFechaRetiro] [datetime] NULL,
 CONSTRAINT [PK_tblEmpleados] PRIMARY KEY CLUSTERED 
(
	[strpkIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmpleadosTSW]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpleadosTSW](
	[strIdentificacion] [varchar](50) NULL,
	[intIdTipoIdentificacion] [int] NULL,
	[strNombres] [varchar](50) NULL,
	[strApellidos] [varchar](50) NULL,
	[bitGenero] [bit] NULL,
	[dtmFechaIngreso] [datetime] NULL,
	[dtmFechaNacimiento] [datetime] NULL,
	[intIdEmpleadoTerminal] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmpleadosUtilizados]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpleadosUtilizados](
	[strfkIdentificacion] [varchar](15) NOT NULL,
	[dtmFechaProceso] [datetime] NOT NULL,
	[strUsuarioGenero] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblCentroCostosUtilizados] PRIMARY KEY CLUSTERED 
(
	[strfkIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntradasSalidasEmpleados]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntradasSalidasEmpleados](
	[intpkIdIngresoSalida] [int] IDENTITY(1,1) NOT NULL,
	[strfkIdentificacionEmpleado] [varchar](15) NOT NULL,
	[intfkIdTurno] [int] NOT NULL,
	[dtmFechaIngreso] [datetime] NULL,
	[dtmFechaSalida] [datetime] NULL,
	[intfkIdCentroCostos] [varchar](20) NULL,
	[bitModificada] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
	[intIdTransaccion] [int] NOT NULL,
	[bitMarcacionRepetida] [bit] NOT NULL,
	[strIpIngreso] [varchar](15) NOT NULL,
	[strIpSalida] [varchar](15) NOT NULL,
	[intfkIdJustificacionMarcaciones] [int] NULL,
 CONSTRAINT [PK_tblEntradasSalidasEmpleados] PRIMARY KEY CLUSTERED 
(
	[intpkIdIngresoSalida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntradasSalidasEmpleados1]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntradasSalidasEmpleados1](
	[intpkIdIngresoSalida] [int] NOT NULL,
	[strfkIdentificacionEmpleado] [varchar](15) NOT NULL,
	[intfkIdTurno] [int] NOT NULL,
	[dtmFechaIngreso] [datetime] NOT NULL,
	[dtmFechaSalida] [datetime] NULL,
	[intfkIdCentroCostos] [varchar](10) NULL,
	[bitModificada] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntradasSalidasEmpleados2010TMP]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntradasSalidasEmpleados2010TMP](
	[intpkIdIngresoSalida] [int] IDENTITY(1,1) NOT NULL,
	[strfkIdentificacionEmpleado] [varchar](15) NOT NULL,
	[intfkIdTurno] [int] NOT NULL,
	[dtmFechaIngreso] [datetime] NULL,
	[dtmFechaSalida] [datetime] NULL,
	[intfkIdCentroCostos] [varchar](10) NULL,
	[bitModificada] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
	[intIdTransaccion] [int] NOT NULL,
	[bitMarcacionRepetida] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntradasSalidasEmpleadosCadena]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntradasSalidasEmpleadosCadena](
	[intpkIdIngresoSalida] [int] NOT NULL,
	[strfkIdentificacionEmpleado] [varchar](15) NOT NULL,
	[intfkIdTurno] [int] NOT NULL,
	[dtmFechaIngreso] [datetime] NOT NULL,
	[dtmFechaSalida] [datetime] NULL,
	[intfkIdCentroCostos] [int] NULL,
	[bitModificada] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntradasVisitantes]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntradasVisitantes](
	[intpkIdIngresoVisitante] [int] NOT NULL,
	[strfkIdentificacionVisitante] [varchar](15) NOT NULL,
	[dtmFechaIngreso] [datetime] NOT NULL,
	[dtmFechaSalida] [datetime] NOT NULL,
	[intfkIdDependencia] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tblEntradasVisitantes] PRIMARY KEY CLUSTERED 
(
	[intpkIdIngresoVisitante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEquivalenciasCentroCostos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEquivalenciasCentroCostos](
	[intpkIdEquivalencia] [int] NOT NULL,
	[intfkIdCentroCostos] [varchar](20) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strloginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblEquivalenciasCentroCostos] PRIMARY KEY CLUSTERED 
(
	[intpkIdEquivalencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEventosAlarma]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEventosAlarma](
	[intpkIdEventoAlarma] [int] NOT NULL,
	[strDescripcionEvento] [varchar](100) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblEventosAlarma] PRIMARY KEY CLUSTERED 
(
	[intpkIdEventoAlarma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFechaHoraHuellasReplicadas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFechaHoraHuellasReplicadas](
	[intIdMarcacionReplicada] [int] IDENTITY(1,1) NOT NULL,
	[strfkIdentificacionEmpleado] [varchar](15) NOT NULL,
	[dtmFechaHoraReplicacion] [datetime] NOT NULL,
 CONSTRAINT [PK_tblFechaHoraHuellasReplicadas] PRIMARY KEY CLUSTERED 
(
	[intIdMarcacionReplicada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFechaUltimoCierre]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFechaUltimoCierre](
	[intpkIdFechaultimoCierre] [int] IDENTITY(1,1) NOT NULL,
	[dtmFechaUltimoCierre] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
 CONSTRAINT [PK_tblFechaUltimoCierre] PRIMARY KEY CLUSTERED 
(
	[intpkIdFechaultimoCierre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFestivos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFestivos](
	[IntpkIdFestivo] [int] IDENTITY(1,1) NOT NULL,
	[dtmFechaFestivo] [datetime] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblFestivos] PRIMARY KEY CLUSTERED 
(
	[IntpkIdFestivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFranjaHorasExtras]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFranjaHorasExtras](
	[intpkIdFranja] [int] IDENTITY(1,1) NOT NULL,
	[strDescripcionFranja] [varchar](50) NOT NULL,
	[intfkIdHorario] [int] NOT NULL,
	[bitSinDependencias] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblFranjaHorasExtras] PRIMARY KEY CLUSTERED 
(
	[intpkIdFranja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFranjasDependencias]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFranjasDependencias](
	[intpkfkIdFranja] [int] NOT NULL,
	[intpkfkIdDependencia] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tblFranjasDependencias] PRIMARY KEY CLUSTERED 
(
	[intpkfkIdFranja] ASC,
	[intpkfkIdDependencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGruposCentroCostos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGruposCentroCostos](
	[intpkIdGruposCentroCostos] [varchar](20) NOT NULL,
	[strDescripcion] [varchar](50) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblGrupoCentroCostos] PRIMARY KEY CLUSTERED 
(
	[intpkIdGruposCentroCostos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHorasADeudadas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHorasADeudadas](
	[intpkIdHorasAdeudada] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdHoraslaboradas] [int] NOT NULL,
	[intfkConceptoHorasLaboradas] [int] NOT NULL,
	[fltCantidadPagadas] [float] NOT NULL,
	[bitSuma] [bit] NOT NULL,
	[bitPagado] [bit] NOT NULL,
	[dtmFechaPago] [datetime] NULL,
 CONSTRAINT [PK_tblHorasADeudadasEmpleado] PRIMARY KEY CLUSTERED 
(
	[intpkIdHorasAdeudada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHorasLaboradas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHorasLaboradas](
	[intpkIdHoraslaboradas] [int] IDENTITY(1,1) NOT NULL,
	[strIdentificacionHoras] [varchar](15) NOT NULL,
	[dtmFechaHoraIngreso] [datetime] NOT NULL,
	[dtmFechaHoraSalida] [datetime] NOT NULL,
	[fltOrdinariaDiurna] [float] NULL,
	[fltOrdinariaNocturna] [float] NULL,
	[fltExtraDiurna] [float] NULL,
	[fltExtraNocturna] [float] NULL,
	[fltDominicalDiurna] [float] NULL,
	[fltDominicalNocturna] [float] NULL,
	[fltExtraDominicalDiurna] [float] NULL,
	[fltExtraDominicalNocturna] [float] NULL,
	[fltFestivaDiurna] [float] NULL,
	[fltFestivaNocturna] [float] NULL,
	[fltExtraFestivaDiurna] [float] NULL,
	[fltExtraFestivaNocturna] [float] NULL,
	[fltHorasFaltantes] [float] NULL,
	[fltPermisoRemunerado] [float] NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strUsuarioModificado] [varchar](80) NOT NULL,
	[fltPermisoNoRemunerado] [float] NULL,
	[fltVacaciones] [float] NULL,
	[fltIncapacidades] [float] NULL,
	[fltFaltasSinExcusa] [float] NULL,
	[fltSuspensiones] [float] NULL,
	[intCodigoHorario] [int] NOT NULL,
	[fltArranqueDomFes] [float] NULL,
	[intfkMotivoAusentismo] [int] NOT NULL,
	[fltConsumoCasinos] [float] NULL,
	[intfkIdIngresoSalida] [int] NOT NULL,
	[bitModificadaManualmente] [bit] NOT NULL,
	[dtmFechaProcesoHoras] [datetime] NULL,
	[fltJornadaEspecial] [bit] NULL,
	[intfkIdJustificacionHoras] [int] NULL,
	[fltAuxilioDeTransporte] [float] NOT NULL,
	[fltSobresueldo] [float] NOT NULL,
	[fltIncentivoDiurno] [float] NOT NULL,
	[fltIncentivoNocurno] [float] NOT NULL,
 CONSTRAINT [PK_tblHorasLaboradas] PRIMARY KEY CLUSTERED 
(
	[intpkIdHoraslaboradas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHorasLaboradas2010]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHorasLaboradas2010](
	[intpkIdHoraslaboradas] [int] IDENTITY(1,1) NOT NULL,
	[strIdentificacionHoras] [varchar](15) NOT NULL,
	[dtmFechaHoraIngreso] [datetime] NOT NULL,
	[dtmFechaHoraSalida] [datetime] NOT NULL,
	[fltOrdinariaDiurna] [float] NULL,
	[fltOrdinariaNocturna] [float] NULL,
	[fltExtraDiurna] [float] NULL,
	[fltExtraNocturna] [float] NULL,
	[fltDominicalDiurna] [float] NULL,
	[fltDominicalNocturna] [float] NULL,
	[fltExtraDominicalDiurna] [float] NULL,
	[fltExtraDominicalNocturna] [float] NULL,
	[fltFestivaDiurna] [float] NULL,
	[fltFestivaNocturna] [float] NULL,
	[fltExtraFestivaDiurna] [float] NULL,
	[fltExtraFestivaNocturna] [float] NULL,
	[fltHorasFaltantes] [float] NULL,
	[fltPermisoRemunerado] [float] NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strUsuarioModificado] [varchar](80) NOT NULL,
	[fltPermisoNoRemunerado] [float] NULL,
	[fltVacaciones] [float] NULL,
	[fltIncapacidades] [float] NULL,
	[fltFaltasSinExcusa] [float] NULL,
	[fltSuspensiones] [float] NULL,
	[intCodigoHorario] [int] NOT NULL,
	[fltArranqueDomFes] [float] NULL,
	[intfkMotivoAusentismo] [int] NOT NULL,
	[fltConsumoCasinos] [float] NULL,
	[intfkIdIngresoSalida] [int] NOT NULL,
	[bitModificadaManualmente] [bit] NOT NULL,
	[dtmFechaProcesoHoras] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHorasLaboradas2010TMP]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHorasLaboradas2010TMP](
	[intpkIdHoraslaboradas] [int] IDENTITY(1,1) NOT NULL,
	[strIdentificacionHoras] [varchar](15) NOT NULL,
	[dtmFechaHoraIngreso] [datetime] NOT NULL,
	[dtmFechaHoraSalida] [datetime] NOT NULL,
	[fltOrdinariaDiurna] [float] NULL,
	[fltOrdinariaNocturna] [float] NULL,
	[fltExtraDiurna] [float] NULL,
	[fltExtraNocturna] [float] NULL,
	[fltDominicalDiurna] [float] NULL,
	[fltDominicalNocturna] [float] NULL,
	[fltExtraDominicalDiurna] [float] NULL,
	[fltExtraDominicalNocturna] [float] NULL,
	[fltFestivaDiurna] [float] NULL,
	[fltFestivaNocturna] [float] NULL,
	[fltExtraFestivaDiurna] [float] NULL,
	[fltExtraFestivaNocturna] [float] NULL,
	[fltHorasFaltantes] [float] NULL,
	[fltPermisoRemunerado] [float] NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strUsuarioModificado] [varchar](80) NOT NULL,
	[fltPermisoNoRemunerado] [float] NULL,
	[fltVacaciones] [float] NULL,
	[fltIncapacidades] [float] NULL,
	[fltFaltasSinExcusa] [float] NULL,
	[fltSuspensiones] [float] NULL,
	[intCodigoHorario] [int] NOT NULL,
	[fltArranqueDomFes] [float] NULL,
	[intfkMotivoAusentismo] [int] NOT NULL,
	[fltConsumoCasinos] [float] NULL,
	[intfkIdIngresoSalida] [int] NOT NULL,
	[bitModificadaManualmente] [bit] NOT NULL,
	[dtmFechaProcesoHoras] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHuellas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHuellas](
	[strIdentificacionHuella] [varchar](15) NOT NULL,
	[binDatoHuellaUno] [binary](2000) NULL,
	[binDatoHuellaDos] [binary](2000) NULL,
	[intIndiceDedoUno] [int] NULL,
	[intIndiceDedoDos] [int] NULL,
	[strIdTerminalHuellaUno] [varchar](30) NOT NULL,
	[strIdTerminalHuellaDos] [varchar](30) NULL,
 CONSTRAINT [PK_gim_huellas] PRIMARY KEY CLUSTERED 
(
	[strIdentificacionHuella] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHuellasAdicionales]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHuellasAdicionales](
	[strIdentificacionHuellaPrincipal] [varchar](15) NOT NULL,
	[intIndiceHuellaActual] [int] NOT NULL,
	[binDatoHuella] [binary](2000) NOT NULL,
	[intIndiceDedo] [int] NOT NULL,
	[strIdTerminalHuella] [varchar](30) NOT NULL,
 CONSTRAINT [PK_tblHuellaAdicionales] PRIMARY KEY CLUSTERED 
(
	[strIdentificacionHuellaPrincipal] ASC,
	[intIndiceHuellaActual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblImagenesMarcacion]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImagenesMarcacion](
	[intpkIdFoto] [int] IDENTITY(1,1) NOT NULL,
	[imaDatoFoto] [image] NOT NULL,
	[strfkIdentificacionEmpleado] [varchar](15) NOT NULL,
	[dtmFechaEntradaSalida] [datetime] NOT NULL,
 CONSTRAINT [PK_tblImagenesMarcacion] PRIMARY KEY CLUSTERED 
(
	[intpkIdFoto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblIncapacidadesTiempoNoLaborado]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblIncapacidadesTiempoNoLaborado](
	[intpkIdIncapacidadTnl] [int] IDENTITY(1,1) NOT NULL,
	[strfkIdentificacionInca] [varchar](15) NOT NULL,
	[intfkIdMotivoIncaTnl] [int] NOT NULL,
	[strNumeroConsecutivo] [varchar](5) NOT NULL,
	[strConceptoIncapacidad] [varchar](15) NOT NULL,
	[dtmFechaInicial] [datetime] NOT NULL,
	[intNumeroDias] [int] NOT NULL,
	[dtmFechaFinal] [datetime] NOT NULL,
	[intNumeroHoras] [int] NOT NULL,
	[strSerie] [varchar](2) NOT NULL,
	[intNumeroIncapacidad] [int] NOT NULL,
	[strCodigoDiagnostico] [varchar](10) NOT NULL,
	[strTipoIncapacidad] [varchar](5) NOT NULL,
	[intClaseIncapacidad] [int] NOT NULL,
	[dtmFechaAccidente] [datetime] NULL,
	[bitProrroga] [bit] NOT NULL,
	[intNumeroTiempoNoLAnterior] [int] NOT NULL,
	[intMesesPromedio] [int] NOT NULL,
	[intValorEps] [int] NOT NULL,
	[intValorEmpresa] [int] NOT NULL,
	[intValorEmpresa1_3] [int] NOT NULL,
	[strObservacionesIncapacidades] [varchar](40) NOT NULL,
	[bitTiempoNoLaborado] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
	[bitAnuladoAusentismo] [bit] NOT NULL,
	[strLoginAnulado] [varchar](80) NULL,
	[intCodigoAusentismo] [int] NOT NULL,
	[dtmFechaExpedicion] [datetime] NOT NULL,
 CONSTRAINT [PK_tblIncapacidadesTiempoNoLaborado] PRIMARY KEY CLUSTERED 
(
	[intpkIdIncapacidadTnl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblJustificacionAjustes]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblJustificacionAjustes](
	[intpkIdJustificacion] [int] IDENTITY(1,1) NOT NULL,
	[strDecripcionJustificacion] [varchar](50) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblJustificacionAjustes] PRIMARY KEY CLUSTERED 
(
	[intpkIdJustificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMarca]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMarca](
	[Userid] [varchar](20) NOT NULL,
	[CheckTime] [datetime] NOT NULL,
	[CheckType] [varchar](1) NOT NULL,
 CONSTRAINT [PK_tblMarca] PRIMARY KEY CLUSTERED 
(
	[Userid] ASC,
	[CheckTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMarcacionesTerminalAv100]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMarcacionesTerminalAv100](
	[inpkIdMarcacio] [int] IDENTITY(1,1) NOT NULL,
	[intUserId] [int] NOT NULL,
	[fechaEntradaSalida] [datetime] NOT NULL,
	[tipo] [varchar](2) NOT NULL,
	[strCodigoTarjeta] [varchar](20) NULL,
 CONSTRAINT [PK_tblMarcacionesTerminalAv100] PRIMARY KEY CLUSTERED 
(
	[inpkIdMarcacio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMarcacionesTerminalTcam5000]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMarcacionesTerminalTcam5000](
	[inpkIdMarcacio] [int] IDENTITY(1,1) NOT NULL,
	[intUserId] [int] NOT NULL,
	[fechaEntradaSalida] [datetime] NOT NULL,
	[stripTerminalMarcacion] [varchar](15) NOT NULL,
	[strTipo] [nchar](2) NOT NULL,
 CONSTRAINT [PK_tblMarcacionesTerminalTcam5000] PRIMARY KEY CLUSTERED 
(
	[inpkIdMarcacio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMarcacionPing]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMarcacionPing](
	[inpkIdMarcacio] [int] IDENTITY(1,1) NOT NULL,
	[intUserId] [int] NOT NULL,
	[fechaEntradaSalida] [datetime] NOT NULL,
	[stripTerminalMarcacionPin] [varchar](15) NOT NULL,
	[strTipo] [nchar](2) NOT NULL,
 CONSTRAINT [PK_tblMarcacionPing] PRIMARY KEY CLUSTERED 
(
	[inpkIdMarcacio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMensajesIngreso]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMensajesIngreso](
	[intpkIdMensaje] [int] IDENTITY(1,1) NOT NULL,
	[strfkIdentificacionMensaje] [varchar](15) NOT NULL,
	[bitMensajeGravado] [bit] NOT NULL,
	[strDescripcionRutaMensaje] [varchar](1000) NOT NULL,
	[dtmFechaHoraMensaje] [datetime] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
	[bitMostrado] [bit] NOT NULL,
 CONSTRAINT [PK_tblMensajesIngreso] PRIMARY KEY CLUSTERED 
(
	[intpkIdMensaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModificacionEntradasSalidas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModificacionEntradasSalidas](
	[intpkCambio] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdMarcacion] [int] NOT NULL,
	[strpkIdentificacionEmpleado] [varchar](15) NOT NULL,
	[dtmFechaHoraMarcacionEntradaAntes] [datetime] NULL,
	[strIpMarcacion] [varchar](15) NOT NULL,
	[dtmFechaHoraEntrada] [datetime] NULL,
	[dtmFechaHoraSalida] [datetime] NULL,
	[strLoginModificacion] [varchar](80) NOT NULL,
	[dtmFechaHoraMarcacionSalidaAntes] [datetime] NULL,
 CONSTRAINT [PK_tblModificacionEntradasSalidas] PRIMARY KEY CLUSTERED 
(
	[intpkCambio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModificacionesMenu]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModificacionesMenu](
	[intpkIdModificacion] [int] NOT NULL,
	[strTextActual] [varchar](50) NOT NULL,
	[strNuevoText] [varchar](50) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModifcado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblModificacionesMenu] PRIMARY KEY CLUSTERED 
(
	[intpkIdModificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMotivos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMotivos](
	[intpkIdMotivo] [int] IDENTITY(1,1) NOT NULL,
	[strDescripcionMotivo] [varchar](80) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
	[intTipoAusentismoMotivos] [int] NOT NULL,
	[bNoValidarAusenciaEnliquidacion] [bit] NOT NULL,
	[strObservacionAusentismo] [varchar](15) NOT NULL,
	[bitPermisoEnDias] [bit] NOT NULL,
	[intCantidadHorasPermiso] [int] NOT NULL,
	[bitGenerarSoloDiasConMarcacion] [bit] NOT NULL,
	[bitPermitirOtrosAusentismosDiferentes] [bit] NOT NULL,
 CONSTRAINT [PK_tblMotivos] PRIMARY KEY CLUSTERED 
(
	[intpkIdMotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMovimientoGruposCentroCostos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMovimientoGruposCentroCostos](
	[intpkfkIdGrupoCentroCostos] [varchar](20) NOT NULL,
	[intpkfkIdCentroCostos] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblMovimientoGrupoCentroCostos] PRIMARY KEY CLUSTERED 
(
	[intpkfkIdGrupoCentroCostos] ASC,
	[intpkfkIdCentroCostos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNovedadAdeudada]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNovedadAdeudada](
	[intpkIdNovedad] [int] IDENTITY(1,1) NOT NULL,
	[strfkIdentificacion] [varchar](15) NOT NULL,
	[dtmFechaNovedad] [datetime] NOT NULL,
	[fltCantidadHoras] [float] NOT NULL,
	[bitAFavor] [bit] NOT NULL,
	[bitPagado] [bit] NOT NULL,
	[dtmFechaPago] [datetime] NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
	[intfkIdHoraslaboradas] [int] NOT NULL,
	[bitGeneradaPorPermisoRemunerado] [bit] NOT NULL,
 CONSTRAINT [PK_tblNovedadAdeudada] PRIMARY KEY CLUSTERED 
(
	[intpkIdNovedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPagoNovedadesAdeudadas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPagoNovedadesAdeudadas](
	[intpkIdPagoNovedades] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdNovedad] [int] NOT NULL,
	[fltCantidadPagadas] [float] NOT NULL,
	[intfkIdHorasLaboradasPago] [int] NOT NULL,
 CONSTRAINT [PK_tblPagoNovedadesAdeudadas] PRIMARY KEY CLUSTERED 
(
	[intpkIdPagoNovedades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblParametrosComandosBiostar]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblParametrosComandosBiostar](
	[intpkIdparametro] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdComandoActual] [int] NOT NULL,
	[strNombreParametro] [varchar](50) NOT NULL,
	[strValorParamentro] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblParametrosComandosBiostar] PRIMARY KEY CLUSTERED 
(
	[intpkIdparametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblParametrosComandosServicio]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblParametrosComandosServicio](
	[intpkIdparametro] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdComandoActual] [int] NOT NULL,
	[strNombreParametro] [varchar](50) NOT NULL,
	[strValorParamentro] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblParametrosComandosServicio] PRIMARY KEY CLUSTERED 
(
	[intpkIdparametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPing]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPing](
	[intpkIdPing] [int] IDENTITY(1,1) NOT NULL,
	[intPing] [int] NOT NULL,
	[bitBorrado] [bit] NOT NULL,
 CONSTRAINT [PK_tblPingBorrados] PRIMARY KEY CLUSTERED 
(
	[intpkIdPing] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPingReplicado]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPingReplicado](
	[strfkIdTerminal] [varchar](15) NOT NULL,
	[intfkIdPing] [int] NOT NULL,
 CONSTRAINT [PK_tblPingReplicado] PRIMARY KEY CLUSTERED 
(
	[intfkIdPing] ASC,
	[strfkIdTerminal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPrueba]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPrueba](
	[a] [char](30) NULL,
	[b] [char](20) NULL,
	[c] [char](10) NULL,
	[d] [char](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRangoRedondeo]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRangoRedondeo](
	[intRangoInicial] [int] NOT NULL,
	[intRangoFinal] [int] NOT NULL,
	[intValorRedondeo] [int] NOT NULL,
	[strTipoRedondeo] [varchar](20) NOT NULL,
	[intfkConsConfiguracion] [int] NOT NULL,
	[intHoraInicialAplica] [int] NOT NULL,
	[intHoraFinalAplica] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRangoRedondeoConceptoHorasLaboradas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRangoRedondeoConceptoHorasLaboradas](
	[intpkIdRangoRedondeo] [int] IDENTITY(1,1) NOT NULL,
	[intfkIdConceptoHoras] [int] NOT NULL,
	[intRangoInicial] [int] NOT NULL,
	[intRangoFinal] [int] NOT NULL,
	[intValorRedondeo] [int] NOT NULL,
 CONSTRAINT [PK_tblRangoRedondeoConceptoHorasLaboradas] PRIMARY KEY CLUSTERED 
(
	[intpkIdRangoRedondeo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRangoTurno]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRangoTurno](
	[intpkIdRango] [int] IDENTITY(1,1) NOT NULL,
	[dtmHoraInicialRango] [datetime] NOT NULL,
	[dtmHoraFinalRango] [datetime] NOT NULL,
	[intfkIdTurno] [int] NOT NULL,
 CONSTRAINT [PK_tblRangosTurnos] PRIMARY KEY CLUSTERED 
(
	[intpkIdRango] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReplicacionHuellas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReplicacionHuellas](
	[strpkIdCliente] [varchar](15) NOT NULL,
	[strIdterminalReplicada] [varchar](30) NOT NULL,
	[bitHuellaUno] [bit] NOT NULL,
	[bithuellaDos] [bit] NOT NULL,
 CONSTRAINT [PK_tblReplicacionHuellas] PRIMARY KEY CLUSTERED 
(
	[strpkIdCliente] ASC,
	[strIdterminalReplicada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReplicacionHuellasAdicionales]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReplicacionHuellasAdicionales](
	[strpkIdCliente] [varchar](15) NOT NULL,
	[intfkIndiceHuellaActual] [int] NOT NULL,
	[strIdterminalReplicada] [varchar](30) NOT NULL,
 CONSTRAINT [PK_tblReplicacionHuellasAdicionales_1] PRIMARY KEY CLUSTERED 
(
	[strpkIdCliente] ASC,
	[intfkIndiceHuellaActual] ASC,
	[strIdterminalReplicada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSexos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSexos](
	[intpkIdSexos] [int] IDENTITY(1,1) NOT NULL,
	[strSexos] [varchar](80) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblSexos] PRIMARY KEY CLUSTERED 
(
	[intpkIdSexos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSucursalesEmpresas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSucursalesEmpresas](
	[intpkIdSucursalesEmpresas] [int] NOT NULL,
	[strSucursalEmpresa] [varchar](80) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblSucursalesEmpresas] PRIMARY KEY CLUSTERED 
(
	[intpkIdSucursalesEmpresas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSucursalesTerminales]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSucursalesTerminales](
	[strfkIdTerminal] [varchar](20) NOT NULL,
	[intfkIdSucursalEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_tblSucursalesTerminales_1] PRIMARY KEY CLUSTERED 
(
	[strfkIdTerminal] ASC,
	[intfkIdSucursalEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTempo]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTempo](
	[strTempo] [varchar](60) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTempoPin]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTempoPin](
	[strTempo] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTerminalesAv100]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTerminalesAv100](
	[strpkIdTermnal] [varchar](20) NOT NULL,
	[strIpTerminal] [varchar](15) NOT NULL,
	[bitEsAv100A] [bit] NOT NULL,
	[bitCodigoBarras] [bit] NOT NULL,
	[tinTipoMarcacion] [tinyint] NOT NULL,
	[strDescripcionSitioTerminal] [varchar](50) NULL,
	[intfkIdSucursal] [int] NULL,
 CONSTRAINT [PK_tblTerminalesAv100] PRIMARY KEY CLUSTERED 
(
	[strpkIdTermnal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTerminalesAv100_BKP201806]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTerminalesAv100_BKP201806](
	[strpkIdTermnal] [varchar](20) NOT NULL,
	[strIpTerminal] [varchar](15) NOT NULL,
	[bitEsAv100A] [bit] NOT NULL,
	[bitCodigoBarras] [bit] NOT NULL,
	[tinTipoMarcacion] [tinyint] NOT NULL,
	[strDescripcionSitioTerminal] [varchar](50) NULL,
	[intfkIdSucursal] [int] NULL,
 CONSTRAINT [PK_tblTerminalesAv100_BKP20180625] PRIMARY KEY CLUSTERED 
(
	[strpkIdTermnal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTerminalesPorCiudad]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTerminalesPorCiudad](
	[intpkIdTerminalCiudad] [int] IDENTITY(1,1) NOT NULL,
	[strfkIdTerminal] [varchar](20) NOT NULL,
	[strfkIdCiudad] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblTerminalesPorCiudad] PRIMARY KEY CLUSTERED 
(
	[intpkIdTerminalCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTipoContrato]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoContrato](
	[strpkTipoContrato] [varchar](15) NOT NULL,
	[strDescripcionContrato] [varchar](80) NOT NULL,
	[bitLunes] [bit] NOT NULL,
	[bitMartes] [bit] NOT NULL,
	[bitMiercoles] [bit] NOT NULL,
	[bitJueves] [bit] NOT NULL,
	[bitViernes] [bit] NOT NULL,
	[bitSabado] [bit] NOT NULL,
	[bitDomingo] [bit] NOT NULL,
	[bitFestivo] [bit] NOT NULL,
	[intNumeroHorasDiarias] [int] NOT NULL,
	[bitHorasSobresueldo] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblTipoContrato] PRIMARY KEY CLUSTERED 
(
	[strpkTipoContrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTiposIdentificacion]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTiposIdentificacion](
	[intpkIdTiposIdentificacion] [int] IDENTITY(1,1) NOT NULL,
	[strTiposIdentificacion] [varchar](80) NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblTiposIdentificacion] PRIMARY KEY CLUSTERED 
(
	[intpkIdTiposIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTrasladoEmpleadosCC]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTrasladoEmpleadosCC](
	[intpkIdTrasladoCC] [int] IDENTITY(1,1) NOT NULL,
	[strfkIdentificacionEmpleado] [varchar](15) NOT NULL,
	[strfkCentroCostos] [varchar](20) NOT NULL,
	[dtmFechaInicio] [datetime] NOT NULL,
	[dtmFechaVencimiento] [datetime] NOT NULL,
	[bitAnulado] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strUsuarioModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblTrasladoEmpleadosCC] PRIMARY KEY CLUSTERED 
(
	[intpkIdTrasladoCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTurnos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTurnos](
	[intpkIdTurno] [int] NOT NULL,
	[strDescripcionTurno] [varchar](80) NOT NULL,
	[bitTurnoContingencia] [bit] NOT NULL,
	[intHorasOrdinariasSemanales] [int] NOT NULL,
	[bitValidarOrdinariaDiaria] [bit] NOT NULL,
	[intCantidadOrdinariaDiaria] [int] NOT NULL,
	[dtmFechaModificacion] [datetime] NOT NULL,
	[strUsuarioModificacion] [varchar](80) NOT NULL,
	[bitValidarOrdinariaSemanal] [bit] NOT NULL,
	[intPeriodoSemanal] [int] NOT NULL,
	[bitValidarOrdinarioSegunTurno] [bit] NOT NULL,
	[bitJornadaEspecial] [bit] NULL,
	[bitValidarHorasAusentismos] [bit] NOT NULL,
	[fltCantidadHorasAusentismos] [float] NOT NULL,
 CONSTRAINT [PK_tblTurnos] PRIMARY KEY CLUSTERED 
(
	[intpkIdTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTurnosEmpleados]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTurnosEmpleados](
	[intpkIdTurnoEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[strfkIdentificacionEmpleado] [varchar](15) NOT NULL,
	[intfkIdTurno] [int] NOT NULL,
	[dtmFechaInicio] [datetime] NOT NULL,
	[dtmFechaVencimiento] [datetime] NOT NULL,
	[bitAnulado] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strUsuarioModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblTurnosEmpleados] PRIMARY KEY CLUSTERED 
(
	[intpkIdTurnoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsuariosGruposCentrosCostos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsuariosGruposCentrosCostos](
	[intpkIdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[strpkfkStrUsuario] [varchar](80) NOT NULL,
	[intpkfkIdGrupoCentroCostos] [varchar](20) NOT NULL,
	[bitGrupo] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strLoginModificado] [varchar](80) NOT NULL,
	[strTipoFiltro] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblUsuariosGruposCentrosCostos] PRIMARY KEY CLUSTERED 
(
	[intpkIdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVisitantes]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVisitantes](
	[strpkIdentificacion] [varchar](15) NOT NULL,
	[intfkTipoIdentificacion] [int] NOT NULL,
	[strNombres] [varchar](80) NOT NULL,
	[strPrimerApellido] [varchar](60) NOT NULL,
	[strSegundoApellido] [varchar](60) NULL,
	[strDireccion] [varchar](90) NULL,
	[strTelefono] [varchar](40) NULL,
	[strEmail] [varchar](80) NULL,
	[dtmFechaIngreso] [datetime] NOT NULL,
	[intfkDependencia] [varchar](10) NOT NULL,
	[bitIngresoRegistrado] [bit] NOT NULL,
	[dtmFechaModificado] [datetime] NOT NULL,
	[strUsuarioModificado] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblVisitantes] PRIMARY KEY CLUSTERED 
(
	[strpkIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpConceptos]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpConceptos](
	[concept] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpEmpleados]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpEmpleados](
	[Identi] [varchar](15) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpMarcacionesProceso]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpMarcacionesProceso](
	[inpkIdMarcacio] [int] IDENTITY(1,1) NOT NULL,
	[intUserId] [int] NOT NULL,
	[fechaEntradaSalida] [datetime] NOT NULL,
	[stripTerminalMarcacionPin] [varchar](15) NOT NULL,
	[strTipo] [nchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ultimasFechas]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ultimasFechas](
	[FechaDesde] [datetime] NOT NULL,
	[FechaHasta] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VALIDACION_HORAS]    Script Date: 6/09/2025 11:39:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VALIDACION_HORAS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CC] [varchar](200) NULL,
	[Nombre] [varchar](200) NULL,
	[IntCentroCostos] [varchar](200) NULL,
	[NombreCentroCostos] [varchar](200) NULL,
	[SitioMarcacion] [varchar](200) NULL,
	[Dependencia] [varchar](200) NULL,
	[Semana] [varchar](200) NULL,
	[ORDINARIO] [varchar](200) NULL,
	[RECARGO NOCTURNO] [varchar](200) NULL,
	[HORAS EXTRAS DIURNAS] [varchar](200) NULL,
	[HORAS EXTRAS NOCTURNAS] [varchar](200) NULL,
	[DOMINICAL DIURNO CON COMPENSATORIO] [varchar](200) NULL,
	[DOMINICAL DIURNO SIN COMPENSATORIO] [varchar](200) NULL,
	[DOMINICAL NOCTURNO CON COMPENSATORIO] [varchar](200) NULL,
	[DOMINICAL NOCTURNO SIN COMPENSATORIO] [varchar](200) NULL,
	[EXTRAS DOMINICALES DIURNA] [varchar](200) NULL,
	[EXTRA DOMINICAL NOCTURNA] [varchar](200) NULL,
	[FESTIVA DIURNA CON COMPENSATORIO] [varchar](200) NULL,
	[FESTIVO DIURNO SIN COMPENSARIO] [varchar](200) NULL,
	[FESTIVO NOCTURNO CON COMPENSATORIO] [varchar](200) NULL,
	[FESTIVO NOCTURNO SIN COMPENSATORIO] [varchar](200) NULL,
	[EXTRA FESTIVO DIURNA] [varchar](200) NULL,
	[EXTRA FESTIVA NOCTURNA] [varchar](200) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblAusentismos] ADD  CONSTRAINT [DF__tblAusent__bitAn__03BB8E22]  DEFAULT ((0)) FOR [bitAnuladoAusentismo]
GO
ALTER TABLE [dbo].[tblAusentismos] ADD  CONSTRAINT [DF__tblAusent__strCo__13828400]  DEFAULT ('') FOR [strCodigoIncapacidad]
GO
ALTER TABLE [dbo].[tblAusentismos] ADD  CONSTRAINT [DF__tblAusent__bitPr__1476A839]  DEFAULT ((0)) FOR [bitProrroga]
GO
ALTER TABLE [dbo].[tblAusentismos] ADD  CONSTRAINT [DF__tblAusent__strOb__737954F0]  DEFAULT ('') FOR [strObservacionesAusentismo]
GO
ALTER TABLE [dbo].[tblCentrosCostos] ADD  CONSTRAINT [DF_tblGruposCentrosCostos_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblCiudad] ADD  CONSTRAINT [DF_tblCiudad_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblComandosActualesServicio] ADD  CONSTRAINT [DF_tblComandosActualesServicio_strUsuarioModifica]  DEFAULT ('') FOR [strUsuarioModifica]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF_tblConceptosHorasLaboradas_bitAutorizarHoras]  DEFAULT ((0)) FOR [bitAutorizarHoras]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF_tblConceptosHorasLaboradas_bitAcumularHoras]  DEFAULT ((0)) FOR [bitAcumularHoras]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF_tblConceptosHorasLaboradas_bitSignoNegativo]  DEFAULT ((0)) FOR [bitSignoNegativo]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__intHo__793DFFAF]  DEFAULT ((0)) FOR [intHorasFijas]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitIn__7E02B4CC]  DEFAULT ((0)) FOR [bitIncluirArranqueDomFes]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitIn__7EF6D905]  DEFAULT ((0)) FOR [bitIncluirConceptosPagados]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitMo__7FEAFD3E]  DEFAULT ((0)) FOR [bitMostrarEnDias]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitOc__07420643]  DEFAULT ((0)) FOR [bitOcultarConceptoInforme]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitOr__18EC8089]  DEFAULT ((0)) FOR [bitOrdinarias]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitRe__19E0A4C2]  DEFAULT ((0)) FOR [bitRecargoNocturno]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitEx__1AD4C8FB]  DEFAULT ((0)) FOR [bitExtraDiurna]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitEx__1BC8ED34]  DEFAULT ((0)) FOR [bitExtraNocturna]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitDo__1CBD116D]  DEFAULT ((0)) FOR [bitDominicalDiurna]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitDo__1DB135A6]  DEFAULT ((0)) FOR [bitDominicalNocturna]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitEx__1EA559DF]  DEFAULT ((0)) FOR [bitExtraDominicalDiurna]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitEx__1F997E18]  DEFAULT ((0)) FOR [bitExtraDominicalNocturna]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitFe__208DA251]  DEFAULT ((0)) FOR [bitFestivaDiurna]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitFe__2181C68A]  DEFAULT ((0)) FOR [bitFestivaNocturna]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitEx__2275EAC3]  DEFAULT ((0)) FOR [bitExtraFestivaDiurna]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitEx__236A0EFC]  DEFAULT ((0)) FOR [bitExtraFestivaNocturna]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitPe__245E3335]  DEFAULT ((0)) FOR [bitPermisoRemunerado]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitPe__2552576E]  DEFAULT ((0)) FOR [bitPermisoNoRemunerado]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitFa__26467BA7]  DEFAULT ((0)) FOR [bitFaltasSinExcusa]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitSu__273A9FE0]  DEFAULT ((0)) FOR [bitSuspencion]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitVa__282EC419]  DEFAULT ((0)) FOR [bitVacaciones]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitIn__2922E852]  DEFAULT ((0)) FOR [bitIncapacidades]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitHo__2A170C8B]  DEFAULT ((0)) FOR [bitHorasFaltantes]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitCa__2B0B30C4]  DEFAULT ((0)) FOR [bitCasinos]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitNi__2BFF54FD]  DEFAULT ((0)) FOR [bitNinguno]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitJo__3A9C5121]  DEFAULT ((0)) FOR [bitJornadaEspecial]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitAu__5FE246AD]  DEFAULT ((0)) FOR [bitAuxilioDeTransporte]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitSo__7FDF2BD5]  DEFAULT ((0)) FOR [bitSobreSueldo]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitIn__03AFBCB9]  DEFAULT ((0)) FOR [bitIncentivoCumplimientoDiurno]
GO
ALTER TABLE [dbo].[tblConceptosHorasLaboradas] ADD  CONSTRAINT [DF__tblConcep__bitIn__04A3E0F2]  DEFAULT ((0)) FOR [bitIncentivoCumplimientoNocturno]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  CONSTRAINT [DF_tblConfiguracion_bitAproximarMarcacion]  DEFAULT (0) FOR [bitAproximarMarcacion]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  CONSTRAINT [DF__tblConfig__intCo__398438A4]  DEFAULT (0) FOR [intCodigoFestivoCompensado]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  CONSTRAINT [DF_tblConfiguracion_bitIncluirDescansoRemunerado]  DEFAULT (0) FOR [bitIncluirDescansoRemunerado]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  CONSTRAINT [DF_tblConfiguracion_bitAproximarTurnoMarcacion]  DEFAULT (0) FOR [bitAproximarTurnoMarcacion]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  CONSTRAINT [DF_tblConfiguracion_bitRedondiarAntesLiquidacion]  DEFAULT (0) FOR [bitRedondiarAntesLiquidacion]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  CONSTRAINT [DF_tblConfiguracion_bitTurnoConFechaDeSalida]  DEFAULT (0) FOR [bitTurnoConFechaDeSalida]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  CONSTRAINT [DF_tblConfiguracion_bitSepararDiurnasNocturnas]  DEFAULT (0) FOR [bitSepararDiurnasNocturnas]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  CONSTRAINT [DF_tblConfiguracion_bitRestarDescansoNocturnas]  DEFAULT (0) FOR [bitRestarDescansoNocturnas]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  CONSTRAINT [DF_tblConfiguracion_bitAgruparMarcacionesEnUna]  DEFAULT (0) FOR [bitAgruparMarcacionesDiariasEnUna]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT (0) FOR [bitNoTocarExtrasNocturnas]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT (0) FOR [bitIncluirArranques]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT (0) FOR [bitEmularMarcacionesFaltantes]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitRestarDescansoEnFestivas]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitPermitirConfigurarDescansoParaExtras]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitValidarInformeLlegadasTardeConTurno]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitIncluirCasinos]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitSoloDiaNormalAmanecerFestivo]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitDuplicarMarcacionesEnDia]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitMostraHorasEnminutos]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitMostrarFechaLiquidacionNomina]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitModificarTipoAusentismo]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitInsertarMinutosFaltantes]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitRedondearExtraEn30Minutos]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitIncluirDominicalesEnOrdinarias]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitIncluirFestivasEnOrdinarias]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitIngresoSalidaPorTerminal]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitColumnas0]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitAusentismosHorasReales]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((1000)) FOR [TEA]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitJornadaEspecial]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((24)) FOR [intHorasMaximasAjustes]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitIncluirJustificacionAjustes]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitTomarSolounIngresoAntesDeSalida]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((6)) FOR [intCantidadMinutosTurno]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitIncluirPermisoRemunerado]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitIncluirPermisoNoRemunerado]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitLiquidarSolo120HorasEn31]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [fltValorMaximoSalarioAuxilio]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitFiltrarHorasConFechaSalida]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ('') FOR [strObservacionSinMarcacion]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitBancodeHorasFaltantes]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [intTipoConfiguracion]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ('') FOR [strCodigoConfiguracion]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [intPrioridadConf]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitIncluirPermisosNoRemBancoHoras]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitReiniarDeudaSemanalmente]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitNoReiniciarPermisosNoRemunerados]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [intHorasIncentivoDiurno]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [intHorasIncentivoNocturno]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ('') FOR [strObservacionSinMarcacionDia]
GO
ALTER TABLE [dbo].[tblConfiguracion] ADD  DEFAULT ((0)) FOR [bitNoExigirJustificacion]
GO
ALTER TABLE [dbo].[tblConfiguracionInterfaz] ADD  CONSTRAINT [DF__tblConfig__strNo__6DC07B9A]  DEFAULT ('') FOR [strNombreLeyendaHoras]
GO
ALTER TABLE [dbo].[tblConfiguracionInterfaz] ADD  CONSTRAINT [DF__tblConfig__strNo__6EB49FD3]  DEFAULT ('') FOR [strNombreLeyendaAusentismos]
GO
ALTER TABLE [dbo].[tblDatosReplicados] ADD  CONSTRAINT [DF_tblDatosReplicados_dtmFechaReplicado_1]  DEFAULT (getdate()) FOR [dtmFechaReplicado]
GO
ALTER TABLE [dbo].[tblDependencias] ADD  CONSTRAINT [DF_tblDependencias_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblDetalleFranjaHorasExtras] ADD  CONSTRAINT [DF_tblDetalleFranjaHorasExtras_bitSinHorario]  DEFAULT ((0)) FOR [bitSinHorario]
GO
ALTER TABLE [dbo].[tblDetalleHorasLaboradas] ADD  CONSTRAINT [DF_tblDetalleHorasLaboradas_bitAutorizar]  DEFAULT (0) FOR [bitAutorizar]
GO
ALTER TABLE [dbo].[tblDetalleHorasLaboradas] ADD  CONSTRAINT [DF_tblDetalleHorasLaboradas_bitAcumular]  DEFAULT (0) FOR [bitAcumular]
GO
ALTER TABLE [dbo].[tblDetalleHorasLaboradas] ADD  DEFAULT (0) FOR [bitSuma]
GO
ALTER TABLE [dbo].[tblDetalleHoraTurnos] ADD  DEFAULT ((0)) FOR [intMinutosDescansoNocturno]
GO
ALTER TABLE [dbo].[tblDetalleHoraTurnos] ADD  DEFAULT ((0)) FOR [intMinutosDescontarNocturnoTiempo]
GO
ALTER TABLE [dbo].[tblDetalleHoraTurnos] ADD  DEFAULT ((0)) FOR [intMinutosDescansoExtraDiurna]
GO
ALTER TABLE [dbo].[tblDetalleHoraTurnos] ADD  DEFAULT ((0)) FOR [intMinutosDescontarExtraDiurna]
GO
ALTER TABLE [dbo].[tblDetalleHoraTurnos] ADD  DEFAULT ((0)) FOR [intMinutosDescansoExtraNocturna]
GO
ALTER TABLE [dbo].[tblDetalleHoraTurnos] ADD  DEFAULT ((0)) FOR [intMinutosDescontarExtraNocturna]
GO
ALTER TABLE [dbo].[tblDuplicasHorasLaboradas] ADD  CONSTRAINT [DF_tblDuplicasHorasLaboradas_dtmFechaDupica]  DEFAULT (getdate()) FOR [dtmFechaDupica]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  CONSTRAINT [DF_tblEmpleados_intCodigoTerminal]  DEFAULT ((0)) FOR [intCodigoTerminal]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  CONSTRAINT [DF_tblEmpleados_bitEstado]  DEFAULT ((1)) FOR [bitEstado]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  CONSTRAINT [DF_tblEmpleados_bitPermitiringresoSinhuella]  DEFAULT ((0)) FOR [bitPermitiringresoSinhuella]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  CONSTRAINT [DF_tblEmpleados_bitCentroCostosFijo]  DEFAULT ((0)) FOR [bitCentroCostosFijo]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  CONSTRAINT [DF_tblEmpleados_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  CONSTRAINT [DF__tblEmplea__bitPa__7A3223E8]  DEFAULT ((0)) FOR [bitPagarSoloRecargos]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  CONSTRAINT [DF__tblEmplea__bitAd__0FEC5ADD]  DEFAULT ((0)) FOR [bitAdministrativo]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  CONSTRAINT [DF__tblEmplea__bitLi__1A2F818F]  DEFAULT ((0)) FOR [bitLider]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  CONSTRAINT [DF__tblEmplea__strId__1B23A5C8]  DEFAULT ('0') FOR [strIdLider]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  CONSTRAINT [DF__tblEmplea__strCo__1C17CA01]  DEFAULT ('0') FOR [strCodLider]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  CONSTRAINT [DF__tblEmplea__bitEm__792D1764]  DEFAULT ((0)) FOR [bitEmpleadoExterno]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  CONSTRAINT [DF__tblEmplea__intUl__00D3500E]  DEFAULT ((0)) FOR [intUltimoCodigoAusentismo]
GO
ALTER TABLE [dbo].[tblEntradasSalidasEmpleados] ADD  CONSTRAINT [DF_tblEntradasSalidasEmpleados_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblEntradasSalidasEmpleados] ADD  CONSTRAINT [DF__tblEntrad__intId__10CB707D]  DEFAULT ((0)) FOR [intIdTransaccion]
GO
ALTER TABLE [dbo].[tblEntradasSalidasEmpleados] ADD  CONSTRAINT [DF__tblEntrad__bitMa__11BF94B6]  DEFAULT ((0)) FOR [bitMarcacionRepetida]
GO
ALTER TABLE [dbo].[tblEntradasSalidasEmpleados] ADD  CONSTRAINT [DF__tblEntrad__strIp__156ACC72]  DEFAULT ('') FOR [strIpIngreso]
GO
ALTER TABLE [dbo].[tblEntradasSalidasEmpleados] ADD  CONSTRAINT [DF__tblEntrad__strIp__165EF0AB]  DEFAULT ('') FOR [strIpSalida]
GO
ALTER TABLE [dbo].[tblEntradasVisitantes] ADD  CONSTRAINT [DF_tblEntradasVisitantes_dtmFechaIngreso]  DEFAULT (getdate()) FOR [dtmFechaIngreso]
GO
ALTER TABLE [dbo].[tblEntradasVisitantes] ADD  CONSTRAINT [DF_tblEntradasVisitantes_dtmFechaSalida]  DEFAULT (getdate()) FOR [dtmFechaSalida]
GO
ALTER TABLE [dbo].[tblFranjaHorasExtras] ADD  CONSTRAINT [DF_tblFranjaHorasExtras_bitSinDependencias]  DEFAULT ((0)) FOR [bitSinDependencias]
GO
ALTER TABLE [dbo].[tblHorasLaboradas] ADD  CONSTRAINT [DF_tblHorasLaboradas_fltPermisoRemunerado]  DEFAULT ((0)) FOR [fltPermisoRemunerado]
GO
ALTER TABLE [dbo].[tblHorasLaboradas] ADD  CONSTRAINT [DF_tblHorasLaboradas_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblHorasLaboradas] ADD  CONSTRAINT [DF__tblHorasL__intCo__0C7C8803]  DEFAULT ((0)) FOR [intCodigoHorario]
GO
ALTER TABLE [dbo].[tblHorasLaboradas] ADD  CONSTRAINT [DF__tblHorasL__intfk__093F5D4E]  DEFAULT ((0)) FOR [intfkMotivoAusentismo]
GO
ALTER TABLE [dbo].[tblHorasLaboradas] ADD  DEFAULT ((0)) FOR [intfkIdIngresoSalida]
GO
ALTER TABLE [dbo].[tblHorasLaboradas] ADD  DEFAULT ((0)) FOR [bitModificadaManualmente]
GO
ALTER TABLE [dbo].[tblHorasLaboradas] ADD  DEFAULT ((0)) FOR [fltJornadaEspecial]
GO
ALTER TABLE [dbo].[tblHorasLaboradas] ADD  DEFAULT ((0)) FOR [fltAuxilioDeTransporte]
GO
ALTER TABLE [dbo].[tblHorasLaboradas] ADD  DEFAULT ((0)) FOR [fltSobresueldo]
GO
ALTER TABLE [dbo].[tblHorasLaboradas] ADD  DEFAULT ((0)) FOR [fltIncentivoDiurno]
GO
ALTER TABLE [dbo].[tblHorasLaboradas] ADD  DEFAULT ((0)) FOR [fltIncentivoNocurno]
GO
ALTER TABLE [dbo].[tblHuellas] ADD  CONSTRAINT [DF_gim_huellas_hue_dedo_dos]  DEFAULT ((0)) FOR [intIndiceDedoUno]
GO
ALTER TABLE [dbo].[tblHuellas] ADD  CONSTRAINT [DF_gim_huellas_hue_dedo]  DEFAULT ((0)) FOR [intIndiceDedoDos]
GO
ALTER TABLE [dbo].[tblIncapacidadesTiempoNoLaborado] ADD  CONSTRAINT [DF_tblIncapacidadesTiempoNoLaborado_bitAnuladoAusentismo]  DEFAULT ((0)) FOR [bitAnuladoAusentismo]
GO
ALTER TABLE [dbo].[tblIncapacidadesTiempoNoLaborado] ADD  DEFAULT (getdate()) FOR [dtmFechaExpedicion]
GO
ALTER TABLE [dbo].[tblJustificacionAjustes] ADD  CONSTRAINT [DF_tblJustificacionAjustes_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblMarcacionesTerminalTcam5000] ADD  DEFAULT ('') FOR [stripTerminalMarcacion]
GO
ALTER TABLE [dbo].[tblMarcacionesTerminalTcam5000] ADD  CONSTRAINT [DF_tblMarcacionesTerminalTcam5000_strTipoIngreso]  DEFAULT (N'I') FOR [strTipo]
GO
ALTER TABLE [dbo].[tblMarcacionPing] ADD  DEFAULT ('') FOR [stripTerminalMarcacionPin]
GO
ALTER TABLE [dbo].[tblMarcacionPing] ADD  CONSTRAINT [DF_tblMarcacionPing_strTipoIngreso]  DEFAULT (N'I') FOR [strTipo]
GO
ALTER TABLE [dbo].[tblMensajesIngreso] ADD  CONSTRAINT [DF_tblMensajesIngreso_bitMostrado]  DEFAULT ((0)) FOR [bitMostrado]
GO
ALTER TABLE [dbo].[tblMotivos] ADD  DEFAULT ((0)) FOR [intTipoAusentismoMotivos]
GO
ALTER TABLE [dbo].[tblMotivos] ADD  DEFAULT ((0)) FOR [bNoValidarAusenciaEnliquidacion]
GO
ALTER TABLE [dbo].[tblMotivos] ADD  DEFAULT ('') FOR [strObservacionAusentismo]
GO
ALTER TABLE [dbo].[tblMotivos] ADD  DEFAULT ((0)) FOR [bitPermisoEnDias]
GO
ALTER TABLE [dbo].[tblMotivos] ADD  DEFAULT ((8)) FOR [intCantidadHorasPermiso]
GO
ALTER TABLE [dbo].[tblMotivos] ADD  DEFAULT ((0)) FOR [bitGenerarSoloDiasConMarcacion]
GO
ALTER TABLE [dbo].[tblMotivos] ADD  DEFAULT ((0)) FOR [bitPermitirOtrosAusentismosDiferentes]
GO
ALTER TABLE [dbo].[tblNovedadAdeudada] ADD  CONSTRAINT [DF_tblNovedadAdeudada_bitPagado]  DEFAULT ((0)) FOR [bitPagado]
GO
ALTER TABLE [dbo].[tblNovedadAdeudada] ADD  CONSTRAINT [DF_tblNovedadAdeudada_intfkIdHoraslaboradas]  DEFAULT ((0)) FOR [intfkIdHoraslaboradas]
GO
ALTER TABLE [dbo].[tblNovedadAdeudada] ADD  DEFAULT ((0)) FOR [bitGeneradaPorPermisoRemunerado]
GO
ALTER TABLE [dbo].[tblRangoRedondeo] ADD  CONSTRAINT [DF__tblRangoR__strTi__0A1E72EE]  DEFAULT ('Ambos') FOR [strTipoRedondeo]
GO
ALTER TABLE [dbo].[tblRangoRedondeo] ADD  CONSTRAINT [DF__tblRangoR__intfk__7A26527F]  DEFAULT ((0)) FOR [intfkConsConfiguracion]
GO
ALTER TABLE [dbo].[tblRangoRedondeo] ADD  CONSTRAINT [DF__tblRangoR__intHo__746D7929]  DEFAULT ((0)) FOR [intHoraInicialAplica]
GO
ALTER TABLE [dbo].[tblRangoRedondeo] ADD  CONSTRAINT [DF__tblRangoR__intHo__75619D62]  DEFAULT ((0)) FOR [intHoraFinalAplica]
GO
ALTER TABLE [dbo].[tblSexos] ADD  CONSTRAINT [DF_tblSexos_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblSucursalesEmpresas] ADD  CONSTRAINT [DF_tblSucursalesEmpresas_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblTerminalesAv100] ADD  CONSTRAINT [DF__tblTermin__bitEs__4BD7F309]  DEFAULT ((0)) FOR [bitEsAv100A]
GO
ALTER TABLE [dbo].[tblTerminalesAv100] ADD  CONSTRAINT [DF__tblTermin__bitCo__7755B73D]  DEFAULT ((0)) FOR [bitCodigoBarras]
GO
ALTER TABLE [dbo].[tblTerminalesAv100] ADD  CONSTRAINT [DF__tblTermin__tinTi__149C0161]  DEFAULT ((1)) FOR [tinTipoMarcacion]
GO
ALTER TABLE [dbo].[tblTerminalesAv100] ADD  CONSTRAINT [DF__tblTermin__strDe__175314E4]  DEFAULT ('') FOR [strDescripcionSitioTerminal]
GO
ALTER TABLE [dbo].[tblTerminalesAv100_BKP201806] ADD  DEFAULT ((0)) FOR [bitEsAv100A]
GO
ALTER TABLE [dbo].[tblTerminalesAv100_BKP201806] ADD  DEFAULT ((0)) FOR [bitCodigoBarras]
GO
ALTER TABLE [dbo].[tblTerminalesAv100_BKP201806] ADD  DEFAULT ((1)) FOR [tinTipoMarcacion]
GO
ALTER TABLE [dbo].[tblTerminalesAv100_BKP201806] ADD  DEFAULT ('') FOR [strDescripcionSitioTerminal]
GO
ALTER TABLE [dbo].[tblTipoContrato] ADD  CONSTRAINT [DF_tblTipoContrato_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblTiposIdentificacion] ADD  CONSTRAINT [DF_tblTiposIdentificacion_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblTrasladoEmpleadosCC] ADD  CONSTRAINT [DF_tblTrasladoEmpleadosCC_bitAnulado]  DEFAULT ((0)) FOR [bitAnulado]
GO
ALTER TABLE [dbo].[tblTrasladoEmpleadosCC] ADD  CONSTRAINT [DF_tblTrasladoEmpleadosCC_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblTurnos] ADD  CONSTRAINT [DF_tblTurnos_intMeses]  DEFAULT ((0)) FOR [bitTurnoContingencia]
GO
ALTER TABLE [dbo].[tblTurnos] ADD  CONSTRAINT [DF_tblTurnos_intHorasOrdinariasSemanales]  DEFAULT ((0)) FOR [intHorasOrdinariasSemanales]
GO
ALTER TABLE [dbo].[tblTurnos] ADD  CONSTRAINT [DF_tblTurnos_bitValidarOrdinariaDiaria]  DEFAULT ((0)) FOR [bitValidarOrdinariaDiaria]
GO
ALTER TABLE [dbo].[tblTurnos] ADD  CONSTRAINT [DF_tblTurnos_intCantidadOrdinariaDiaria]  DEFAULT ((0)) FOR [intCantidadOrdinariaDiaria]
GO
ALTER TABLE [dbo].[tblTurnos] ADD  CONSTRAINT [DF_tblTurnos_dtmFechaModificacion]  DEFAULT (getdate()) FOR [dtmFechaModificacion]
GO
ALTER TABLE [dbo].[tblTurnos] ADD  CONSTRAINT [DF__tblTurnos__bitVa__7B264821]  DEFAULT ((0)) FOR [bitValidarOrdinariaSemanal]
GO
ALTER TABLE [dbo].[tblTurnos] ADD  CONSTRAINT [DF__tblTurnos__intPe__00DF2177]  DEFAULT ((0)) FOR [intPeriodoSemanal]
GO
ALTER TABLE [dbo].[tblTurnos] ADD  CONSTRAINT [DF__tblTurnos__bitVa__02C769E9]  DEFAULT ((0)) FOR [bitValidarOrdinarioSegunTurno]
GO
ALTER TABLE [dbo].[tblTurnos] ADD  CONSTRAINT [DF__tblTurnos__bitJo__3C849993]  DEFAULT ((0)) FOR [bitJornadaEspecial]
GO
ALTER TABLE [dbo].[tblTurnos] ADD  DEFAULT ((0)) FOR [bitValidarHorasAusentismos]
GO
ALTER TABLE [dbo].[tblTurnos] ADD  DEFAULT ((0)) FOR [fltCantidadHorasAusentismos]
GO
ALTER TABLE [dbo].[tblTurnosEmpleados] ADD  CONSTRAINT [DF_tblTurnosEmpleados_bitAnulado]  DEFAULT ((0)) FOR [bitAnulado]
GO
ALTER TABLE [dbo].[tblTurnosEmpleados] ADD  CONSTRAINT [DF_tblTurnosEmpleados_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblUsuariosGruposCentrosCostos] ADD  CONSTRAINT [DF_tblUsuariosGruposCentrosCostos_bitGrupo]  DEFAULT ((0)) FOR [bitGrupo]
GO
ALTER TABLE [dbo].[tblUsuariosGruposCentrosCostos] ADD  CONSTRAINT [DF__tblUsuari__strTi__128E5FC7]  DEFAULT ('') FOR [strTipoFiltro]
GO
ALTER TABLE [dbo].[tblVisitantes] ADD  CONSTRAINT [DF_tblVisitantes_bitIngresoRegistrado]  DEFAULT ((0)) FOR [bitIngresoRegistrado]
GO
ALTER TABLE [dbo].[tblVisitantes] ADD  CONSTRAINT [DF_tblVisitantes_dtmFechaModificado]  DEFAULT (getdate()) FOR [dtmFechaModificado]
GO
ALTER TABLE [dbo].[tblAusentismos]  WITH CHECK ADD  CONSTRAINT [FK_tblAusentismos_tblEmpleados] FOREIGN KEY([strIdentificacionAusencia])
REFERENCES [dbo].[tblEmpleados] ([strpkIdentificacion])
GO
ALTER TABLE [dbo].[tblAusentismos] CHECK CONSTRAINT [FK_tblAusentismos_tblEmpleados]
GO
ALTER TABLE [dbo].[tblAusentismos]  WITH CHECK ADD  CONSTRAINT [FK_tblAusentismos_tblMotivos] FOREIGN KEY([intfkMotivo])
REFERENCES [dbo].[tblMotivos] ([intpkIdMotivo])
GO
ALTER TABLE [dbo].[tblAusentismos] CHECK CONSTRAINT [FK_tblAusentismos_tblMotivos]
GO
ALTER TABLE [dbo].[tblAutorizarHorasExtras]  WITH NOCHECK ADD  CONSTRAINT [FK_tblAutorizarHorasExtras_tblEmpleados] FOREIGN KEY([strfkIdentificacion])
REFERENCES [dbo].[tblEmpleados] ([strpkIdentificacion])
GO
ALTER TABLE [dbo].[tblAutorizarHorasExtras] CHECK CONSTRAINT [FK_tblAutorizarHorasExtras_tblEmpleados]
GO
ALTER TABLE [dbo].[tblComandosRespuestaBiostar]  WITH CHECK ADD  CONSTRAINT [FK_tblComandosRespuestaBiostar_tblComandosActualesBioStar] FOREIGN KEY([intfkIdComandoInicial])
REFERENCES [dbo].[tblComandosActualesBioStar] ([intpkIdComandoActual])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblComandosRespuestaBiostar] CHECK CONSTRAINT [FK_tblComandosRespuestaBiostar_tblComandosActualesBioStar]
GO
ALTER TABLE [dbo].[tblComandosRespuestaServicio]  WITH CHECK ADD  CONSTRAINT [FK_tblComandosRespuestaServicio_tblComandosActualesServicio] FOREIGN KEY([intfkIdComandoInicial])
REFERENCES [dbo].[tblComandosActualesServicio] ([intpkIdComandoActual])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblComandosRespuestaServicio] CHECK CONSTRAINT [FK_tblComandosRespuestaServicio_tblComandosActualesServicio]
GO
ALTER TABLE [dbo].[tblConceptoCentrosCostos]  WITH CHECK ADD  CONSTRAINT [FK_tblConceptoCentrosCostos_tblCentrosCostos] FOREIGN KEY([intpkfkIdCentroCostos])
REFERENCES [dbo].[tblCentrosCostos] ([intpkIdCentroCostos])
GO
ALTER TABLE [dbo].[tblConceptoCentrosCostos] CHECK CONSTRAINT [FK_tblConceptoCentrosCostos_tblCentrosCostos]
GO
ALTER TABLE [dbo].[tblConceptoCentrosCostos]  WITH CHECK ADD  CONSTRAINT [FK_tblConceptoCentrosCostos_tblConceptosHorasLaboradas] FOREIGN KEY([intpkfkConceptoHoras])
REFERENCES [dbo].[tblConceptosHorasLaboradas] ([intpkIdConceptoHoras])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblConceptoCentrosCostos] CHECK CONSTRAINT [FK_tblConceptoCentrosCostos_tblConceptosHorasLaboradas]
GO
ALTER TABLE [dbo].[tblDatosRespuestaBiostar]  WITH CHECK ADD  CONSTRAINT [FK_tblDatosRespuestaBiostar_tblComandosRespuestaBiostar] FOREIGN KEY([intfkIdComandoRespuesta])
REFERENCES [dbo].[tblComandosRespuestaBiostar] ([intpkIdComandoRespuesta])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDatosRespuestaBiostar] CHECK CONSTRAINT [FK_tblDatosRespuestaBiostar_tblComandosRespuestaBiostar]
GO
ALTER TABLE [dbo].[tblDetalleConfiguracionInterfaz]  WITH CHECK ADD  CONSTRAINT [FK_tblDetalleConfiguracionInterfax_tblConfiguracionInterfax] FOREIGN KEY([intfkIdConfiguracionInterfaz])
REFERENCES [dbo].[tblConfiguracionInterfaz] ([intpkIdInterfaz])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDetalleConfiguracionInterfaz] CHECK CONSTRAINT [FK_tblDetalleConfiguracionInterfax_tblConfiguracionInterfax]
GO
ALTER TABLE [dbo].[tblDetalleEventoAlarma]  WITH CHECK ADD  CONSTRAINT [FK_tblDetalleEventoAlarma_tblEventosAlarma] FOREIGN KEY([intfkIdEventoAlarma])
REFERENCES [dbo].[tblEventosAlarma] ([intpkIdEventoAlarma])
GO
ALTER TABLE [dbo].[tblDetalleEventoAlarma] CHECK CONSTRAINT [FK_tblDetalleEventoAlarma_tblEventosAlarma]
GO
ALTER TABLE [dbo].[tblDetalleFranjaHorasExtras]  WITH NOCHECK ADD  CONSTRAINT [FK_tblDetalleFranjaHorasExtras_tblFranjaHorasExtras] FOREIGN KEY([intfkIdFranja])
REFERENCES [dbo].[tblFranjaHorasExtras] ([intpkIdFranja])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDetalleFranjaHorasExtras] CHECK CONSTRAINT [FK_tblDetalleFranjaHorasExtras_tblFranjaHorasExtras]
GO
ALTER TABLE [dbo].[tblDetalleHoraRecoleccionTerminalesAv100]  WITH CHECK ADD  CONSTRAINT [FK_tblDetalleHoraRecoleccionTerminalesAv100_tblTerminalesAv100] FOREIGN KEY([strfkIdTerminalMarcacion])
REFERENCES [dbo].[tblTerminalesAv100] ([strpkIdTermnal])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDetalleHoraRecoleccionTerminalesAv100] CHECK CONSTRAINT [FK_tblDetalleHoraRecoleccionTerminalesAv100_tblTerminalesAv100]
GO
ALTER TABLE [dbo].[tblDetalleHorasLaboradas]  WITH CHECK ADD  CONSTRAINT [FK_tblDetalleHorasLaboradas_tblConceptosHorasLaboradas] FOREIGN KEY([intpkfkConceptoHorasLaboradas])
REFERENCES [dbo].[tblConceptosHorasLaboradas] ([intpkIdConceptoHoras])
GO
ALTER TABLE [dbo].[tblDetalleHorasLaboradas] CHECK CONSTRAINT [FK_tblDetalleHorasLaboradas_tblConceptosHorasLaboradas]
GO
ALTER TABLE [dbo].[tblDetalleHorasLaboradas]  WITH CHECK ADD  CONSTRAINT [FK_tblDetalleHorasLaboradas_tblHorasLaboradas] FOREIGN KEY([intpkfkIdHoraslaboradas])
REFERENCES [dbo].[tblHorasLaboradas] ([intpkIdHoraslaboradas])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDetalleHorasLaboradas] CHECK CONSTRAINT [FK_tblDetalleHorasLaboradas_tblHorasLaboradas]
GO
ALTER TABLE [dbo].[tblDetalleHoraTurnos]  WITH CHECK ADD  CONSTRAINT [FK_tblDetalleHoraTurnos_tblTurnos] FOREIGN KEY([intfkIdTurno])
REFERENCES [dbo].[tblTurnos] ([intpkIdTurno])
GO
ALTER TABLE [dbo].[tblDetalleHoraTurnos] CHECK CONSTRAINT [FK_tblDetalleHoraTurnos_tblTurnos]
GO
ALTER TABLE [dbo].[tblDiasAusencias]  WITH NOCHECK ADD  CONSTRAINT [FK_tblDiasAusencias_tblAusentismos] FOREIGN KEY([intfkIdAusencia])
REFERENCES [dbo].[tblAusentismos] ([intpkIdAusencia])
GO
ALTER TABLE [dbo].[tblDiasAusencias] CHECK CONSTRAINT [FK_tblDiasAusencias_tblAusentismos]
GO
ALTER TABLE [dbo].[tblEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpleados_tblCentrosCostos] FOREIGN KEY([intfkCentroCostos])
REFERENCES [dbo].[tblCentrosCostos] ([intpkIdCentroCostos])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblEmpleados] CHECK CONSTRAINT [FK_tblEmpleados_tblCentrosCostos]
GO
ALTER TABLE [dbo].[tblEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpleados_tblCiudad] FOREIGN KEY([intfkCiudad])
REFERENCES [dbo].[tblCiudad] ([intpkIdCiudad])
GO
ALTER TABLE [dbo].[tblEmpleados] CHECK CONSTRAINT [FK_tblEmpleados_tblCiudad]
GO
ALTER TABLE [dbo].[tblEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpleados_tblDependencias] FOREIGN KEY([intfkIdDependencias])
REFERENCES [dbo].[tblDependencias] ([intpkIdDependencias])
GO
ALTER TABLE [dbo].[tblEmpleados] CHECK CONSTRAINT [FK_tblEmpleados_tblDependencias]
GO
ALTER TABLE [dbo].[tblEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpleados_tblSexos] FOREIGN KEY([intfkSexo])
REFERENCES [dbo].[tblSexos] ([intpkIdSexos])
GO
ALTER TABLE [dbo].[tblEmpleados] CHECK CONSTRAINT [FK_tblEmpleados_tblSexos]
GO
ALTER TABLE [dbo].[tblEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpleados_tblSucursalesEmpresas] FOREIGN KEY([intfkSucursalEmpresa])
REFERENCES [dbo].[tblSucursalesEmpresas] ([intpkIdSucursalesEmpresas])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblEmpleados] CHECK CONSTRAINT [FK_tblEmpleados_tblSucursalesEmpresas]
GO
ALTER TABLE [dbo].[tblEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpleados_tblTiposIdentificacion] FOREIGN KEY([intfkTipoIdentificacion])
REFERENCES [dbo].[tblTiposIdentificacion] ([intpkIdTiposIdentificacion])
GO
ALTER TABLE [dbo].[tblEmpleados] CHECK CONSTRAINT [FK_tblEmpleados_tblTiposIdentificacion]
GO
ALTER TABLE [dbo].[tblEntradasSalidasEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tblEntradasSalidasEmpleados_tblEmpleados] FOREIGN KEY([strfkIdentificacionEmpleado])
REFERENCES [dbo].[tblEmpleados] ([strpkIdentificacion])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblEntradasSalidasEmpleados] CHECK CONSTRAINT [FK_tblEntradasSalidasEmpleados_tblEmpleados]
GO
ALTER TABLE [dbo].[tblEntradasSalidasEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tblEntradasSalidasEmpleados_tblGruposCentrosCostos] FOREIGN KEY([intfkIdCentroCostos])
REFERENCES [dbo].[tblCentrosCostos] ([intpkIdCentroCostos])
GO
ALTER TABLE [dbo].[tblEntradasSalidasEmpleados] CHECK CONSTRAINT [FK_tblEntradasSalidasEmpleados_tblGruposCentrosCostos]
GO
ALTER TABLE [dbo].[tblEntradasVisitantes]  WITH CHECK ADD  CONSTRAINT [FK_tblEntradasVisitantes_tblDependencias] FOREIGN KEY([intfkIdDependencia])
REFERENCES [dbo].[tblDependencias] ([intpkIdDependencias])
GO
ALTER TABLE [dbo].[tblEntradasVisitantes] CHECK CONSTRAINT [FK_tblEntradasVisitantes_tblDependencias]
GO
ALTER TABLE [dbo].[tblEntradasVisitantes]  WITH CHECK ADD  CONSTRAINT [FK_tblEntradasVisitantes_tblVisitantes] FOREIGN KEY([strfkIdentificacionVisitante])
REFERENCES [dbo].[tblVisitantes] ([strpkIdentificacion])
GO
ALTER TABLE [dbo].[tblEntradasVisitantes] CHECK CONSTRAINT [FK_tblEntradasVisitantes_tblVisitantes]
GO
ALTER TABLE [dbo].[tblEquivalenciasCentroCostos]  WITH CHECK ADD  CONSTRAINT [FK_tblEquivalenciasCentroCostos_tblCentrosCostos] FOREIGN KEY([intfkIdCentroCostos])
REFERENCES [dbo].[tblCentrosCostos] ([intpkIdCentroCostos])
GO
ALTER TABLE [dbo].[tblEquivalenciasCentroCostos] CHECK CONSTRAINT [FK_tblEquivalenciasCentroCostos_tblCentrosCostos]
GO
ALTER TABLE [dbo].[tblFranjaHorasExtras]  WITH NOCHECK ADD  CONSTRAINT [FK_tblFranjaHorasExtras_tblDetalleHoraTurnos] FOREIGN KEY([intfkIdHorario])
REFERENCES [dbo].[tblDetalleHoraTurnos] ([intpkIdHorario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblFranjaHorasExtras] CHECK CONSTRAINT [FK_tblFranjaHorasExtras_tblDetalleHoraTurnos]
GO
ALTER TABLE [dbo].[tblFranjasDependencias]  WITH CHECK ADD  CONSTRAINT [FK_tblFranjasDependencias_tblDependencias] FOREIGN KEY([intpkfkIdDependencia])
REFERENCES [dbo].[tblDependencias] ([intpkIdDependencias])
GO
ALTER TABLE [dbo].[tblFranjasDependencias] CHECK CONSTRAINT [FK_tblFranjasDependencias_tblDependencias]
GO
ALTER TABLE [dbo].[tblFranjasDependencias]  WITH NOCHECK ADD  CONSTRAINT [FK_tblFranjasDependencias_tblFranjaHorasExtras] FOREIGN KEY([intpkfkIdFranja])
REFERENCES [dbo].[tblFranjaHorasExtras] ([intpkIdFranja])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblFranjasDependencias] CHECK CONSTRAINT [FK_tblFranjasDependencias_tblFranjaHorasExtras]
GO
ALTER TABLE [dbo].[tblHorasADeudadas]  WITH CHECK ADD  CONSTRAINT [FK_tblHorasADeudadas_tblConceptosHorasLaboradas] FOREIGN KEY([intfkConceptoHorasLaboradas])
REFERENCES [dbo].[tblConceptosHorasLaboradas] ([intpkIdConceptoHoras])
GO
ALTER TABLE [dbo].[tblHorasADeudadas] CHECK CONSTRAINT [FK_tblHorasADeudadas_tblConceptosHorasLaboradas]
GO
ALTER TABLE [dbo].[tblHorasADeudadas]  WITH CHECK ADD  CONSTRAINT [FK_tblHorasADeudadas_tblDetalleHorasLaboradas] FOREIGN KEY([intfkIdHoraslaboradas], [intfkConceptoHorasLaboradas])
REFERENCES [dbo].[tblDetalleHorasLaboradas] ([intpkfkIdHoraslaboradas], [intpkfkConceptoHorasLaboradas])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblHorasADeudadas] CHECK CONSTRAINT [FK_tblHorasADeudadas_tblDetalleHorasLaboradas]
GO
ALTER TABLE [dbo].[tblHorasADeudadas]  WITH CHECK ADD  CONSTRAINT [FK_tblHorasADeudadas_tblHorasADeudadas] FOREIGN KEY([intpkIdHorasAdeudada])
REFERENCES [dbo].[tblHorasADeudadas] ([intpkIdHorasAdeudada])
GO
ALTER TABLE [dbo].[tblHorasADeudadas] CHECK CONSTRAINT [FK_tblHorasADeudadas_tblHorasADeudadas]
GO
ALTER TABLE [dbo].[tblHorasADeudadas]  WITH CHECK ADD  CONSTRAINT [FK_tblHorasADeudadas_tblHorasLaboradas] FOREIGN KEY([intfkIdHoraslaboradas])
REFERENCES [dbo].[tblHorasLaboradas] ([intpkIdHoraslaboradas])
GO
ALTER TABLE [dbo].[tblHorasADeudadas] CHECK CONSTRAINT [FK_tblHorasADeudadas_tblHorasLaboradas]
GO
ALTER TABLE [dbo].[tblHorasLaboradas]  WITH CHECK ADD  CONSTRAINT [FK_tblHorasLaboradas_tblEmpleados] FOREIGN KEY([strIdentificacionHoras])
REFERENCES [dbo].[tblEmpleados] ([strpkIdentificacion])
GO
ALTER TABLE [dbo].[tblHorasLaboradas] CHECK CONSTRAINT [FK_tblHorasLaboradas_tblEmpleados]
GO
ALTER TABLE [dbo].[tblMovimientoGruposCentroCostos]  WITH CHECK ADD  CONSTRAINT [FK_tblMovimientoGruposCentroCostos_tblCentrosCostos] FOREIGN KEY([intpkfkIdCentroCostos])
REFERENCES [dbo].[tblCentrosCostos] ([intpkIdCentroCostos])
GO
ALTER TABLE [dbo].[tblMovimientoGruposCentroCostos] CHECK CONSTRAINT [FK_tblMovimientoGruposCentroCostos_tblCentrosCostos]
GO
ALTER TABLE [dbo].[tblMovimientoGruposCentroCostos]  WITH CHECK ADD  CONSTRAINT [FK_tblMovimientoGruposCentroCostos_tblGruposCentroCostos] FOREIGN KEY([intpkfkIdGrupoCentroCostos])
REFERENCES [dbo].[tblGruposCentroCostos] ([intpkIdGruposCentroCostos])
GO
ALTER TABLE [dbo].[tblMovimientoGruposCentroCostos] CHECK CONSTRAINT [FK_tblMovimientoGruposCentroCostos_tblGruposCentroCostos]
GO
ALTER TABLE [dbo].[tblNovedadAdeudada]  WITH CHECK ADD  CONSTRAINT [FK_tblNovedadAdeudada_tblHorasLaboradas] FOREIGN KEY([intfkIdHoraslaboradas])
REFERENCES [dbo].[tblHorasLaboradas] ([intpkIdHoraslaboradas])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblNovedadAdeudada] CHECK CONSTRAINT [FK_tblNovedadAdeudada_tblHorasLaboradas]
GO
ALTER TABLE [dbo].[tblPagoNovedadesAdeudadas]  WITH CHECK ADD  CONSTRAINT [FK_tblPagoNovedadesAdeudadas_tblHorasLaboradas] FOREIGN KEY([intfkIdHorasLaboradasPago])
REFERENCES [dbo].[tblHorasLaboradas] ([intpkIdHoraslaboradas])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPagoNovedadesAdeudadas] CHECK CONSTRAINT [FK_tblPagoNovedadesAdeudadas_tblHorasLaboradas]
GO
ALTER TABLE [dbo].[tblParametrosComandosBiostar]  WITH CHECK ADD  CONSTRAINT [FK_tblParametrosComandosBiostar_tblComandosActualesBioStar] FOREIGN KEY([intfkIdComandoActual])
REFERENCES [dbo].[tblComandosActualesBioStar] ([intpkIdComandoActual])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblParametrosComandosBiostar] CHECK CONSTRAINT [FK_tblParametrosComandosBiostar_tblComandosActualesBioStar]
GO
ALTER TABLE [dbo].[tblParametrosComandosServicio]  WITH CHECK ADD  CONSTRAINT [FK_tblParametrosComandosServicio_tblComandosActualesServicio] FOREIGN KEY([intfkIdComandoActual])
REFERENCES [dbo].[tblComandosActualesServicio] ([intpkIdComandoActual])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblParametrosComandosServicio] CHECK CONSTRAINT [FK_tblParametrosComandosServicio_tblComandosActualesServicio]
GO
ALTER TABLE [dbo].[tblPingReplicado]  WITH NOCHECK ADD  CONSTRAINT [FK_tblPingReplicado_tblPing] FOREIGN KEY([intfkIdPing])
REFERENCES [dbo].[tblPing] ([intpkIdPing])
GO
ALTER TABLE [dbo].[tblPingReplicado] CHECK CONSTRAINT [FK_tblPingReplicado_tblPing]
GO
ALTER TABLE [dbo].[tblPingReplicado]  WITH NOCHECK ADD  CONSTRAINT [FK_tblPingReplicado_tblPingReplicado] FOREIGN KEY([intfkIdPing], [strfkIdTerminal])
REFERENCES [dbo].[tblPingReplicado] ([intfkIdPing], [strfkIdTerminal])
GO
ALTER TABLE [dbo].[tblPingReplicado] CHECK CONSTRAINT [FK_tblPingReplicado_tblPingReplicado]
GO
ALTER TABLE [dbo].[tblRangoRedondeoConceptoHorasLaboradas]  WITH CHECK ADD  CONSTRAINT [FK_tblRangoRedondeoConceptoHorasLaboradas_tblConceptosHorasLaboradas] FOREIGN KEY([intfkIdConceptoHoras])
REFERENCES [dbo].[tblConceptosHorasLaboradas] ([intpkIdConceptoHoras])
GO
ALTER TABLE [dbo].[tblRangoRedondeoConceptoHorasLaboradas] CHECK CONSTRAINT [FK_tblRangoRedondeoConceptoHorasLaboradas_tblConceptosHorasLaboradas]
GO
ALTER TABLE [dbo].[tblRangoTurno]  WITH CHECK ADD  CONSTRAINT [FK_tblRangoTurno_tblTurnos] FOREIGN KEY([intfkIdTurno])
REFERENCES [dbo].[tblTurnos] ([intpkIdTurno])
GO
ALTER TABLE [dbo].[tblRangoTurno] CHECK CONSTRAINT [FK_tblRangoTurno_tblTurnos]
GO
ALTER TABLE [dbo].[tblReplicacionHuellas]  WITH CHECK ADD  CONSTRAINT [FK_tblReplicacionHuellas_tblHuellas] FOREIGN KEY([strpkIdCliente])
REFERENCES [dbo].[tblHuellas] ([strIdentificacionHuella])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblReplicacionHuellas] CHECK CONSTRAINT [FK_tblReplicacionHuellas_tblHuellas]
GO
ALTER TABLE [dbo].[tblReplicacionHuellasAdicionales]  WITH CHECK ADD  CONSTRAINT [FK_tblReplicacionHuellasAdicionales_tblHuellasAdicionales] FOREIGN KEY([strpkIdCliente], [intfkIndiceHuellaActual])
REFERENCES [dbo].[tblHuellasAdicionales] ([strIdentificacionHuellaPrincipal], [intIndiceHuellaActual])
GO
ALTER TABLE [dbo].[tblReplicacionHuellasAdicionales] CHECK CONSTRAINT [FK_tblReplicacionHuellasAdicionales_tblHuellasAdicionales]
GO
ALTER TABLE [dbo].[tblSucursalesTerminales]  WITH CHECK ADD  CONSTRAINT [FK_tblSucursalesTerminales_tblSucursalesEmpresas] FOREIGN KEY([intfkIdSucursalEmpresa])
REFERENCES [dbo].[tblSucursalesEmpresas] ([intpkIdSucursalesEmpresas])
GO
ALTER TABLE [dbo].[tblSucursalesTerminales] CHECK CONSTRAINT [FK_tblSucursalesTerminales_tblSucursalesEmpresas]
GO
ALTER TABLE [dbo].[tblTrasladoEmpleadosCC]  WITH CHECK ADD  CONSTRAINT [FK_tblTrasladoEmpleadosCC_tblCentrosCostos] FOREIGN KEY([strfkCentroCostos])
REFERENCES [dbo].[tblCentrosCostos] ([intpkIdCentroCostos])
GO
ALTER TABLE [dbo].[tblTrasladoEmpleadosCC] CHECK CONSTRAINT [FK_tblTrasladoEmpleadosCC_tblCentrosCostos]
GO
ALTER TABLE [dbo].[tblTrasladoEmpleadosCC]  WITH CHECK ADD  CONSTRAINT [FK_tblTrasladoEmpleadosCC_tblEmpleados] FOREIGN KEY([strfkIdentificacionEmpleado])
REFERENCES [dbo].[tblEmpleados] ([strpkIdentificacion])
GO
ALTER TABLE [dbo].[tblTrasladoEmpleadosCC] CHECK CONSTRAINT [FK_tblTrasladoEmpleadosCC_tblEmpleados]
GO
ALTER TABLE [dbo].[tblTurnosEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tblTurnosEmpleados_tblEmpleados] FOREIGN KEY([strfkIdentificacionEmpleado])
REFERENCES [dbo].[tblEmpleados] ([strpkIdentificacion])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblTurnosEmpleados] CHECK CONSTRAINT [FK_tblTurnosEmpleados_tblEmpleados]
GO
ALTER TABLE [dbo].[tblTurnosEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tblTurnosEmpleados_tblTurnos] FOREIGN KEY([intfkIdTurno])
REFERENCES [dbo].[tblTurnos] ([intpkIdTurno])
GO
ALTER TABLE [dbo].[tblTurnosEmpleados] CHECK CONSTRAINT [FK_tblTurnosEmpleados_tblTurnos]
GO
ALTER TABLE [dbo].[tblUsuariosGruposCentrosCostos]  WITH NOCHECK ADD  CONSTRAINT [FK_tblUsuariosGruposCentrosCostos_tblCentrosCostos] FOREIGN KEY([intpkfkIdGrupoCentroCostos])
REFERENCES [dbo].[tblCentrosCostos] ([intpkIdCentroCostos])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[tblUsuariosGruposCentrosCostos] NOCHECK CONSTRAINT [FK_tblUsuariosGruposCentrosCostos_tblCentrosCostos]
GO
ALTER TABLE [dbo].[tblUsuariosGruposCentrosCostos]  WITH NOCHECK ADD  CONSTRAINT [FK_tblUsuariosGruposCentrosCostos_tblGruposCentroCostos] FOREIGN KEY([intpkfkIdGrupoCentroCostos])
REFERENCES [dbo].[tblGruposCentroCostos] ([intpkIdGruposCentroCostos])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[tblUsuariosGruposCentrosCostos] NOCHECK CONSTRAINT [FK_tblUsuariosGruposCentrosCostos_tblGruposCentroCostos]
GO
ALTER TABLE [dbo].[tblVisitantes]  WITH CHECK ADD  CONSTRAINT [FK_tblVisitantes_tblDependencias] FOREIGN KEY([intfkDependencia])
REFERENCES [dbo].[tblDependencias] ([intpkIdDependencias])
GO
ALTER TABLE [dbo].[tblVisitantes] CHECK CONSTRAINT [FK_tblVisitantes_tblDependencias]
GO
ALTER TABLE [dbo].[tblVisitantes]  WITH CHECK ADD  CONSTRAINT [FK_tblVisitantes_tblTiposIdentificacion] FOREIGN KEY([intfkTipoIdentificacion])
REFERENCES [dbo].[tblTiposIdentificacion] ([intpkIdTiposIdentificacion])
GO
ALTER TABLE [dbo].[tblVisitantes] CHECK CONSTRAINT [FK_tblVisitantes_tblTiposIdentificacion]
GO
