class JobGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def generate_job
    template "job.rb.erb", "app/jobs/#{file_name}.rb"
  end

  private
    def file_name
      name.underscore
    end
end
