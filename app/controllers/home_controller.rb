class HomeController < ApplicationController
  def index
 render :action => 'index', :controller => 'articles'

  end

end
