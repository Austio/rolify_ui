class ResourcePresenter < Struct.new(:resource)
  def name
    resource.try(:rolified_name) || resource.try(:name) || resource.try(:email) || resource.try(:fname) || resource.try(:organization) || resource.id
  end
end