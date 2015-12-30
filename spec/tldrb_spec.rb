RSpec.describe "tldrb" do
  def sh(command)
    result = `#{command}`
    raise "FAIL: #{result}" unless $?.success?
    result
  end

  def tldrb(command)
    sh("#{Bundler.root}/bin/tldrb #{command}")
  end

  it "shows version" do
    expect(tldrb("--version")).to match(/^\d\.\d\.\d$/)
  end

  it "shows help" do
    expect(tldrb("--help")).to include("Ruby client for tldr ")
  end

  it "shows output" do
    expect(tldrb("cat")).to include("Print and concatenate files")
  end
end
