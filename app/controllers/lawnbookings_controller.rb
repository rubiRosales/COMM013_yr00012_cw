require 'lawnstream/sse'

class LawnbookingsController < ApplicationController
  include ActionController::Live
  
  def index
    @lawnbookings = Lawnbookings.all
    @title = 'Book a Lawn'
  end

  # defines the process of booking a lawn, by looking at the date and lawn no as parameters
  def booking_lawn
    book_lawn = Lawnbookings.where(booking_date: params[:booking_date], lawn_no: params[:lawn_no])
     
    if book_lawn.count == 0
     @book_lawn = Lawnbookings.new
     @book_lawn.lawn_no = params[:lawn_no]
     @book_lawn.booking_date = params[:booking_date]
     @book_lawn.save
    end
    if request.xhr?
       render :json => {booking_date: params[:booking_date], lawn_no: params[:lawn_no] } 
    end
  end
  
  #updates the page accordingly to whether the user has booked or not a lawn. 
  def get_booking
    response.headers['Content-Type'] = 'text/event-stream'
    sse = Lawnstream::SSE.new(response.stream)
    begin 
   lawnbookings = Lawnbookings.where("booking_date >= ? AND booking_date <= ?",Time.now.to_date , 9.days.from_now.to_date).order("booking_date ASC")
    Lawnbookings.uncached do
        lawnbookings.each do |lawnbook|
          sse.write({ :booking_date => lawnbook.booking_date, :lawn_no => lawnbook.lawn_no},               :event => "update")
           sleep 0.1
    end
  end
    rescue
      # When client disconnects, we'll get an IOError on write
    ensure
      sse.close
    end
  end
end
