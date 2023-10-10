class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.2.2.1"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.2.1.tar.gz"
    sha256 "cf80e74826be7328cd3e2e016a333a295d3f0a9b42ef610e3c380c63e16d0345"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-V1/config.Version=v1.2.2.1' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
