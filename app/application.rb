class Application

  def call(env)
    resp = Rack::Response.new
 
    resp.write num_1 = Kernel.rand(1..9)
    resp.write num_2 = Kernel.rand(1..9)
    resp.write num_3 = Kernel.rand(1..9)
 
    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end

end
