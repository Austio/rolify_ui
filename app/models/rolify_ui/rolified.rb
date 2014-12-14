module RolifyUi
  class Rolified

    def classes
      @rolified_classes ||= select_rolified_classes
    end

    def roles
      @current_roles ||= select_current_roles
    end

    private

    def select_rolified_classes(method_query = :has_role)
      ActiveRecord::Base.descendants.select do |klass|
        klass.instance_methods.include? method_query
      end
    end

    def select_current_roles
      'stuff '
    end

  end
end
