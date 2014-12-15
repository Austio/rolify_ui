module RolifyUi
  module RolifiedClassesHelper
    def link_to_rolified_class(klass)
        link_to klass.name, "/rolified?q=#{klass.name}", :class => 'search-link'
    end
  end
end
