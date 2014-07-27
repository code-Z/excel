class WorkbooksController < ApplicationController
	def import
		Workbook.import(params[:file])
		redirect_to root_url
	end
end
