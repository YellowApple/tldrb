require 'minitest/autorun'

describe "tldrb" do
  def sh(command)
    result = `#{command}`
    raise "FAIL: #{result}" unless $?.success?
    result
  end

  def tldrb(command)
    sh("#{File.dirname(__FILE__)}/../bin/tldrb #{command}")
  end

  it "shows version" do
    assert tldrb("version") =~ /^\d\.\d\.\d$/
  end

  it "shows help" do
    assert_includes tldrb("help"), "Tldrb: tldr client in Ruby"
  end

  it "shows output" do
    assert_includes tldrb("cat"), "Print and concatenate files"
  end
end
