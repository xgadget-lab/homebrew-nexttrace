class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.2.3.1"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.3.1.tar.gz"
    sha256 "9a048e7b27a60fed0a12ea09b1f6fbb45bd1393166cd83c0abd6adf7d80b622f"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.2.3.1' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
