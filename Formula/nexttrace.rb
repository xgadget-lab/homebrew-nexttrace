class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.0.0"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "51ab2070a9932ea2a87df7fac9aa9e472d96a6927c26b7a4c67375575f3e40f2"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.0.0' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
