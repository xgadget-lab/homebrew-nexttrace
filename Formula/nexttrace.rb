class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.2.6"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.6.tar.gz"
    sha256 "ec4f52e5b6aac8a61ee3b7b126a2730514c1d748a6e3e24267587d2e07a43fef"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.2.6' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
