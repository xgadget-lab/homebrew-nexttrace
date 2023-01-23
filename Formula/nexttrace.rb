class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.0.4-1"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.0.4-1.tar.gz"
    sha256 "8a6e6958427a945c85b0737730285866cb95cd9d68a59746a01bac1ec3954942"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.0.4-1' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
