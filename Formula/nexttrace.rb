class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.0.8"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.0.8.tar.gz"
    sha256 "8042120cc064cd8e9f2faf2f3d85830edb55dd30a05efeb650695d05eb605b7d"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.0.8' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
