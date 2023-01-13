class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.2.7"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.2.7.tar.gz"
    sha256 "2b2ca3165b142e349065c7f109d96fdcb2c1ecf9c13e46a0fffeb28f0f7cc95b"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.7' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
