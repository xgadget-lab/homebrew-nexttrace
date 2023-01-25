class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.0.5"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.0.5.tar.gz"
    sha256 "f4e6a94f3cd27071204720056a7d7d8ae8b2593cb11b7a91472554e24e47757b"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.0.5' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
