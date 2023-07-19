class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://mtr.moe"
    version "v1.1.2"
    url "https://api.github.com/repos/nxtrace/Ntrace-core/tarball/v1.1.2"
    sha256 "6119625c664bc227cdc3726dd4d0a27c5016f752b4958235dfc40ebe9ba4ec39"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.1.2' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
