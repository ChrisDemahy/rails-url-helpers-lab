class Student < ActiveRecord::Base
    def to_s
        self.first_name + ' ' + self.last_name
    end
    def active?
        "This student is currently #{self.active ? 'active' : 'inactive'}."
    end

    def activate
        if self.active == false
            self.update(active: true)
        else
            self.update(active: false)
        end
    end
end
