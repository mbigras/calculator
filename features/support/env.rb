# require 'aruba/cucumber'

EXE = File.expand_path("../../exe", __dir__)

Before do
  @original_path = ENV['PATH']
  ENV['PATH']    = EXE + File::PATH_SEPARATOR + @original_path.to_s
end

After do
  ENV['PATH'] = @original_path
end
