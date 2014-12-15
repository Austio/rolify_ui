module RolifyUi
  class KlassGetter
    def initialize(klass)
      @klass = klass.constantize
    end

    def all
      @klass.all.includes(:roles)
    end
  end
end
