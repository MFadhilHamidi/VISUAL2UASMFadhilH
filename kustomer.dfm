object Form1: TForm1
  Left = 277
  Top = 167
  Width = 687
  Height = 549
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 24
    Width = 497
    Height = 23
    Caption = 'Muhammad Fadhil Hamidi - 2210010243 - 4M - UAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 120
    Top = 72
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label3: TLabel
    Left = 120
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label4: TLabel
    Left = 120
    Top = 136
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label5: TLabel
    Left = 120
    Top = 168
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label6: TLabel
    Left = 120
    Top = 200
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label7: TLabel
    Left = 120
    Top = 232
    Width = 41
    Height = 13
    Caption = 'MEMBER'
  end
  object Label8: TLabel
    Left = 376
    Top = 232
    Width = 45
    Height = 13
    Caption = 'DISKON :'
  end
  object Label9: TLabel
    Left = 112
    Top = 448
    Width = 86
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object edt1: TEdit
    Left = 208
    Top = 72
    Width = 433
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 208
    Top = 104
    Width = 433
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 208
    Top = 136
    Width = 433
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 208
    Top = 168
    Width = 433
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 208
    Top = 200
    Width = 433
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 208
    Top = 232
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'Pilih--'
    Items.Strings = (
      'no'
      'yes')
  end
  object btn1: TButton
    Left = 120
    Top = 272
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 208
    Top = 272
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 296
    Top = 272
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 384
    Top = 272
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 472
    Top = 272
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 120
    Top = 312
    Width = 521
    Height = 120
    DataSource = ds1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt6: TEdit
    Left = 208
    Top = 448
    Width = 433
    Height = 21
    TabOrder = 12
    Text = 'Muhammad Fadhil Hamidi - 2210010243 - 4M - UAS - Visual2'
  end
  object btn6: TButton
    Left = 560
    Top = 272
    Width = 75
    Height = 25
    Caption = 'TUTUP'
    TabOrder = 13
    OnClick = btn6Click
  end
  object btn7: TBitBtn
    Left = 560
    Top = 240
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 14
    OnClick = btn7Click
  end
  object edt7: TEdit
    Left = 0
    Top = 312
    Width = 113
    Height = 21
    TabOrder = 15
    Text = 'Database : penjualan'
  end
  object edt8: TEdit
    Left = 0
    Top = 336
    Width = 113
    Height = 21
    TabOrder = 16
    Text = 'Table        : kustomer'
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 16
    Top = 72
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    DesignConnection = True
    HostName = 'localhost'
    Port = 3307
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\asus\Downloads\Delphi - Mysql\VISUAL2UASMFadhilH\libmys' +
      'ql32.dll'
    Left = 56
    Top = 72
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 16
    Top = 120
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSource = ds1
    Left = 16
    Top = 168
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45482.460913854200000000
    ReportOptions.LastChange = 45482.483351412000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 16
    Top = 216
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 234.330860000000000000
          Top = 37.795300000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA KUSTOMER')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 139.842610000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 64.252010000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 154.960730000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 332.598640000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TELP')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 438.425480000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'EMAIL')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 585.827150000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 710.551640000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'MEMBER')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 37.795300000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."id"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 64.252010000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'nik'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nik"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 154.960730000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nama"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 332.598640000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'telp'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."telp"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 438.425480000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'email'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."email"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 585.827150000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."alamat"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 710.551640000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'member'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."member"]')
          ParentFont = False
        end
      end
    end
  end
end
