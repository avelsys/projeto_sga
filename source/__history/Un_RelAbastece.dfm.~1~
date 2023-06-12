object frmRelAbastece: TfrmRelAbastece
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Abastecimento'
  ClientHeight = 69
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frmRLImprimir: TRLReport
    Left = 8
    Top = 70
    Width = 794
    Height = 1123
    DataSource = dsAbastece_
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLDraw1: TRLDraw
      Left = 41
      Top = 84
      Width = 712
      Height = 1
    end
    object Cabec: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 47
      BandType = btTitle
      object RLLabel3: TRLLabel
        Left = 624
        Top = 5
        Width = 48
        Height = 16
        Caption = 'P'#225'gina:'
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 27
        Width = 306
        Height = 16
        Caption = 'RELAT'#211'RIO DE ABASTECIMENTO DE VE'#205'CULOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 5
        Width = 277
        Height = 16
        Caption = 'SISTEMA DE GEST'#195'O DE ABASTECIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSystemInfo1: TRLSystemInfo
      Left = 742
      Top = 43
      Width = 11
      Height = 16
      Alignment = taRightJustify
      Info = itPageNumber
      Text = ''
    end
    object RLSystemInfo2: TRLSystemInfo
      Left = 537
      Top = 65
      Width = 216
      Height = 16
      Alignment = taRightJustify
      Info = itFullDate
      Text = ''
    end
    object rlgData: TRLGroup
      Left = 38
      Top = 85
      Width = 718
      Height = 463
      DataFields = 'ABA_DATABA'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 20
        BandType = btHeader
        Color = clBtnFace
        ParentColor = False
        Transparent = False
        object RLLabel4: TRLLabel
          Left = 32
          Top = 1
          Width = 152
          Height = 16
          Caption = 'Abastecimentos do dia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 190
          Top = 2
          Width = 86
          Height = 16
          DataField = 'ABA_DATABA'
          DataSource = dsAbastece_
          Text = ''
        end
      end
      object rlgTanque: TRLGroup
        Left = 0
        Top = 20
        Width = 718
        Height = 189
        DataFields = 'ABA_DATABA;TNQ_CODIGO'
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 25
          BandType = btColumnHeader
          object RLLabel5: TRLLabel
            Left = 64
            Top = 7
            Width = 60
            Height = 16
            Caption = 'Tanque :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLDBText2: TRLDBText
            Left = 190
            Top = 6
            Width = 52
            Height = 16
            DataField = 'TNQ_NOME'
            DataSource = dsAbastece_
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
        end
        object rlgBomba: TRLGroup
          Left = 0
          Top = 25
          Width = 718
          Height = 96
          DataFields = 'ABA_DATABA;TNQ_CODIGO;ABA_CODBMB'
          object RLBand3: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 41
            BandType = btColumnHeader
            object RLLabel6: TRLLabel
              Left = 116
              Top = 4
              Width = 53
              Height = 16
              Caption = 'Bomba:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLDBText3: TRLDBText
              Left = 190
              Top = 4
              Width = 99
              Height = 16
              DataField = 'BMB_NOME'
              DataSource = dsAbastece_
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Text = ''
            end
            object RLLabel7: TRLLabel
              Left = 116
              Top = 20
              Width = 40
              Height = 16
              Caption = 'Placa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel8: TRLLabel
              Left = 253
              Top = 20
              Width = 89
              Height = 16
              Caption = 'Qtdade Litros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel9: TRLLabel
              Left = 354
              Top = 20
              Width = 71
              Height = 16
              Caption = 'Valor Litro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel10: TRLLabel
              Left = 459
              Top = 20
              Width = 70
              Height = 16
              Caption = 'Acrescimo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel11: TRLLabel
              Left = 571
              Top = 20
              Width = 109
              Height = 16
              Alignment = taRightJustify
              Caption = 'Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLDraw2: TRLDraw
              Left = 115
              Top = 34
              Width = 602
              Height = 8
              Brush.Color = clLime
              DrawKind = dkLine
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Pen.Color = clSilver
            end
          end
          object RLBand4: TRLBand
            Left = 0
            Top = 41
            Width = 718
            Height = 20
            object RLDBText4: TRLDBText
              Left = 116
              Top = 1
              Width = 37
              Height = 16
              DataField = 'ABA_CODPLC'
              DataSource = dsAbastece_
              Text = ''
            end
            object RLDBText5: TRLDBText
              Left = 253
              Top = 3
              Width = 89
              Height = 16
              Alignment = taRightJustify
              DataField = 'ABA_QTDLIT'
              DataSource = dsAbastece_
              Text = ''
            end
            object RLDBText6: TRLDBText
              Left = 354
              Top = 1
              Width = 71
              Height = 16
              Alignment = taRightJustify
              DataField = 'ABA_VLRLIT'
              DataSource = dsAbastece_
              Text = ''
            end
            object RLDBText7: TRLDBText
              Left = 459
              Top = 1
              Width = 70
              Height = 16
              Alignment = taRightJustify
              DataField = 'ABA_PCTACM'
              DataSource = dsAbastece_
              Text = ''
            end
            object RLDBText8: TRLDBText
              Left = 571
              Top = 1
              Width = 109
              Height = 16
              Alignment = taRightJustify
              DataField = 'ABA_VLRTOT'
              DataSource = dsAbastece_
              Text = ''
            end
          end
          object RLBand6: TRLBand
            Left = 0
            Top = 61
            Width = 718
            Height = 30
            BandType = btColumnFooter
            object RLDraw4: TRLDraw
              Left = 115
              Top = 1
              Width = 603
              Height = 8
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Color = clYellow
              Brush.Color = clLime
              DrawKind = dkLine
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Pen.Color = clSilver
            end
            object RLLabel13: TRLLabel
              Left = 113
              Top = 6
              Width = 85
              Height = 16
              Caption = 'Total Bomba'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLSystemInfo4: TRLSystemInfo
              Left = 206
              Top = 6
              Width = 41
              Height = 16
              Info = itDetailCount
              Text = ''
            end
            object RLDBResult3: TRLDBResult
              Left = 253
              Top = 6
              Width = 89
              Height = 16
              Alignment = taRightJustify
              DataField = 'ABA_QTDLIT'
              DataSource = dsAbastece_
              Info = riSum
              Text = ''
            end
            object RLDBResult4: TRLDBResult
              Left = 571
              Top = 6
              Width = 109
              Height = 16
              Alignment = taRightJustify
              DataField = 'ABA_VLRTOT'
              DataSource = dsAbastece_
              Info = riSum
              Text = ''
            end
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 121
          Width = 718
          Height = 30
          BandType = btColumnFooter
          object RLDraw3: TRLDraw
            Left = 64
            Top = 1
            Width = 653
            Height = 8
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.Color = clYellow
            Brush.Color = clLime
            DrawKind = dkLine
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Pen.Color = clSilver
          end
          object RLLabel12: TRLLabel
            Left = 64
            Top = 6
            Width = 88
            Height = 16
            Caption = 'Total tanque:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 206
            Top = 6
            Width = 41
            Height = 16
            Info = itDetailCount
            Text = ''
          end
          object RLDBResult1: TRLDBResult
            Left = 253
            Top = 6
            Width = 89
            Height = 16
            Alignment = taRightJustify
            DataField = 'ABA_QTDLIT'
            DataSource = dsAbastece_
            Info = riSum
            Text = ''
          end
          object RLDBResult2: TRLDBResult
            Left = 571
            Top = 6
            Width = 109
            Height = 16
            Alignment = taRightJustify
            DataField = 'ABA_VLRTOT'
            DataSource = dsAbastece_
            Info = riSum
            Text = ''
          end
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 209
        Width = 718
        Height = 30
        BandType = btSummary
        object RLDraw5: TRLDraw
          Left = 32
          Top = 1
          Width = 686
          Height = 8
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Color = clYellow
          Brush.Color = clLime
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Pen.Color = clSilver
        end
        object RLLabel14: TRLLabel
          Left = 32
          Top = 6
          Width = 75
          Height = 16
          Caption = 'Total Geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLSystemInfo5: TRLSystemInfo
          Left = 206
          Top = 6
          Width = 41
          Height = 16
          Info = itDetailCount
          Text = ''
        end
        object RLDBResult5: TRLDBResult
          Left = 253
          Top = 6
          Width = 89
          Height = 16
          Alignment = taRightJustify
          DataField = 'ABA_QTDLIT'
          DataSource = dsAbastece_
          Info = riSum
          Text = ''
        end
        object RLDBResult6: TRLDBResult
          Left = 571
          Top = 6
          Width = 109
          Height = 16
          Alignment = taRightJustify
          DataField = 'ABA_VLRTOT'
          DataSource = dsAbastece_
          Info = riSum
          Text = ''
        end
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 239
    Height = 64
    Caption = 'Vizualizar Relatorio'
    TabOrder = 1
    object dtInicio: TDateTimePicker
      Left = 13
      Top = 24
      Width = 100
      Height = 21
      Date = 43055.067260347220000000
      Time = 43055.067260347220000000
      TabOrder = 0
    end
    object dtFinal: TDateTimePicker
      Left = 127
      Top = 24
      Width = 100
      Height = 21
      Date = 43055.067260347220000000
      Time = 43055.067260347220000000
      TabOrder = 1
    end
  end
  object btnVizu: TButton
    Left = 253
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Vizualizar'
    TabOrder = 2
    OnClick = btnVizuClick
  end
  object btnImp: TButton
    Left = 253
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 3
    OnClick = btnImpClick
  end
  object fdqAbastece_: TFDQuery
    Connection = dmSistema.fdConecta
    SQL.Strings = (
      
        'Select tnq_codigo, abastece.*, bmb_nome, tnq_nome, tnq_etqatu, c' +
        'mb_nome, cmb_vlrlit From abastece'
      'inner join bomba on bmb_codigo = aba_codbmb'
      'inner join tanque on tnq_codigo = bmb_codtnq'
      'inner join combustivel on cmb_codigo = tnq_codcmb'
      'inner join veiculo on vic_placa = aba_codplc'
      'where aba_databa BETWEEN :INICIO AND :FINAL'
      'Order By aba_databa, tnq_codigo, aba_codbmb')
    Left = 32
    ParamData = <
      item
        Name = 'INICIO'
        ParamType = ptInput
      end
      item
        Name = 'FINAL'
        ParamType = ptInput
      end>
  end
  object dspAbastece_: TDataSetProvider
    DataSet = fdqAbastece_
    Left = 80
  end
  object cdsAbastece_: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAbastece_'
    Left = 144
    object cdsAbastece_ABA_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ABA_CODIGO'
      Origin = 'ABA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAbastece_ABA_CODPLC: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'ABA_CODPLC'
      Origin = 'ABA_CODPLC'
      Required = True
      EditMask = 'AAA\-9999;0;_'
      Size = 7
    end
    object cdsAbastece_ABA_CODBMB: TIntegerField
      DisplayLabel = 'Cd Bomba'
      FieldName = 'ABA_CODBMB'
      Origin = 'ABA_CODBMB'
      Required = True
    end
    object cdsAbastece_ABA_CODCMB: TIntegerField
      DisplayLabel = 'Cd Combustivel'
      FieldName = 'ABA_CODCMB'
      Origin = 'ABA_CODCMB'
      Required = True
    end
    object cdsAbastece_ABA_VLRLIT: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'ABA_VLRLIT'
      Origin = 'ABA_VLRLIT'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 3
    end
    object cdsAbastece_ABA_QTDLIT: TBCDField
      DisplayLabel = 'Litros'
      FieldName = 'ABA_QTDLIT'
      Origin = 'ABA_QTDLIT'
      DisplayFormat = 'Lts ###,##0.000'
      EditFormat = 'Lts ###,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsAbastece_ABA_PCTACM: TBCDField
      DisplayLabel = 'Acrescimo'
      FieldName = 'ABA_PCTACM'
      Origin = 'ABA_PCTACM'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Precision = 18
      Size = 3
    end
    object cdsAbastece_ABA_VLRTOT: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'ABA_VLRTOT'
      Origin = 'ABA_VLRTOT'
      DisplayFormat = 'R$ ##,##0.000'
      EditFormat = 'R$ ##,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsAbastece_ABA_DATABA: TDateField
      DisplayLabel = 'Dt Abastecido'
      FieldName = 'ABA_DATABA'
      Origin = 'ABA_DATABA'
    end
    object cdsAbastece_ABA_HORABA: TStringField
      DisplayLabel = 'Hora'
      FieldName = 'ABA_HORABA'
      Origin = 'ABA_HORABA'
      Size = 8
    end
    object cdsAbastece_ABA_USUINC: TStringField
      DisplayLabel = 'Usu Inclus'#227'o'
      FieldName = 'ABA_USUINC'
      Origin = 'ABA_USUINC'
      Size = 15
    end
    object cdsAbastece_ABA_HORINC: TStringField
      DisplayLabel = 'Hr Inclus'#227'o'
      FieldName = 'ABA_HORINC'
      Origin = 'ABA_HORINC'
      Size = 8
    end
    object cdsAbastece_ABA_DATINC: TDateField
      DisplayLabel = 'Dt Inclus'#227'o'
      FieldName = 'ABA_DATINC'
      Origin = 'ABA_DATINC'
    end
    object cdsAbastece_ABA_USUALT: TStringField
      DisplayLabel = 'Usu Altera'#231#227'o'
      FieldName = 'ABA_USUALT'
      Origin = 'ABA_USUALT'
      Size = 15
    end
    object cdsAbastece_ABA_HORALT: TStringField
      DisplayLabel = 'Hr Altera'#231#227'o'
      FieldName = 'ABA_HORALT'
      Origin = 'ABA_HORALT'
      Size = 8
    end
    object cdsAbastece_ABA_DATALT: TDateField
      DisplayLabel = 'Dt Altera'#231#227'o'
      FieldName = 'ABA_DATALT'
      Origin = 'ABA_DATALT'
    end
    object cdsAbastece_BMB_NOME: TStringField
      DisplayLabel = 'Bomba'
      FieldName = 'BMB_NOME'
      Origin = 'BMB_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object cdsAbastece_TNQ_NOME: TStringField
      DisplayLabel = 'Tanque'
      FieldName = 'TNQ_NOME'
      Origin = 'TNQ_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object cdsAbastece_TNQ_ETQATU: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'TNQ_ETQATU'
      Origin = 'TNQ_ETQATU'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object cdsAbastece_CMB_NOME: TStringField
      DisplayLabel = 'Combustivel'
      FieldName = 'CMB_NOME'
      Origin = 'CMB_NOME'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsAbastece_CMB_VLRLIT: TBCDField
      DisplayLabel = 'Valor Litro'
      FieldName = 'CMB_VLRLIT'
      Origin = 'CMB_VLRLIT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.000'
      EditFormat = 'R$ #,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsAbastece_TNQ_CODIGO: TIntegerField
      FieldName = 'TNQ_CODIGO'
      Origin = 'TNQ_CODIGO'
      Required = True
    end
  end
  object dsAbastece_: TDataSource
    DataSet = cdsAbastece_
    Left = 208
  end
end
