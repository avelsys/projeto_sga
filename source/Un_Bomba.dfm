inherited frmBomba: TfrmBomba
  Caption = 'frmBomba'
  ClientHeight = 531
  TextHeight = 13
  inherited tabCrud: TPageControl
    Height = 435
    ActivePage = tbItemCrud
    inherited tbItemLista: TTabSheet
      inherited dbgCrud: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'BMB_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BMB_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BMB_CODTNQ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_NOME'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMB_NOME'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMB_VLRLIT'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_ETQATU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_ETQMIN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_ETQMAX'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BMB_USUINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BMB_HORINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BMB_DATINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BMB_USUALT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BMB_HORALT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BMB_DATALT'
            Visible = True
          end>
      end
    end
    inherited tbItemCrud: TTabSheet
      inherited pnControls: TPanel
        inherited pgForm: TPageControl
          inherited pgFormDados: TTabSheet
            inherited gbxPrincipal: TGroupBox
              ExplicitTop = 3
              object Label1: TLabel
                Left = 24
                Top = 16
                Width = 37
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'C'#243'digo:'
                FocusControl = bmb_codigo
              end
              object Label2: TLabel
                Left = 119
                Top = 16
                Width = 81
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Nome da Bomba:'
                FocusControl = bmb_nome
              end
              object Label3: TLabel
                Left = 24
                Top = 68
                Width = 56
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Cd Tanque:'
                FocusControl = bmb_codigo
              end
              object Label4: TLabel
                Left = 119
                Top = 67
                Width = 81
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Nome do Tanque'
              end
              object Label5: TLabel
                Left = 24
                Top = 120
                Width = 67
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Valor do Litro:'
                FocusControl = CMB_VLRLIT
              end
              object Label7: TLabel
                Left = 303
                Top = 120
                Width = 67
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Estoque Atual'
                FocusControl = tnq_etqatu
              end
              object Label8: TLabel
                Left = 303
                Top = 67
                Width = 58
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Combust'#237'vel'
              end
              object bmb_codigo: TEdit
                Left = 24
                Top = 35
                Width = 78
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 0
              end
              object bmb_nome: TEdit
                Left = 119
                Top = 35
                Width = 321
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 1
              end
              object bmb_codtnq: TButtonedEdit
                Left = 24
                Top = 86
                Width = 78
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
                TabOrder = 2
                OnExit = bmb_codtnqExit
              end
              object edTNQ_NOME: TEdit
                Tag = 9
                Left = 119
                Top = 86
                Width = 164
                Height = 21
                CustomHint = HintPrincipal
                Enabled = False
                TabOrder = 3
              end
              object CMB_VLRLIT: TMaskEdit
                Tag = 9
                Left = 24
                Top = 139
                Width = 121
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 4
                Text = ''
              end
              object tnq_etqatu: TMaskEdit
                Tag = 9
                Left = 303
                Top = 139
                Width = 137
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 5
                Text = ''
              end
              object edCMB_NOME: TEdit
                Tag = 9
                Left = 303
                Top = 86
                Width = 137
                Height = 21
                CustomHint = HintPrincipal
                Enabled = False
                TabOrder = 6
              end
            end
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 512
  end
  inherited dsCrud: TDataSource
    DataSet = dmSistema.cdsBomba
  end
end
