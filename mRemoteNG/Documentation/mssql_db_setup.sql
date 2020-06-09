if exists (select * from dbo.sysobjects 
    where id = object_id(N'[dbo].[tblCons]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCons]
GO

if exists (select * from dbo.sysobjects 
    where id = object_id(N'[dbo].[tblRoot]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblRoot]
GO

if exists (select * from dbo.sysobjects 
    where id = object_id(N'[dbo].[tblUpdate]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblUpdate]
GO

CREATE TABLE [dbo].[tblCons] (
	ID int NOT NULL IDENTITY(1,1),
	ConstantID varchar(128) NOT NULL PRIMARY KEY,
	PositionID int NOT NULL,
	ParentID varchar(128),
	LastChange datetime NOT NULL,
	Name varchar(128) NOT NULL,
	[Type] varchar(32) NOT NULL,
	Expanded bit NOT NULL,
	AutomaticResize bit DEFAULT ((1)) NOT NULL,
	CacheBitmaps bit NOT NULL,
	Colors varchar(32) NOT NULL,
	ConnectToConsole bit NOT NULL,
	Connected bit NOT NULL,
	Description varchar(1024),
	DisableCursorBlinking bit NOT NULL,
	DisableCursorShadow bit NOT NULL,
	DisableFullWindowDrag bit NOT NULL,
	DisableMenuAnimations bit NOT NULL,
	DisplayThemes bit NOT NULL,
	DisplayWallpaper bit NOT NULL,
	DomainName varchar(512),
	EnableDesktopComposition bit NOT NULL,
	EnableFontSmoothing bit NOT NULL,
	ExtApp varchar(256),
	Favorite tinyint(1) NOT NULL,
	Hostname varchar(512),
	ICAEncryptionStrength varchar(32) NOT NULL,
	Icon varchar(128) NOT NULL,
	LoadBalanceInfo varchar(1024),
	MacAddress varchar(32),
	Panel varchar(128) NOT NULL,
	Password varchar(1024),
	Port int NOT NULL,
	PostExtApp varchar(256),
	PreExtApp varchar(256),
	Protocol varchar(32) NOT NULL,
	PuttySession varchar(128),
	RDGatewayDomain varchar(512),
	RDGatewayHostname varchar(512),
	RDGatewayPassword varchar(1024),
	RDGatewayUsageMethod varchar(32) NOT NULL,
	RDGatewayUseConnectionCredentials varchar(32) NOT NULL,
	RDGatewayUsername varchar(512),
	RDPAlertIdleTimeout bit NOT NULL,
	RDPAuthenticationLevel varchar(32) NOT NULL,
	RDPMinutesToIdleTimeout int NOT NULL,
	RdpVersion varchar(10),
	RedirectAudioCapture bit NOT NULL,
	RedirectClipboard bit DEFAULT ((0)) NOT NULL,
	RedirectClipboard bit NOT NULL,
	RedirectDiskDrives bit NOT NULL,
	RedirectKeys bit NOT NULL,
	RedirectPorts bit NOT NULL,
	RedirectPrinters bit NOT NULL,
	RedirectSmartCards bit NOT NULL,
	RedirectSound varchar(64) NOT NULL,
	RenderingEngine varchar(10),
	Resolution varchar(32) NOT NULL,
	SSHOptions varchar(1024) NOT NULL,
	SSHTunnelConnectionName varchar(128) NOT NULL,
	SoundQuality varchar(20) NOT NULL,
	UseCredSsp bit NOT NULL,
	UseEnhancedMode bit DEFAULT ((0)),
	UseVmId bit,
	UserField varchar(256),
	Username varchar(512),
	VNCAuthMode varchar(10),
	VNCColors varchar(10),
	VNCCompression varchar(10),
	VNCEncoding varchar(20),
	VNCProxyIP varchar(128),
	VNCProxyPassword varchar(1024),
	VNCProxyPort int,
	VNCProxyType varchar(20),
	VNCProxyUsername varchar(512),
	VNCSmartSizeMode varchar(20),
	VNCViewOnly bit NOT NULL,
	VmId varchar(100),
	InheritAutomaticResize bit DEFAULT ((0)) NOT NULL,
	InheritCacheBitmaps bit NOT NULL,
	InheritColors bit NOT NULL,
	InheritDescription bit NOT NULL,
	InheritDisableCursorBlinking bit NOT NULL,
	InheritDisableCursorShadow bit NOT NULL,
	InheritDisableFullWindowDrag bit NOT NULL,
	InheritDisableMenuAnimations bit NOT NULL,
	InheritDisplayThemes bit NOT NULL,
	InheritDisplayWallpaper bit NOT NULL,
	InheritDomain bit NOT NULL,
	InheritEnableDesktopComposition bit NOT NULL,
	InheritEnableFontSmoothing bit NOT NULL,
	InheritExtApp bit NOT NULL,
	InheritFavorite bit NOT NULL,
	InheritICAEncryptionStrength bit NOT NULL,
	InheritIcon bit NOT NULL,
	InheritLoadBalanceInfo bit DEFAULT ((0)) NOT NULL,
	InheritMacAddress bit NOT NULL,
	InheritPanel bit NOT NULL,
	InheritPassword bit NOT NULL,
	InheritPort bit NOT NULL,
	InheritPostExtApp bit NOT NULL,
	InheritPreExtApp bit NOT NULL,
	InheritProtocol bit NOT NULL,
	InheritPuttySession bit NOT NULL,
	InheritRDGatewayDomain bit NOT NULL,
	InheritRDGatewayHostname bit NOT NULL,
	InheritRDGatewayPassword bit NOT NULL,
	InheritRDGatewayUsageMethod bit NOT NULL,
	InheritRDGatewayUseConnectionCredentials bit NOT NULL,
	InheritRDGatewayUsername bit NOT NULL,
	InheritRDPAlertIdleTimeout bit NOT NULL,
	InheritRDPAuthenticationLevel bit NOT NULL,
	InheritRDPMinutesToIdleTimeout bit NOT NULL,
	InheritRdpVersion bit DEFAULT ((0)) NOT NULL,
	InheritRedirectAudioCapture bit NOT NULL,
	InheritRedirectClipboard bit DEFAULT ((0)) NOT NULL,
	InheritRedirectDiskDrives bit NOT NULL,
	InheritRedirectKeys bit NOT NULL,
	InheritRedirectPorts bit NOT NULL,
	InheritRedirectPrinters bit NOT NULL,
	InheritRedirectSmartCards bit NOT NULL,
	InheritRedirectSound bit NOT NULL,
	InheritRenderingEngine bit NOT NULL,
	InheritResolution bit NOT NULL,
	InheritSSHOptions bit NOT NULL,
	InheritSSHTunnelConnectionName bit NOT NULL,
	InheritSoundQuality bit NOT NULL,
	InheritUseConsoleSession bit NOT NULL,
	InheritUseCredSsp bit NOT NULL,
	InheritUseEnhancedMode bit DEFAULT ((0)),
	InheritUseVmId bit,
	InheritUserField bit NOT NULL,
	InheritUsername bit NOT NULL,
	InheritVNCAuthMode bit NOT NULL,
	InheritVNCColors bit NOT NULL,
	InheritVNCCompression bit NOT NULL,
	InheritVNCEncoding bit NOT NULL,
	InheritVNCProxyIP bit NOT NULL,
	InheritVNCProxyPassword bit NOT NULL,
	InheritVNCProxyPort bit NOT NULL,
	InheritVNCProxyType bit NOT NULL,
	InheritVNCProxyUsername bit NOT NULL,
	InheritVNCSmartSizeMode bit NOT NULL,
	InheritVNCViewOnly bit NOT NULL,
	InheritVmId bit
) ON [PRIMARY] 
GO

CREATE TABLE [dbo].[tblRoot] (
	[Name] [varchar] (2048) NOT NULL ,
	[Export] [bit] NOT NULL ,
	[Protected] [varchar] (4048) NOT NULL ,
	[ConfVersion] [float] NOT NULL 
) ON [PRIMARY]
GO
 
CREATE TABLE [dbo].[tblUpdate] (
	[LastUpdate] [datetime] NULL 
) ON [PRIMARY]
GO