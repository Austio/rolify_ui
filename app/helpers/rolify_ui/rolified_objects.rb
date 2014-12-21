module RolifyUi
  module RolifiedObjectsHelper
    def link_to_rolified_class(klass)
      link_to klass.name, "/admin/roles/rolified_classes?klass=#{klass.name}", :class => 'search-link'
    end

  end
end
