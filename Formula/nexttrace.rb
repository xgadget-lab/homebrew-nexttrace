class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.1.9"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.1.9.tar.gz"
    sha256 "fc1232f9fcaff652590b3c6cbea80d475c6044de55ce649870b3914bebebec93"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.1.9' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
