class SearchController < ApplicationController
    
  def reservation
  
  end
  
  def show
  date = params["s_date"]
  date1 = params["e_date"]
  sdate=Date.new(date["s_date(1i)"].to_i,date["s_date(2i)"].to_i,date["s_date(3i)"].to_i)
  start_date=sdate.to_date
  edate=Date.new(date1["e_date(1i)"].to_i,date1["e_date(2i)"].to_i,date1["e_date(3i)"].to_i)
  end_date=edate.to_date
  cap= params["capacity"]
  @date1=start_date
  @date2=end_date
  @cap= cap
  
  @books = Room.search(start_date,end_date,cap)
  @books = @books.paginate(page: params[:page], :per_page => 5)
  
  
  
  end
  
end
