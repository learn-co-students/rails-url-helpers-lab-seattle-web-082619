class Student < ActiveRecord::Base
  def to_s
    if self.active == 1
      temp = "is active."
    else
      temp = "is not active."
    end
    self.first_name + " " + self.last_name + "\n" + temp
  end
end