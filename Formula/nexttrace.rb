class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.0.4"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.0.4.tar.gz"
    sha256 "efd53812845f4e723541633da446bc031a66da6402fe96f3271ad7b9ac6abd7b"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.0.4' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
