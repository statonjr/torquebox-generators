class ServiceGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def generate_service
    template "service.rb.erb", "app/services/#{file_name}.rb"
  end

  private
    def file_name
      name.underscore
    end
end
