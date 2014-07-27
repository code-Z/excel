class Workbook < ActiveRecord::Base
	
	def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end

	def self.import(file)
		puts file.original_filename
		creek = Creek::Book.new "#{file.original_filename}"
		creek.sheets.each do |sheet|
			a = []
			i = 0
			sheet.rows.each_with_index do |row, j|
				a << row.values unless row == {} || row["O#{j+1}"] == nil || row["O#{j+1}"] == "Total"
			end
			last = a.length
			while i < last
				workbook = new

				vat5 = 0
				vat12 = 0
				vat20 = 0

				basic5 = 0
				basic12 = 0
				basic20 = 0

				cst1 = 0
				cst2 = 0
				cst15 = 0

				basCst1 = 0
				basCst2 = 0
				basCst15 = 0

				basicblrc2= 0
				basicblrv5 = 0
				basicblrv14 = 0
				basicgoav20 = 0
				basicdlhc2 = 0
				basicgoav5 = 0
				basicgoav12 = 0
				basicTaxFree = 0

				blrc2= 0
				blrv5 = 0
				blrv14 = 0
				goav20 = 0 
				dlhc2 = 0
				goav5 = 0
				goav12 = 0

				total_vat = 0
				total_basic = 0
				total_amount = 0

				workbook["Date"] =  Date.parse((Time.new("1900-01-01") + a[i][0].to_i.days - 2.days).to_s)
				workbook["Document_No"] = a[i][1].to_s
				workbook["Name"] = a[i][3].to_s
				while !a[i].include? "Total   :" do
					case a[i][10]
		  		when "VAT@5"
		  			vat5 += a[i][11].to_f.round(2)
		  			basic5 += a[i][8].to_f.round(2)
		  		when "VAT@12.5"
						vat12 += a[i][11].to_f.round(2)
						basic12 += a[i][8].to_f.round(2)
		  		when "VAT@20"
		  			vat20 += a[i][11].to_f.round(2)
		  			basic20 += a[i][8].to_f.round(2)
		  		when "CST@1C"
		  			cst1 += a[i][11].to_f.round(2)
		  			basCst1 += a[i][8].to_f.round(2)
		  		when "CST@2C"
		  			cst2 += a[i][11].to_f.round(2)
		  			basCst2 += a[i][8].to_f.round(2)
		  		when "CST@15C"
		  			cst15 += a[i][11].to_f.round(2)
		  			basCst15 += a[i][8].to_f.round(2)
		  		when "VATFREE"
		  			basicTaxFree += a[i][8].to_f.round(2)
		  		when "BLRC2"
		  			blrc2+= a[i][11].to_f.round(2)
		  			basicblrc2+= a[i][8].to_f.round(2)
		  		when "BLRV5.5"
		  			blrv5 += a[i][11].to_f.round(2)
		  			basicblrv5 += a[i][8].to_f.round(2)
		  		when "BLRV14.5"
		  			blrv14 += a[i][11].to_f.round(2)
		  			basicblrv14 += a[i][8].to_f.round(2)
		  		when "GOAV20"
		  			goav20 += a[i][11].to_f.round(2)
		  			basicgoav20 += a[i][8].to_f.round(2)
		  		when "DLHC2"
		  			dlhc2 += a[i][11].to_f.round(2)
		  			basicdlhc2 += a[i][8].to_f.round(2)
		  		when "GOAV5"
		  			goav5 += a[i][11].to_f.round(2)
		  			basicgoav5 += a[i][8].to_f.round(2)
		  		when "GOAV12.5"
		  			goav12 += a[i][11].to_f.round(2)
		  			basicgoav12 += a[i][8].to_f.round(2)
		  		else
		  			####TAX FREE or BLRC or BLRV or .......?????
		  		end
					i += 1
				end

				workbook["Basic"] = a[i][8].to_f.round(2)
				workbook["Vat"] = a[i][11].to_f.round(2)
				workbook["G_Total_Amount"] = a[i][8].to_f.round(2) + a[i][11].to_f.round(2)
				workbook["Basic_5"] = basic5
				workbook["Vat_5"] = vat5
				workbook["Basic_12_5"] = basic12
				workbook["Vat_12_5"] = vat12
				workbook["Basic_20"] = basic20
				workbook["Vat_20"] = vat20
				workbook["Basic_CST_1"] = basCst1
				workbook["CST_1"] = cst1
				workbook["Basic_CST_2"] = basCst2
				workbook["CST_2"] = cst2
				workbook["Basic_CST_15"] = basCst15
				workbook["CST_15"] = cst15
				workbook["Basic_tax_free"] = basicTaxFree
				workbook["Basic_BLRC2"] = basicblrc2
				workbook["BLRC2"] = blrc2
				workbook["Basic_BLRV5"] = basicblrv5
				workbook["BLRV5"] = blrv5
				workbook["Basic_BLRV14"] = basicblrv14
				workbook["BLRV14"] = blrv14
				workbook["Basic_GOAV20"] = basicgoav20
				workbook["GOAV20"] = goav20
				workbook["Basic_DLHC2"] = basicdlhc2
				workbook["DLHC2"] = dlhc2
				workbook["Basic_GOAV5"] = basicgoav5
				workbook["GOAV5"] = goav5
				workbook["Basic_GOAV12"] = basicgoav12
				workbook["GOAV12"] = goav12
				# read the total
				workbook.save!
				i+=1
			end
		end
	end
end
