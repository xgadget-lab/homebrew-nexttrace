class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.1.3"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.1.3.tar.gz"
    sha256 "d7aa855c469256460b481efc254ebad13cd918aa2ba888bf0821f57d37da5362"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.1.3' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
