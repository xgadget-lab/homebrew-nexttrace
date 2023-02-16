class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.1.1"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.1.1.tar.gz"
    sha256 "671b1697428bec4f7c4ded6725cc3f9672880a0b6daa414320b2282814dd8fec"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.1.1' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
