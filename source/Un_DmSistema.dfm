object dmSistema: TdmSistema
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 380
  Width = 475
  object fdConecta: TFDConnection
    Params.Strings = (
      'Database=D:\000_GIT_DELPHI\projeto_sga\database\DBSGA.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=localhost'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    ConnectedStoredUsage = [auDesignTime]
    LoginPrompt = False
    Left = 24
    Top = 8
  end
  object fbDriver: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 96
    Top = 8
  end
  object fdqCombustivel: TFDQuery
    Connection = fdConecta
    SQL.Strings = (
      'Select * From combustivel')
    Left = 32
    Top = 64
  end
  object dspCombustivel: TDataSetProvider
    DataSet = fdqCombustivel
    Left = 112
    Top = 64
  end
  object cdsCombustivel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCombustivel'
    Left = 192
    Top = 64
    object cdsCombustivelCMB_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CMB_CODIGO'
      Origin = 'CMB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCombustivelCMB_NOME: TStringField
      DisplayLabel = 'Desc. do Combust'#237'vel:'
      FieldName = 'CMB_NOME'
      Origin = 'CMB_NOME'
    end
    object cdsCombustivelCMB_VLRLIT: TBCDField
      DisplayLabel = 'Valor:'
      FieldName = 'CMB_VLRLIT'
      Origin = 'CMB_VLRLIT'
      DisplayFormat = 'R$ ###,##0.00'
      EditFormat = 'R$ ###,##0.00'
      Precision = 18
      Size = 3
    end
  end
  object dsCombustivel: TDataSource
    DataSet = cdsCombustivel
    Left = 272
    Top = 64
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 168
    Top = 8
  end
end
