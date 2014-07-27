class Workbook < ActiveRecord::Base
	def self.import(file)
		puts file.original_filename
		creek = Creek::Book.new "#{file.original_filename}"
		creek.sheets.each do |sheet|
			a = []
			sheet.rows.each_with_index do |row, j|
				a << row unless row == {} || row["O#{i+1}"] == nil || row["O#{i+1}"] == "Total"
			end
			i = 0
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
				basicTaxFree = 0

				blrc2= 0
				blrv5 = 0
				blrv14 = 0
				goav20 = 0 
				dlhc2 = 0
				goav5 = 0

				total_vat = 0
				total_basic = 0
				total_amount = 0

				workbook["Date"] =  Date.parse((Time.new("1900-01-01") + a[i]["A10"].to_i.days - 2.days).to_s)
				excel["Document_No"] = row["Voucher No."].to_s
				excel["Name"] = row["Customer Name"].to_s
				# while !a[i].has_value?("Total   :") do
				# 	use switch case
				# 	increment the variables
				# 	i += 1
				# end
				# read the total
				# save!
				# i+=1
			end
		end
	end
end
