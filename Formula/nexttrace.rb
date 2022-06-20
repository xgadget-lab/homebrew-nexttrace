class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.1.11"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.1.11.tar.gz"
    sha256 "42bae2967ecda6ae8d9d18b00ddb2669ff5f8038893b54532a232ad1db826ecd"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.1.11' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
