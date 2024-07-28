class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.3.2"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.3.2.tar.gz"
    sha256 "da543516932672e80fd08e80a9d52e69c4ad1cb4f483b7efbd235ae0f8a1aaaa"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.3.2' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
