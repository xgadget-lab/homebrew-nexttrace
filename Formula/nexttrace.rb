class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.0.3"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.0.3.tar.gz"
    sha256 "23b3ce97529ccff88851f98ce02cba270349463ca47c70ea43eca6122533f7fa"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.0.3' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
