class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.1.6"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.1.6.tar.gz"
    sha256 "0198c331ec6fa3f4042389ef80faa05a5f33a37708c46d2a23b567bb97c5c80f"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.1.6' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
