class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.1.10"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.1.10.tar.gz"
    sha256 "59d43b768a7bcc1af84be7092ce8b2c4a4de007add61c434ac8e37e980dcb87c"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.1.10' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
