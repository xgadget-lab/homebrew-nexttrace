class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.0.8"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.0.8.tar.gz"
    sha256 "e84ddd8d848e1be6697fe79a18933fcad9149f8bba59d4339bf1aef6c50b503b"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.0.8' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
