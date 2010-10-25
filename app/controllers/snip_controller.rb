class SnipController < ApplicationController
  def index
	@snips = Snip.all

	respond_to do |format|
		format.html # index.html.erb
	end
  end

  def new
	
	respond_to do |format|
		format.html # new.html.erb
	end
   end

   def create

	@snip = Snip.new(params[:snip])

	respond_to do |format|
		if @snip.save
			format.html { redirect_to(:action => 'new', :notice => "Snippet added!", :snippet_id => "#{@snip.id}") }
		else 
			format.html { render :action => "new" }
		end
	end	


   end

   def show
	
	@snip = Snip.find(params[:id])

	respond_to do |format|
		format.html # show.html.erb
	end
   end

end
