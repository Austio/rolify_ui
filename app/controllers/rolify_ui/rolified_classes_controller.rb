require_dependency "rolify_ui/application_controller"

module RolifyUi
  class RolifiedClassesController < ApplicationController
    def index
      @rolified_objects = RolifyUi::KlassGetter.new(params[:klass])
    end

    def show
      #TODO add @rolified as global so we can check that this is a good rolified model

    end
  end
end
