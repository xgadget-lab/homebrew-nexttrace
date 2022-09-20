class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.2.2"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.2.2.tar.gz"
    sha256 "14581e8345a328a2abbee152f3a740aa3cfb47149dc009795ae925b3bb2a44da"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.2' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
