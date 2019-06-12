require 'rack'

my_rack_app = Proc.new do |env|
  
  req = Rack::Request.new(env) #parsed environment
  res = Rack::Response.new #.write, .status=, #the object it interact
  
  res['Content-Type'] = 'text/html'
  res.write("Hello world!")
    #Create a user

  res.finish


end

#def create usermethod
#controller
# end




Rack::Server.start(

  app: my_rack_app,
  Port: 3000

)