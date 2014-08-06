class WorksController < ApplicationController
	def index
		@works = Work.all.paginate(:page => params[:page], :per_page => 10)
	end

	def show
		if (params[:id])
			@work = Work.exists?(params[:id]) ? Work.find(params[:id]) : nil
		end
	end
end
