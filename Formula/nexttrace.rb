class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.2.2"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.2.2.tar.gz"
    sha256 "9eed2124d1af23dde0d528066de6742eddf3762d0e39e12ad34dd30461fe9453"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.2' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
