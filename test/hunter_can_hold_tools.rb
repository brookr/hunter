require "minitest/autorun"
require "minitest/spec"
require_relative "../lib/hunter"
require_relative "../lib/hunter/tool"

describe "hunter" do
  before do
    @hunter = Hunter.new(5)
    @spear  = Hunter::Tool.new("Spear", 2, 5, 20)
  end

  it "can pickup a new tool" do
    @hunter.pickup @spear

    @hunter.equipped.must_equal @spear
  end
end
