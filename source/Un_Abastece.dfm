inherited frmAbastece: TfrmAbastece
  Caption = 'frmAbastece'
  ClientWidth = 1155
  WindowState = wsMaximized
  ExplicitWidth = 1167
  TextHeight = 13
  inherited pnModelo: TPanel
    Width = 1155
    ExplicitWidth = 120
  end
  inherited pnMenu: TPanel
    Width = 1155
    ExplicitWidth = 120
    inherited SpeedButton5: TSpeedButton
      Left = 1043
      ExplicitLeft = 1043
    end
  end
  inherited tabCrud: TPageControl
    Width = 1155
    ActivePage = tbItemCrud
    ExplicitWidth = 1155
    inherited tbItemLista: TTabSheet
      ExplicitWidth = 1147
      ExplicitHeight = 405
      inherited pnPesquisa: TPanel
        Width = 1147
        ExplicitWidth = 1147
      end
      inherited dbgCrud: TDBGrid
        Width = 1147
        Columns = <
          item
            Expanded = False
            FieldName = 'ABA_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_CODPLC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_CODBMB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BMB_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_CODCMB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMB_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMB_VLRLIT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_VLRLIT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_QTDLIT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_PCTACM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_VLRTOT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_ETQATU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_DATABA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_HORABA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_USUINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_HORINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_DATINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_USUALT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_HORALT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABA_DATALT'
            Visible = True
          end>
      end
    end
    inherited tbItemCrud: TTabSheet
      ExplicitWidth = 1147
      ExplicitHeight = 405
      inherited pnControls: TPanel
        Width = 1147
        Height = 405
        ExplicitWidth = 112
        ExplicitHeight = 388
        inherited pgForm: TPageControl
          Width = 1145
          Height = 403
          ExplicitWidth = 110
          ExplicitHeight = 386
          inherited pgFormDados: TTabSheet
            ExplicitWidth = 1137
            ExplicitHeight = 375
            inherited gbxPrincipal: TGroupBox
              Width = 1137
              Height = 375
              ExplicitWidth = 102
              ExplicitHeight = 358
              object Label1: TLabel
                Left = 21
                Top = 16
                Width = 37
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'C'#243'digo:'
                FocusControl = aba_codigo
              end
              object Label3: TLabel
                Left = 21
                Top = 123
                Width = 52
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Cd Bomba:'
                FocusControl = aba_codigo
              end
              object Label4: TLabel
                Left = 136
                Top = 123
                Width = 96
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Descri'#231#227'o da Bomba'
              end
              object Label5: TLabel
                Left = 21
                Top = 176
                Width = 67
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Valor do Litro:'
                FocusControl = ABA_VLRLIT
              end
              object Label7: TLabel
                Left = 136
                Top = 176
                Width = 40
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Qtdade:'
                FocusControl = ABA_QTDLIT
              end
              object Label8: TLabel
                Left = 401
                Top = 69
                Width = 58
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Combust'#237'vel'
              end
              object Label6: TLabel
                Left = 23
                Top = 69
                Width = 33
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Ve'#237'culo'
                FocusControl = aba_codplc
              end
              object Label9: TLabel
                Left = 136
                Top = 69
                Width = 102
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Marca / Modelo / Ano'
              end
              object Label2: TLabel
                Left = 401
                Top = 16
                Width = 89
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Dt Abastecimento:'
                FocusControl = aba_databa
              end
              object Label10: TLabel
                Left = 520
                Top = 16
                Width = 71
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Hr Abastecido:'
                FocusControl = aba_horaba
              end
              object Label11: TLabel
                Left = 401
                Top = 123
                Width = 100
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Descri'#231#227'o do Tanque'
              end
              object Label12: TLabel
                Left = 280
                Top = 176
                Width = 66
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Acr'#233'scimo %:'
                FocusControl = ABA_PCTACM
              end
              object Label13: TLabel
                Left = 401
                Top = 176
                Width = 55
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Valor Total:'
                FocusControl = ABA_VLRTOT
              end
              object aba_codigo: TEdit
                Left = 21
                Top = 35
                Width = 97
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 0
              end
              object aba_codbmb: TButtonedEdit
                Left = 21
                Top = 142
                Width = 97
                Height = 21
                CustomHint = HintPrincipal
                Images = frm_principal.imlSecundario
                LeftButton.CustomHint = HintPrincipal
                RightButton.CustomHint = HintPrincipal
                RightButton.DisabledImageIndex = 0
                RightButton.HotImageIndex = 0
                RightButton.ImageIndex = 0
                RightButton.PressedImageIndex = 0
                RightButton.Visible = True
                TabOrder = 6
                OnExit = aba_codbmbExit
              end
              object edBMB_NOME: TEdit
                Tag = 9
                Left = 136
                Top = 142
                Width = 246
                Height = 21
                CustomHint = HintPrincipal
                Enabled = False
                TabOrder = 7
              end
              object ABA_VLRLIT: TMaskEdit
                Tag = 9
                Left = 21
                Top = 195
                Width = 97
                Height = 21
                CustomHint = HintPrincipal
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 9
                Text = ''
                OnChange = ABA_VLRLITChange
              end
              object ABA_QTDLIT: TMaskEdit
                Left = 136
                Top = 195
                Width = 102
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 10
                Text = ''
                OnChange = ABA_VLRLITChange
                OnExit = ABA_QTDLITExit
              end
              object edCMB_NOME: TEdit
                Tag = 9
                Left = 465
                Top = 88
                Width = 131
                Height = 21
                CustomHint = HintPrincipal
                Enabled = False
                TabOrder = 5
              end
              object aba_codplc: TButtonedEdit
                Left = 21
                Top = 88
                Width = 97
                Height = 21
                CustomHint = HintPrincipal
                Images = frm_principal.imlSecundario
                LeftButton.CustomHint = HintPrincipal
                RightButton.CustomHint = HintPrincipal
                RightButton.DisabledImageIndex = 0
                RightButton.HotImageIndex = 0
                RightButton.ImageIndex = 0
                RightButton.PressedImageIndex = 0
                RightButton.Visible = True
                TabOrder = 3
                OnExit = aba_codplcExit
              end
              object edVIC_MODELO: TEdit
                Tag = 9
                Left = 136
                Top = 88
                Width = 246
                Height = 21
                CustomHint = HintPrincipal
                Enabled = False
                TabOrder = 4
              end
              object aba_databa: TDateTimePicker
                Left = 401
                Top = 35
                Width = 97
                Height = 21
                CustomHint = HintPrincipal
                Date = 43054.000000000000000000
                Time = 0.852088611107319600
                TabOrder = 1
              end
              object aba_horaba: TDateTimePicker
                Left = 518
                Top = 35
                Width = 78
                Height = 21
                CustomHint = HintPrincipal
                Date = 43054.000000000000000000
                Format = 'HH:MM'
                Time = 0.852777777778101200
                Kind = dtkTime
                TabOrder = 2
              end
              object edTNQ_NOME: TEdit
                Tag = 9
                Left = 401
                Top = 142
                Width = 195
                Height = 21
                CustomHint = HintPrincipal
                Enabled = False
                TabOrder = 8
              end
              object ABA_PCTACM: TMaskEdit
                Left = 282
                Top = 195
                Width = 100
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 11
                Text = '30'
                OnChange = ABA_VLRLITChange
              end
              object ABA_VLRTOT: TMaskEdit
                Tag = 9
                Left = 401
                Top = 195
                Width = 195
                Height = 21
                CustomHint = HintPrincipal
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 12
                Text = ''
              end
              object ABA_CODCMB: TEdit
                Tag = 9
                Left = 401
                Top = 88
                Width = 58
                Height = 21
                CustomHint = HintPrincipal
                Enabled = False
                TabOrder = 13
              end
            end
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Width = 1155
    ExplicitWidth = 1155
  end
  inherited dsCrud: TDataSource
    DataSet = dmSistema.cdsAbastece
  end
end
