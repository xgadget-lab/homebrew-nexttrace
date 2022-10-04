class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version null
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/ul.tar.gz"
    sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=ul' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
