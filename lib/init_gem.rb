module InitGem
  NAMES = [
    "redis",
    "active_model_serializers",
    "rack-cors",
    "rack-attack",
    "rswag",
    "rswag-api",
    "rswag-ui",
    "rspec-rails",
    "factory_girl_rails",
    "rswag-specs"
  ]

  def self.add_gem
    current_project = `pwd`
    current_project = current_project.gsub(/\n/,"")
    content = File.read(current_project + "/Gemfile")

    InitGem::NAMES.each do |name|
      content << "gem '#{name}'\n"
      puts "Add gem #{name} success"
    end

    File.open(current_project + "/Gemfile", "w") do |file|
      file.puts content
    end
  end

  def self.install_gem
    system "bundle install"
  end

  def self.init_rspec
    system "rails g rspec:install"
  end

  def self.init_rack_cors
    system "bundle exec rake middleware"
  end

  def self.init_rswag
    system "rails g rswag:install"
  end
end
