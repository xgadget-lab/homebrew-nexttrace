class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.2.0"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "42b958c1b91ed961cb450c010f3565f8cb9acfffd31a6253766a4d2470cbfbe3"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.0' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
