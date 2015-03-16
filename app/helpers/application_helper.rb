module ApplicationHelper

  def current_date_and_time
    # Give the current date and time, in the format: "February 6, 2015 at 4:25pm"
    # Time.now.strftime is a great method chain you can use for this purpose.
    # See how to use it at: http://apidock.com/ruby/Time/strftime

    Time.now.strftime('%B %d, %Y at %H:%M%P')
  end
  
end
