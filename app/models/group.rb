class Group < ApplicationRecord

  has_many :properties

end




 #before_destroy :check_for_properties


 #private

 #def check_for_properties
 #  if self.properties.count > 0
 #    errors.add_to_base("cannot delete properties while properties exist")
 #    return false
 #  end
 #end
