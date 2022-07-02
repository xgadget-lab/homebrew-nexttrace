class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.1.13"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.1.13.tar.gz"
    sha256 "ac81e55be8881242dfb6201c48e68c29503d5d2650e3f4168eadb07549f4008f"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.1.13' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
