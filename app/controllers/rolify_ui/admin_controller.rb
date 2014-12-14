require_dependency "rolify_ui/application_controller"

module RolifyUi
  class AdminController < ApplicationController
    def index
      @users = RolifyUi::Rolified.new
    end
  end
end
