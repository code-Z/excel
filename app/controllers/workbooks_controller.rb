class WorkbooksController < ApplicationController
	def import
		Workbook.import(params[:file])
		redirect_to root_url
	end
	def index
    @workbooks = Workbook.order(:id)
    respond_to do |format|
      format.html
      format.csv { send_data @workbooks.to_csv }
      format.xls #{ send_data @workbooks.to_csv(col_sep: "|") }
      format.xlsx #{ send_data @workbooks.to_csv(col_sep: "|") }
    end
  end
end
