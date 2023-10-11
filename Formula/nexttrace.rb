class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.2.2.2"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.2.2.tar.gz"
    sha256 "d92f115a12dd74defe984cff46568bc075bf246b8e5e2f9bcad39cad56adfeb7"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-V1/config.Version=v1.2.2.2' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
