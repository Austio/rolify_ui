require_dependency "rolify_ui/application_controller"

module RolifyUi
  class RolifiedClassesController < ApplicationController
    def index
      @rolified = RolifyUi::Rolified.new
    end
  end
end
