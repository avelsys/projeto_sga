inherited frmPosto: TfrmPosto
  Caption = 'frmPosto'
  ClientHeight = 531
  TextHeight = 13
  inherited tabCrud: TPageControl
    Height = 435
    inherited tbItemLista: TTabSheet
      inherited dbgCrud: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'PST_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_ENDERECO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_BAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_CIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_ESTADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_TELEFONE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_USUINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_HORINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_DATINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_USUALT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_HORALT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PST_DATALT'
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
                Left = 24
                Top = 16
                Width = 37
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'C'#243'digo:'
                FocusControl = pst_codigo
              end
              object Label2: TLabel
                Left = 104
                Top = 16
                Width = 64
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Raz'#227'o Social:'
                FocusControl = pst_nome
              end
              object Label4: TLabel
                Left = 24
                Top = 64
                Width = 45
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Endere'#231'o'
                FocusControl = pst_endereco
              end
              object Label5: TLabel
                Left = 589
                Top = 16
                Width = 29
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'CNPJ:'
                FocusControl = pst_cnpj
              end
              object Label6: TLabel
                Left = 415
                Top = 64
                Width = 28
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Bairro'
                FocusControl = pst_bairro
              end
              object Label7: TLabel
                Left = 24
                Top = 112
                Width = 33
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Cidade'
                FocusControl = pst_cidade
              end
              object Label8: TLabel
                Left = 368
                Top = 112
                Width = 17
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'UF:'
                FocusControl = pst_estado
              end
              object Label3: TLabel
                Left = 408
                Top = 112
                Width = 23
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Cep:'
                FocusControl = pst_cep
              end
              object Label9: TLabel
                Left = 589
                Top = 112
                Width = 46
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Telefone:'
                FocusControl = pst_telefone
              end
              object pst_codigo: TEdit
                Left = 24
                Top = 35
                Width = 63
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 0
              end
              object pst_nome: TEdit
                Left = 104
                Top = 35
                Width = 465
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 1
              end
              object pst_endereco: TEdit
                Left = 24
                Top = 83
                Width = 371
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 3
              end
              object pst_cnpj: TMaskEdit
                Left = 589
                Top = 35
                Width = 108
                Height = 21
                CustomHint = HintPrincipal
                EditMask = '!99\.999\.999\/0000\.00;0;_'
                MaxLength = 18
                TabOrder = 2
                Text = ''
              end
              object pst_bairro: TEdit
                Left = 408
                Top = 83
                Width = 289
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 4
              end
              object pst_cidade: TEdit
                Left = 24
                Top = 131
                Width = 329
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 5
              end
              object pst_estado: TEdit
                Left = 368
                Top = 131
                Width = 27
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 6
              end
              object pst_cep: TMaskEdit
                Left = 408
                Top = 131
                Width = 89
                Height = 21
                CustomHint = HintPrincipal
                EditMask = '!99\.999\-999;0;_'
                MaxLength = 10
                TabOrder = 7
                Text = ''
              end
              object pst_telefone: TMaskEdit
                Left = 589
                Top = 131
                Width = 108
                Height = 21
                CustomHint = HintPrincipal
                EditMask = '!\(00\)0000\-0000;0;_'
                MaxLength = 13
                TabOrder = 8
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
  end
  inherited dsCrud: TDataSource
    DataSet = dmSistema.cdsPosto
  end
end
