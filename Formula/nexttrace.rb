class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.2.4"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.2.4.tar.gz"
    sha256 "3e7514867b61b1556807a2d6bdac0c7a3ba25f14e61860fbb3972676959810d5"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.4' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
