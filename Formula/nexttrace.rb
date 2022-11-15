class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.2.3"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.2.3.tar.gz"
    sha256 "b1fbe103c314b14ecfe9fd71fd5e53e1920b63d728a28ad2d5dfd79a7762ab6b"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.3' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
