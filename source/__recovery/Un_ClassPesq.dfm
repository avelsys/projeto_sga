object frmConsulta: TfrmConsulta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta'
  ClientHeight = 211
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 562
    Height = 211
    Align = alClient
    Caption = 'Informa'#231#245'es de Consulta / Clique na coluna que deseja consultar'
    TabOrder = 0
    ExplicitLeft = 200
    ExplicitTop = 112
    ExplicitWidth = 185
    ExplicitHeight = 105
    object edConsulta: TMaskEdit
      Left = 2
      Top = 189
      Width = 562
      Height = 21
      Align = alBottom
      TabOrder = 0
      Text = ''
      ExplicitLeft = 432
      ExplicitTop = 248
      ExplicitWidth = 121
    end
    object dbgConsulta: TDBGrid
      Left = 2
      Top = 15
      Width = 562
      Height = 170
      Align = alTop
      DataSource = dsConsulta
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object dsConsulta: TDataSource
    DataSet = dmSistema.cdsCombustivel
    Left = 378
    Top = 72
  end
end
