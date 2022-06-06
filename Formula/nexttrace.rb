class Nexttrace < Formula
  desc "一款开源的可视化路由跟踪CLI工具"
  homepage ""
  version "v0.1.6-beta.4"
  url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/#{version}.tar.gz"
  sha256 "cc4bd5fdeac539e2a02e9ea04718f78e007110fb98f7655739cedd9716068293"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=#{version}' -s -w")
  end

  test do
    assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
  end
end
