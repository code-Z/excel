class CreateWorkbooks < ActiveRecord::Migration
  def change
    create_table :workbooks do |t|
      t.date :Date
    	t.string :Document_No
    	t.text :Name
    	t.decimal :G_Total_Amount, precision: 10, :scale => 2
    	t.decimal :Basic, precision: 10, :scale => 2
    	t.decimal :Vat, precision: 10, :scale => 2
    	t.decimal :Others, precision: 10, :scale => 2

    	t.decimal :Basic_5, precision: 10, :scale => 2
    	t.decimal :Vat_5, precision: 10, :scale => 2
    	t.decimal :Others_5, precision: 10, :scale => 2
    	
    	t.decimal :Basic_12_5, precision: 10, :scale => 2
    	t.decimal :Vat_12_5, precision: 10, :scale => 2
    	t.decimal :Others_12_5, precision: 10, :scale => 2

    	t.decimal :Basic_20, precision: 10, :scale => 2
    	t.decimal :Vat_20, precision: 10, :scale => 2
    	t.decimal :Others_20, precision: 10, :scale => 2

    	t.decimal :Basic_tax_free, precision: 10, :scale => 2
    	t.decimal :Vat_tax_free, precision: 10, :scale => 2
    	t.decimal :Others_free, precision: 10, :scale => 2

    	t.decimal :Basic_F_Form, precision: 10, :scale => 2
    	t.decimal :Vat_F_Form, precision: 10, :scale => 2
    	t.decimal :Others_F_Form, precision: 10, :scale => 2

    	t.decimal :Basic_Import_Purchase, precision: 10, :scale => 2
    	t.decimal :Import_Purchase, precision: 10, :scale => 2
    	t.decimal :Others_I_P, precision: 10, :scale => 2

    	t.decimal :Basic_CST_1, precision: 10, :scale => 2
    	t.decimal :CST_1, precision: 10, :scale => 2
    	t.decimal :Others_CST1, precision: 10, :scale => 2

    	t.decimal :Basic_CST_2, precision: 10, :scale => 2
    	t.decimal :CST_2, precision: 10, :scale => 2
    	t.decimal :Others_CST2, precision: 10, :scale => 2

    	t.decimal :Basic_CST_15, precision: 10, :scale => 2
    	t.decimal :CST_15, precision: 10, :scale => 2
    	t.decimal :Others_CST3, precision: 10, :scale => 2


      t.decimal :Basic_BLRC2, precision: 10, :scale => 2
      t.decimal :BLRC2, precision: 10, :scale => 2
      t.decimal :Others_BLRC2, precision: 10, :scale => 2

      t.decimal :Basic_BLRV5, precision: 10, :scale => 2
      t.decimal :BLRV5, precision: 10, :scale => 2
      t.decimal :Others_BLRV5, precision: 10, :scale => 2

      t.decimal :Basic_BLRV14, precision: 10, :scale => 2
      t.decimal :BLRV14, precision: 10, :scale => 2
      t.decimal :Others_BLRV14, precision: 10, :scale => 2

      t.decimal :Basic_GOAV20, precision: 10, :scale => 2
      t.decimal :GOAV20, precision: 10, :scale => 2
      t.decimal :Others_GOAV20, precision: 10, :scale => 2

      t.decimal :Basic_DLHC2, precision: 10, :scale => 2
      t.decimal :DLHC2, precision: 10, :scale => 2
      t.decimal :Others_DLHC2, precision: 10, :scale => 2

      t.decimal :Basic_GOAV5, precision: 10, :scale => 2
      t.decimal :GOAV5, precision: 10, :scale => 2
      t.decimal :Others_GOAV5, precision: 10, :scale => 2

      t.decimal :Basic_GOAV12, precision: 10, :scale => 2
      t.decimal :GOAV12, precision: 10, :scale => 2
      t.decimal :Others_GOAV12, precision: 10, :scale => 2
    end
  end
end
