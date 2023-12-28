class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.2.8"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.8.tar.gz"
    sha256 "3984f137d3a306c3db7e0c14c7fb41ef303c3162921e46fc9bff196f9c4ba7f8"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.2.8' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
