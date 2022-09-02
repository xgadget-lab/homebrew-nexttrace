class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.2.1"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.2.1.tar.gz"
    sha256 "321cbcb09cbf4c504ef2ffa2842b9c9a7b9aae8d7d2a4dd3c9f1fddd532062e2"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.1' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
