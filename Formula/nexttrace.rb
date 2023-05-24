class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.1.5"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.1.5.tar.gz"
    sha256 "3ab36df78e4f876bd9b409f4a923ed173e65bfc7234bc5a5342ae8bd873af184"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.1.5' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
