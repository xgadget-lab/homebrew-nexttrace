class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.1.2"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.1.2.tar.gz"
    sha256 "93a6b16f28615816fdd15c0a4db1d791532e9ed47524b45ed2d36c91e7b8a950"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.1.2' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
