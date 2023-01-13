class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.2.6"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.2.6.tar.gz"
    sha256 "372f710ed00e90ec2a352d6668054394db46aba856991a1f9f98df7fd8617d32"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.6' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
