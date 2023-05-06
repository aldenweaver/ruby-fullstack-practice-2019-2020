require 'pry'
class Application
    def call(env)
      resp = Rack::Response.new
      req = Rack::Request.new(env)
   
      # if req.path.match(/items/)
      #   @@items.each do |item|
      #     resp.write "#{item}\n"
      #   end
    items = Item.all 

    if req.path.match(/items/)
      item_title = req.path.split("/items/").last #turn /songs/Sorry into Sorry
      item = items.find{|s| s.name.downcase == item_title.downcase}
      # binding.pry
      if item.nil?
        resp.write "Item not found"
        resp.status = 400
      else
        resp.write item.price
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
  
    resp.finish
  end
end