module Concerns::Findable
 
  def find_by_name(name) 
    self.all.find {|object| object.name == name}
  end 

  def find_or_create_by_name(name)
    object = find_by_name(name)
          if object != nil 
            object
          else 
            object = self.create(name)
          end 
  end 
end 