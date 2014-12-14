module RolifyUi
  class RolifiedObjects
    def self.list(method_query = :has_role)
      ActiveRecord::Base.descendants.select do |klass|
        klass.instance_methods.include? method_query
      end
    end
  end
end
