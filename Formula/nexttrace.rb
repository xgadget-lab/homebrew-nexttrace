class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.2.5"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.2.5.tar.gz"
    sha256 "921f9c4df36e3769da29120e19ce34a728dd9697f9631679674dea0076436d2e"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.5' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
