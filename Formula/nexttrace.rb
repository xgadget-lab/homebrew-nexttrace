class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.0.9"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.0.9.tar.gz"
    sha256 "e330246ac44ba16a021364dd937f282cbe83490efc6f69be43e1f50af8d236e2"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.0.9' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
