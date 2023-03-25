inherited frmVeiculo: TfrmVeiculo
  Caption = 'frmVeiculo'
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
            FieldName = 'VIC_PLACA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIC_CODFTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIC_MARCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIC_MODELO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIC_ANO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIC_CODCMB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMB_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIC_USUINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIC_HORINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIC_DATINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIC_USUALT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIC_HORALT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIC_DATALT'
            Visible = True
          end>
      end
    end
    inherited tbItemCrud: TTabSheet
      inherited pnControls: TPanel
        inherited pgForm: TPageControl
          inherited pgFormDados: TTabSheet
            inherited gbxPrincipal: TGroupBox
              object Label1: TLabel
                Left = 104
                Top = 16
                Width = 30
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Frota:'
                FocusControl = VIC_CODFTA
              end
              object Label2: TLabel
                Left = 195
                Top = 16
                Width = 29
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Marca'
                FocusControl = VIC_MARCA
              end
              object Label6: TLabel
                Left = 24
                Top = 16
                Width = 29
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Placa:'
                FocusControl = vic_placa
              end
              object Label5: TLabel
                Left = 347
                Top = 16
                Width = 38
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Modelo:'
                FocusControl = VIC_MODELO
              end
              object Label9: TLabel
                Left = 24
                Top = 64
                Width = 23
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Ano:'
                FocusControl = VIC_ANO
              end
              object Label3: TLabel
                Left = 106
                Top = 65
                Width = 78
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Cd Combust'#237'vel:'
              end
              object Label4: TLabel
                Left = 195
                Top = 64
                Width = 103
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Nome do Combust'#237'vel'
              end
              object VIC_CODFTA: TEdit
                Tag = 9
                Left = 104
                Top = 35
                Width = 78
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 1
              end
              object VIC_MARCA: TEdit
                Left = 195
                Top = 35
                Width = 138
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 2
              end
              object vic_placa: TMaskEdit
                Left = 24
                Top = 35
                Width = 63
                Height = 21
                CustomHint = HintPrincipal
                Alignment = taCenter
                EditMask = 'AAA\-0000;0;_'
                MaxLength = 8
                TabOrder = 0
                Text = ''
              end
              object VIC_MODELO: TEdit
                Left = 347
                Top = 35
                Width = 173
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 3
              end
              object VIC_ANO: TMaskEdit
                Left = 24
                Top = 83
                Width = 61
                Height = 21
                CustomHint = HintPrincipal
                Alignment = taCenter
                EditMask = '00\/00;0;_'
                MaxLength = 5
                TabOrder = 4
                Text = ''
              end
              object vic_codcmb: TButtonedEdit
                Left = 104
                Top = 84
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
                TabOrder = 5
                OnExit = vic_codcmbExit
              end
              object edCMB_NOME: TEdit
                Tag = 9
                Left = 195
                Top = 83
                Width = 325
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
    DataSet = dmSistema.cdsVeiculo
  end
end
