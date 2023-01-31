class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.0.7"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.0.7.tar.gz"
    sha256 "7f07bc18088cea785fc9d9ab6ac69c4864f3c909977d2f14dd4e41a60788cf8f"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.0.7' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
