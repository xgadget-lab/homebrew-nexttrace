class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.0.1"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "ca54ca04e5d6f501ee5b2c7df542312c84e3f7fb6f0dbeac69b55771baefd26b"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.0.1' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
