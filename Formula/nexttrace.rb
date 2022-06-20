class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.1.12"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.1.12.tar.gz"
    sha256 "5be8cf6c435bb3c2a697ca9a663ad8574a47254b4a630e4c9b1a2afa390d84a4"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.1.12' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
