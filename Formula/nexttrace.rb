class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.2.3"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.3.tar.gz"
    sha256 "af1f2f4ef8a581af47c51251efb09e15b14b053f65d100ac08695dc377e28ab0"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-V1/config.Version=v1.2.3' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
