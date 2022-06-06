class Nexttrace < Formula
  desc "一款开源的可视化路由跟踪CLI工具"
  homepage ""
  version "v0.1.6-beta.3"
  url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/#{version}.tar.gz"
  sha256 "5e468c72305bee77487e1927dd928fee5c96a99cfc9afb1e08e2eb813b5a416b"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=#{version}' -s -w")
  end

  test do
    assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
  end
end
