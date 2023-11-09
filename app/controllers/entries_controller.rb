class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new()
    @status_list = ["No Bid", "Live Bid","Closed Lost","Closed Won","Future Oppportunity","Awaiting Decision"]
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
        redirect_to root_url
    else
        render :new
    end 
end

def destroy
  Entry.find(params[:id]).destroy
  redirect_to root_url
end

def edit
  @entry = Entry.find(params[:id])
  @status_list = ["No Bid", "Live Bid","Closed Lost","Closed Won","Future Oppportunity","Awaiting Decision"]
end

def update 
  @entry = Entry.find(params[:id])
        if @entry.update(entry_params)
            redirect_to root_url
        end
end 

private

def entry_params
    params.require(:entry).permit(:title,:link,:budget,:deadline, :status)
  end
end


