module RolifyUi
  class KlassGetter
    def initialize(klass = "User")
      @klass = klass.constantize
    end

    def all
      @all ||= @klass.all.includes(:roles)
    end

    def globals
      @all.roles.select{|role| role.resource_id.nil?}
    end

    def instance
      @all.reject{|obj| obj.resource_id.nil?}
    end
  end
end
