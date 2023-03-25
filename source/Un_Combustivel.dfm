inherited frmCombustivel: TfrmCombustivel
  Caption = 'frmCombustivel'
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
            FieldName = 'CMB_CODIGO'
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
            FieldName = 'CMB_USUINC'
            Title.Alignment = taCenter
            Title.Caption = 'Usu Inclus'#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CMB_HORINC'
            Title.Alignment = taCenter
            Title.Caption = 'Hr Inclus'#227'o'
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CMB_DATINC'
            Title.Alignment = taCenter
            Title.Caption = 'Dt Inclus'#227'o'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMB_USUALT'
            Title.Alignment = taCenter
            Title.Caption = 'Usu Altera'#231#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CMB_HORALT'
            Title.Alignment = taCenter
            Title.Caption = 'Hr Altera'#231#227'o'
            Width = 77
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CMB_DATALT'
            Title.Alignment = taCenter
            Title.Caption = 'Dt Altera'#231#227'o'
            Width = 76
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
                FocusControl = cmb_codigo
              end
              object Label2: TLabel
                Left = 104
                Top = 16
                Width = 50
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Descri'#231#227'o:'
                FocusControl = cmb_nome
              end
              object Label3: TLabel
                Left = 352
                Top = 16
                Width = 28
                Height = 13
                CustomHint = HintPrincipal
                Caption = 'Valor:'
                FocusControl = cmb_vlrlit
              end
              object cmb_codigo: TEdit
                Left = 24
                Top = 35
                Width = 63
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 0
              end
              object cmb_nome: TEdit
                Left = 104
                Top = 35
                Width = 233
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 1
              end
              object cmb_vlrlit: TMaskEdit
                Left = 352
                Top = 35
                Width = 97
                Height = 21
                CustomHint = HintPrincipal
                TabOrder = 2
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
end
