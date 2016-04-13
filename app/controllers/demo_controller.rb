class DemoController < ApplicationController
  layout false


  def index
    #on index action show the hello template--- wwww.url/hello
    render('hello')
  end

  def hello
    #render('index')
    #create instace variable
    @array= [1,2,3,4,5]

  end

  def other_hello
    redirect_to(:controller => 'demo' , :action => 'index')
  end

  def lynda
    redirect_to("http://www.facebook.com")
  end

end
