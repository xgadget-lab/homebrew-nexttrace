class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.1.4"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.1.4.tar.gz"
    sha256 "ef9f62ee9e71d366aef961676c9a449d6778f04c4480180124656a532a93cdc7"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.1.4' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
