module RolifyUi
  module ApplicationHelper
    def link_to_rolified_class(klass)
      link_to klass.name, "/admin/roles/rolified_classes?klass=#{klass.name}", :class => 'search-link'
    end

    #TODO - Add other normal attributes for what objects with roles will be identified by (name, first_name, last_name, etc)
    #  we are displaying the way that the user would want this to look
    #  they can either add a rolified_name class to their class or we try to guess
    def object_human_name(obj)
      obj.try(:rolified_name) || obj.try(:name) || obj.try(:email) || obj.try(:fname) || obj.try(:organization) || obj.id
    end
  end
end
