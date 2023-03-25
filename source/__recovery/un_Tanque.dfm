inherited frmTanque: TfrmTanque
  Caption = 'frmTanque'
  ClientHeight = 531
  TextHeight = 13
  inherited tabCrud: TPageControl
    Height = 435
    ActivePage = tbItemCrud
    ExplicitHeight = 434
    inherited tbItemLista: TTabSheet
      inherited dbgCrud: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'TNQ_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_CODCMB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMB_NOME'
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
            FieldName = 'TNQ_ETQATU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_USUINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_HORINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_DATINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_USUALT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_HORALT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNQ_DATALT'
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
                FocusControl = tnq_codigo
              end
              object Label2: TLabel
                Left = 119
                Top = 16
                Width = 85
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Nome do Tanque:'
                FocusControl = tnq_nome
              end
              object Label3: TLabel
                Left = 24
                Top = 68
                Width = 78
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Cd Combust'#237'vel:'
                FocusControl = tnq_codigo
              end
              object Label4: TLabel
                Left = 119
                Top = 67
                Width = 103
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Nome do Combust'#237'vel'
              end
              object Label5: TLabel
                Left = 24
                Top = 120
                Width = 74
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Estoque Minimo'
                FocusControl = tnq_etqmin
              end
              object Label6: TLabel
                Left = 162
                Top = 120
                Width = 78
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Estoque Maximo'
                FocusControl = tnq_etqmax
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
              object tnq_codigo: TEdit
                Left = 24
                Top = 35
                Width = 78
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 0
              end
              object tnq_nome: TEdit
                Left = 119
                Top = 35
                Width = 321
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 1
              end
              object tnq_codcmb: TButtonedEdit
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
                OnChange = tnq_codcmbExit
                OnExit = tnq_codcmbExit
              end
              object edCMB_NOME: TEdit
                Tag = 9
                Left = 119
                Top = 86
                Width = 321
                Height = 21
                CustomHint = HintPrincipal
                Enabled = False
                TabOrder = 3
              end
              object tnq_etqmin: TMaskEdit
                Left = 24
                Top = 139
                Width = 121
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 4
                Text = ''
              end
              object tnq_etqmax: TMaskEdit
                Left = 162
                Top = 139
                Width = 121
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 5
                Text = ''
              end
              object tnq_etqatu: TMaskEdit
                Tag = 9
                Left = 303
                Top = 139
                Width = 137
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 6
                Text = ''
              end
            end
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 512
    ExplicitTop = 511
    ExplicitWidth = 1201
  end
  inherited dsCrud: TDataSource
    DataSet = dmSistema.cdsTanque
  end
end
