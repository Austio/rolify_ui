module RolifyUi
  module ApplicationHelper
    def link_to_rolified_class(klass)
      link_to klass.name, "/admin/roles/rolified_classes?klass=#{klass.name}", :class => 'search-link'
    end

    #TODO - Add other normal attributes for what objects with roles will be identified by (name, first_name, last_name, etc)
    #  we are displaying the way that the user would want this to look
    #  they can either add a rolified_name class to their class or we try to guess
    def rolified_object_name(obj)
      obj.try(:rolified_name) || obj.try(:name) || obj.try(:email) || obj.id
    end


    def display_role(role)
      if role.resource_id
        display_instance_role(role)
      else
        display_global_role(role)
      end
    end

    def display_global_role(role)
      role_content = content_tag(:p, rolified_object_name(role))
      content_tag(:div, role_content, class: "global_role")
    end

    def display_instance_role(role)
      role_content = content_tag(:p, "#{rolified_object_name(role)} - #{rolified_object_name(role.resource)}")
      content_tag(:div, role_content, class: "instance_role")
    end

    def link_to_rolified_class(klass)
      link_to klass.name, "/admin/roles/rolified_classes?klass=#{klass.name}", :class => 'search-link'
    end
  end
end
