class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.1.0"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.1.0.tar.gz"
    sha256 "d85581a9fc2d213b6715d9f47cdfcfb4fd6a72b22b923a4afcda39a33d91594e"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.1.0' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
