require 'open3'

Given(/^the input "([^"]*)"$/) do |input|
  @input = input
end

When(/^the calculator is run$/) do
  cmd = "calculator #{@input}"
  @stdout, @stderr, @status = Open3.capture3(cmd)
  raise("Command `#{cmd}` failed") unless @status.success?
end

Then(/^the output should be "([^"]*)"$/) do |output|
  if output != @stdout
    raise("#{output.inspect} != #{@stdout.inspect}")
  end
end