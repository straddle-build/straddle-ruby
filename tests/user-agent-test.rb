# frozen_string_literal: true

root = File.exist?(File.join(__dir__, "lib", "straddle.rb")) ? __dir__ : File.expand_path("..", __dir__)
$LOAD_PATH.unshift(File.join(root, "lib"))
require "straddle"

# Pins the `User-Agent` the client sends to RFC 9110 form: `product *( RWS ( product / comment ) )`,
# where `product = token [ "/" token ]`. A `:` is not a token character, and the gateway answers
# 500 to a header that has one. Run it from this repo with `ruby tests/user-agent-test.rb`; it
# makes no requests.
tchar = '[!#$%&\'*+.^_`|~0-9A-Za-z-]'
product = "#{tchar}+(?:/#{tchar}+)?"
product_form = /\A#{product}(?: #{product})*\z/

client = Straddle::Client.new(bearer: "sk_test_user_agent")
user_agent = client.instance_variable_get(:@headers).fetch("user-agent")

failures = []
failures << "contains ':'" if user_agent.include?(":")
failures << "is not RFC 9110 product/version form" unless product_form.match?(user_agent)
failures << "does not carry version #{Straddle::VERSION}" unless user_agent.end_with?(Straddle::VERSION)

if failures.empty?
  puts "PASS User-Agent #{user_agent.inspect}"
else
  failures.each { |failure| warn "FAIL User-Agent #{user_agent.inspect} #{failure}" }
  exit(1)
end
