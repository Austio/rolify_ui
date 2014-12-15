module RolifyUi
  class KlassGetter
    def initialize(klass = "User")
      @klass = klass.constantize
    end

    def all
      @klass.all.includes(:roles)
    end
  end
end
