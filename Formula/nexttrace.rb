class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.1.3"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.1.3.tar.gz"
    sha256 "638b71f9ee735e9129c3712ac0c0777669e272b56d2317f2f331013a20dc4ddb"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.1.3' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
