class ApplicationController < ActionController::Base
  protect_from_forgery
  # this is the call to the private method that returns which
  # layout should be used; the "layout" method call allows
  # the system to decide at runtime which is the correct layout
  # file to choose

  before_filter :set_iphone_format

   def set_iphone_format
     if is_iphone_request?
       request.format = :iphone
     end
   end

  # this method uses a regular expression to match the text
  # that would describe the browser used by the client
  def is_iphone_request?
    request.user_agent =~ /(Mobile\/.+Safari)/
    #request.user_agent =~ /(AppleWebKit\/.+AdobeAIR)/
  end

  private

  # this method will choose the name of the layout file to be used
  # these files should exist in the views/layouts folder

end
