class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.2.2.3"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.2.3.tar.gz"
    sha256 "86b1f9b426f720428f314f1df971476da12947f3634cd13acb597e47eca5295f"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-V1/config.Version=v1.2.2.3' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
