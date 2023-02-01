class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.0.8"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.0.8.tar.gz"
    sha256 "9b52dfa10ebdfbe1589b500578eddda00831f8187443c5991ac0e9de02a2dce9"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.0.8' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
