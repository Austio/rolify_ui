require_dependency "rolify_ui/application_controller"

module RolifyUi
  class RolifiedClassesController < ApplicationController
    def index
      @rolified = RolifyUi::Rolified.new
    end

    def show
      #TODO add @rolified as global so we can check that this is a good rolified model
      @klasses = RolifyUi::KlassGetter(params[:klass]).new
    end
  end
end
